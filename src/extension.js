const vscode = require('vscode');
const path = require('path');
const fs = require('fs');
const os = require('os');

const API_VERSION_WORKSPACE_KEY = `apiVersion`;
const EXTENSION_ENABLED_WORKSPACE_KEY  = `extensionEnabled`;

const EXTENSION_ID = `Carrot-Industries.ma3-lua-api`;

const LAST_INSTALLED_VERSION_KEY  = `${EXTENSION_ID}.lastInstalledVersion`;
const LAST_NOTIFIED_VERSION_KEY = `${EXTENSION_ID}.lastNotifiedVersion`;
const MIGRATION_VERSION_KEY = `${EXTENSION_ID}.migration_version`;
const UPDATE_NOTIFICATION_HIDDEN_KEY  = `${EXTENSION_ID}.updateNotificationHidden`;
const TERMINAL_PATH_KEY = `${EXTENSION_ID}.terminalPath`;
const TERMINAL_SYSTEM_MONITOR_VISIBILITY_KEY = `${EXTENSION_ID}.terminalSystemMonitorVisibility`;
const TERMINAL_COMMAND_LINE_VISIBILITY_KEY = `${EXTENSION_ID}.terminalCommandLineVisibility`;

const NOTIFIED_VERSIONS = [
    '1.6.0',
    '1.7.2',
];

const extensionState = {
    outputChannel: undefined,
    hoverProviders: [],
    completionProviders: []
};

const MIGRATIONS = [
    {
        version: '1.5.0',
        scope: 'workspace',
        run: async () => {
            ('--- workspace Migration 1.5.0 ---');
            const extensionConfig = vscode.workspace.getConfiguration('grandMa3');
            const luaConfig = vscode.workspace.getConfiguration('Lua');

            const hasBeenMigrated = extensionConfig.get('removed-undefined-field-diagnostics');

            if (!hasBeenMigrated) {
                const inspection = luaConfig.inspect('diagnostics.disable');
                let disabledList = inspection?.workspaceValue || [];

                if (Array.isArray(disabledList) && disabledList.includes("undefined-field")) {
                    const newList = disabledList.filter(item => item !== "undefined-field");

                    await luaConfig.update(
                        'diagnostics.disable', 
                        newList.length > 0 ? newList : undefined, 
                        vscode.ConfigurationTarget.Workspace
                    );
                }

                await extensionConfig.update(
                    'removed-undefined-field-diagnostics', 
                    true, 
                    vscode.ConfigurationTarget.Workspace
                );
            }
        }
    },
    {
        version: '1.5.2',
        scope: 'global',
        run: async (context) => {
            const keys = context.globalState.keys();
            for (const key of keys) {
                if (key.startsWith(UPDATE_NOTIFICATION_HIDDEN_KEY)) {
                    const versionPart = key.replace(`${UPDATE_NOTIFICATION_HIDDEN_KEY}_`, "");
                    
                    if (/^\d+\.\d+\.\d+$/.test(versionPart)) {
                        const wasSeen = context.globalState.get(key);

                        if (wasSeen === true) {
                            const newKey = getUpdateHiddenKey(versionPart); 
                            await context.globalState.update(newKey, true);
                        }

                        await context.globalState.update(key, undefined);
                    }
                }
            }
        }
    },
    {
        version: '1.5.2',
        scope: 'workspace',
        run: async () => {
            const extensionConfig = vscode.workspace.getConfiguration('grandMa3');
            const hasOldFlag = extensionConfig.inspect('removed-undefined-field-diagnostics')?.workspaceValue !== undefined;
            
            if (hasOldFlag) {
                await extensionConfig.update(
                    'removed-undefined-field-diagnostics', 
                    undefined, 
                    vscode.ConfigurationTarget.Workspace
                );
            }
        }
    }
];

async function activate(context) {
    if (!extensionState.outputChannel) {
        extensionState.outputChannel = vscode.window.createOutputChannel('grandMA3 Debug');
        context.subscriptions.push(extensionState.outputChannel);
    }
    const extension = vscode.extensions.getExtension(EXTENSION_ID);
    const currentVersion = extension.packageJSON.version;
    
    await runMigrations(context, currentVersion);

    await checkUpdateNotification(context, currentVersion);

    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const isExtensionEnabled = configuration.get(EXTENSION_ENABLED_WORKSPACE_KEY, true);

    if (!extensionState.statusBarItem) {
        extensionState.statusBarItem = createApiVersionStatusBarItem();
        extensionState.sysmonStatusBarItem = createSysmonStatusBarItem();
        extensionState.cmdLineStatusBarItem = createCmdLineStatusBarItem();
        
        createMenu(context);

        context.subscriptions.push(extensionState.statusBarItem);
        context.subscriptions.push(extensionState.sysmonStatusBarItem);
        context.subscriptions.push(extensionState.cmdLineStatusBarItem);
    }

    extensionState.statusBarItem.show();

    const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_KEY, true);
    const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_KEY, true);

    updateUIComponentsVisibility(isSysmonVisible, isCmdLineVisible);

    if (!isExtensionEnabled) {
        extensionState.statusBarItem.text = `GrandMa 3 API: Off`;
        return;
    }

    const currentApiVersion = await getCurrentApiVersion(context);
    extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;

    await configureWorkspace(context, currentApiVersion);
}

function printStateContent(context) {
    console.log("")
    console.log('--- Global State Content ---');
    const globalKeys = context.globalState.keys();
    for (const key of globalKeys) {
        logDebug(`${key}: ${context.globalState.get(key)}`);
    }
    logDebug("----------------------------")
    logDebug("")
    logDebug('--- Workspace State Content ---');
    const workspaceKeys = context.workspaceState.keys();
    for (const key of workspaceKeys) {
        logDebug(`${key}: ${context.globalState.get(key)}`);
    }
    logDebug("----------------------------")
    logDebug("")
}

async function runMigrations(context, currentVersion) {
    const lastGlobalMigrated = context.globalState.get(MIGRATION_VERSION_KEY, '0.0.0');
    const lastWorkspaceMigrated = context.workspaceState.get(MIGRATION_VERSION_KEY, '0.0.0');

    for (const task of MIGRATIONS) {
        const lastRunVersion = task.scope === 'global' ? lastGlobalMigrated : lastWorkspaceMigrated;
        const stateStorage = task.scope === 'global' ? context.globalState : context.workspaceState;

        if (isVersionLower(lastRunVersion, task.version) && !isVersionLower(currentVersion, task.version)) {
            try {
                await task.run(context);
                await stateStorage.update(MIGRATION_VERSION_KEY, task.version);
            } catch (error) {
                console.error(`[Ma3 Lua Api] Migration ${task.version} (${task.scope}) failed:`, error);
            }
        }
    }

    await context.globalState.update(MIGRATION_VERSION_KEY, currentVersion);
    await context.workspaceState.update(MIGRATION_VERSION_KEY, currentVersion);
}

function isVersionLower(v1, v2) {
    if (!v1) return true;
    const parts1 = v1.split('.').map(Number);
    const parts2 = v2.split('.').map(Number);
    for (let i = 0; i < Math.max(parts1.length, parts2.length); i++) {
        const n1 = parts1[i] || 0;
        const n2 = parts2[i] || 0;
        if (n1 < n2) return true;
        if (n1 > n2) return false;
    }
    return false;
}

function getMajorMinor(version) {
    if (!version) return "0.0";
    const parts = version.split('.');
    return parts.length >= 2 ? `${parts[0]}.${parts[1]}` : version;
}

function shouldNotify(lastVersion, currentVersion) {
    if (!lastVersion) {
        return false;
    }

    if (NOTIFIED_VERSIONS.includes(currentVersion)) {
        return true;
    }

    const [lastMajor, lastMinor] = lastVersion.split('.').map(Number);
    const [currMajor, currMinor] = currentVersion.split('.').map(Number);

    const isMajorOrMinorBump = currMajor > lastMajor || (currMajor === lastMajor && currMinor > lastMinor);

    return isMajorOrMinorBump;
}

async function checkUpdateNotification(context, currentVersion) {
    const lastKnownVersion = context.globalState.get(LAST_INSTALLED_VERSION_KEY);
    const lastNotifiedVersion = context.globalState.get(LAST_NOTIFIED_VERSION_KEY);

    await context.globalState.update(LAST_INSTALLED_VERSION_KEY, currentVersion);

    if (!lastKnownVersion || lastNotifiedVersion === currentVersion) {
        return;
    }

    if (shouldNotify(lastKnownVersion, currentVersion)) {
        await context.globalState.update(LAST_NOTIFIED_VERSION_KEY, currentVersion);
        await showUpdateNotification(context, currentVersion);
    }
}

async function showUpdateNotification(context, version) {
    const whatsUpAction = "What's up?";
    const laterAction = "Later";
    const message = `Ma3 Lua Api updated to v${version}. Check out what's new!`;

    const selection = await vscode.window.showInformationMessage(message, whatsUpAction, laterAction);

    if (selection === whatsUpAction) {
        const uri = vscode.Uri.joinPath(context.extensionUri, 'CHANGELOG.md');
        await vscode.commands.executeCommand('markdown.showPreview', uri);
    }
}

function getUpdateHiddenKey(version) {
    const shortVersion = getMajorMinor(version);
    return `${UPDATE_NOTIFICATION_HIDDEN_KEY}_${shortVersion}`;
}

function findMacTerminalBinary(apiVersion) {
    const appsDir = '/Applications';
    debugLog(`--- findMacTerminalBinary START ---`);
    debugLog(`Input apiVersion: "${apiVersion}"`);
    debugLog(`Checking directory: ${appsDir}`);

    if (!fs.existsSync(appsDir)) {
        debugLog(`ERROR: Directory ${appsDir} does not exist.`);
        return null;
    }

    let entries = [];
    try {
        entries = fs.readdirSync(appsDir);
        debugLog(`Found ${entries.length} items in ${appsDir}`);
    } catch (err) {
        debugLog(`ERROR: fs.readdirSync failed on ${appsDir}: ${err.message}`);
        return null;
    }

    const cleanVersion = (apiVersion || '').toString().replace(/^v/i, '').trim();
    debugLog(`Cleaned target version: "${cleanVersion}"`);

    // 1. Identify all grandMA3 bundles
    const maBundles = entries.filter(name => {
        const lower = name.toLowerCase();
        return lower.includes('grandma3') && lower.endsWith('.app');
    });

    debugLog(`Matched GMA3 bundles in /Applications: [${maBundles.join(', ')}]`);

    if (maBundles.length === 0) {
        debugLog(`WARNING: No grandMA3*.app bundles detected in ${appsDir}`);
        return null;
    }

    // 2. Look for bundles matching the target version
    const versionMatches = maBundles
        .filter(name => cleanVersion && name.includes(cleanVersion))
        .sort((a, b) => b.localeCompare(a, undefined, { numeric: true, sensitivity: 'base' }));

    debugLog(`Bundles matching version "${cleanVersion}": [${versionMatches.join(', ')}]`);

    for (const bundle of versionMatches) {
        const candidate = path.join(appsDir, bundle, 'Contents', 'MacOS', 'app_terminal');
        const exists = fs.existsSync(candidate);
        debugLog(`Checking candidate: "${candidate}" -> exists: ${exists}`);
        if (exists) {
            debugLog(`SUCCESS: Found matching binary: "${candidate}"`);
            return candidate;
        }
    }

    // 3. Fallback: Check any GMA3 bundle from newest to oldest
    debugLog(`Version match failed. Testing all GMA3 bundles as fallback...`);
    const allSorted = maBundles.sort((a, b) => 
        b.localeCompare(a, undefined, { numeric: true, sensitivity: 'base' })
    );

    for (const bundle of allSorted) {
        const candidate = path.join(appsDir, bundle, 'Contents', 'MacOS', 'app_terminal');
        const exists = fs.existsSync(candidate);
        debugLog(`Fallback check candidate: "${candidate}" -> exists: ${exists}`);
        if (exists) {
            debugLog(`SUCCESS: Selected fallback binary: "${candidate}"`);
            return candidate;
        }
    }

    debugLog(`FAILED: No app_terminal binary found in any bundle.`);
    return null;
}

async function askUserForTerminalPath(isMac) {
    debugLog(`--- askUserForTerminalPath START ---`);
    debugLog(`Prompting user. isMac: ${isMac}`);

    let dialogOptions = {};

    if (isMac) {
        dialogOptions = {
            canSelectFiles: true,
            canSelectFolders: true, // macOS bundles can be flagged as directories in picker
            canSelectMany: false,
            defaultUri: vscode.Uri.file('/Applications'),
            openLabel: 'Select grandMA3 onPC App',
            title: 'Select grandMA3 onPC application (.app)'
        };
    } else {
        dialogOptions = {
            canSelectFiles: true,
            canSelectFolders: false,
            canSelectMany: false,
            defaultUri: vscode.Uri.file('C:\\Program Files\\MALightingTechnology'),
            openLabel: 'Select app_terminal.exe',
            title: 'Select app_terminal executable',
            filters: {
                'Executable (*.exe)': ['exe'],
                'All Files': ['*']
            }
        };
    }

    const selectedUris = await vscode.window.showOpenDialog(dialogOptions);
    if (!selectedUris || selectedUris.length === 0) {
        debugLog(`User cancelled the file selection dialog.`);
        return null;
    }

    let targetPath = selectedUris[0].fsPath;
    (`User picked path: "${targetPath}"`);

    if (isMac) {
        // If the user navigated inside the .app bundle, truncate to the root .app path
        if (!targetPath.endsWith('.app')) {
            const appIndex = targetPath.indexOf('.app');
            if (appIndex !== -1) {
                targetPath = targetPath.substring(0, appIndex + 4);
                debugLog(`Normalized selection to bundle: "${targetPath}"`);
            }
        }

        // Resolve inner executable path
        const primaryBinary = path.join(targetPath, 'Contents', 'MacOS', 'app_terminal');
        const fallbackBinary = path.join(targetPath, 'Contents', 'MacOS', 'grandMA3');

        debugLog(`Testing primary inner binary: "${primaryBinary}"`);
        if (fs.existsSync(primaryBinary)) {
            targetPath = primaryBinary;
        } else if (fs.existsSync(fallbackBinary)) {
            debugLog(`Primary missing, testing fallback binary: "${fallbackBinary}"`);
            targetPath = fallbackBinary;
        } else {
            debugLog(`ERROR: No executable found inside package "${targetPath}"`);
            vscode.window.showErrorMessage(
                `Invalid package: Could not find "app_terminal" inside "${targetPath}".`
            );
            return null;
        }

        // Ensure execution permissions on macOS
        try {
            fs.chmodSync(targetPath, 0o755);
            debugLog(`Applied chmod 755 to manual target: "${targetPath}"`);
        } catch (err) {
            debugLog(`WARNING: chmod failed on "${targetPath}": ${err.message}`);
        }
    }

    debugLog(`Resolved manual path: "${targetPath}"`);
    return targetPath;
}

async function getGMA3TerminalPath(context) {
    const isMac = os.platform() === 'darwin';
    const isWin = os.platform() === 'win32';

    debugLog(`================ GMA3 TERMINAL RESOLUTION ================`);
    debugLog(`OS Platform: ${os.platform()} | Arch: ${os.arch()}`);

    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const selectedVersion = configuration.get('apiVersion'); // Adapt key name if needed
    debugLog(`Workspace setting "grandMa3.apiVersion": "${selectedVersion}"`);

    // 1. macOS detection
    if (isMac) {
        const macPath = findMacTerminalBinary(selectedVersion);
        if (macPath) {
            debugLog(`Resolved via macOS auto-detection: "${macPath}"`);
            return macPath;
        }
    }

    // 2. Windows detection
    if (isWin) {
        debugLog(`Checking Windows detection...`);
        const scanDir = 'C:\\Program Files\\MALightingTechnology';
        if (fs.existsSync(scanDir)) {
            try {
                const entries = fs.readdirSync(scanDir);
                const escapedVersion = (selectedVersion || '').replace('.', '\\.');
                const versionRegex = new RegExp(`(?:gma3|grandma3)[_\\-\\sv]*${escapedVersion}`, 'i');

                const matchingDirs = entries
                    .filter(name => {
                        const fullPath = path.join(scanDir, name);
                        return fs.statSync(fullPath).isDirectory() && versionRegex.test(name);
                    })
                    .sort((a, b) => b.localeCompare(a, undefined, { numeric: true, sensitivity: 'base' }));

                for (const dirName of matchingDirs) {
                    const binCandidate = path.join(scanDir, dirName, 'bin', 'app_terminal.exe');
                    if (fs.existsSync(binCandidate)) {
                        debugLog(`Windows terminal found: "${binCandidate}"`);
                        return binCandidate;
                    }
                    const rootCandidate = path.join(scanDir, dirName, 'app_terminal.exe');
                    if (fs.existsSync(rootCandidate)) {
                        debugLog(`Windows terminal found: "${rootCandidate}"`);
                        return rootCandidate;
                    }
                }
            } catch (err) {
                debugLog(`ERROR: Windows scan failed: ${err.message}`);
            }
        }
    }

    // 3. Fallback: Ask user
    debugLog(`Auto-detection returned nothing. Asking user manually...`);
    const manualPath = await askUserForTerminalPath(isMac);
    if (manualPath) {
        debugLog(`Resolved via user selection: "${manualPath}"`);
        return manualPath;
    }

    debugLog(`Resolution aborted: No valid terminal path found.`);
    return null;
}

async function handleTerminal(context, mode) {
    const terminalPath = await getGMA3TerminalPath(context);

    if (!terminalPath) {
        vscode.window.showErrorMessage("Could not find grandMA3 terminal. Please select it manually.");
        return;
    }

    const terminalName = mode === "sysmon" ? "Ma3 System Monitor" : "Ma3 Command Line";

    let terminal = vscode.window.terminals.find(t => t.name === terminalName);
    
    if (terminal) {
        terminal.dispose(); 
    }

    try {
        const terminalOptions = {
            name: terminalName,
            shellPath: terminalPath
        };

        terminal = vscode.window.createTerminal(terminalOptions);
        terminal.show();
        
        setTimeout(() => {
            const command = mode === "sysmon" ? "sysmon 127.0.0.1" : "cmdline 127.0.0.1";
            terminal.sendText(command);
        }, 1500);
    } catch (error) {
        await context.globalState.update(TERMINAL_PATH_KEY, undefined);
        vscode.window.showErrorMessage(`Error launching terminal. Path cleared. Please try again.`);
    }
}

function updateUIComponentsVisibility(sysmonVisible, cmdLineVisible) {
    vscode.commands.executeCommand('setContext', 'grandMa3.sysmonVisible', sysmonVisible);
    vscode.commands.executeCommand('setContext', 'grandMa3.cmdLineVisible', cmdLineVisible);

    if (extensionState.sysmonStatusBarItem) {
        sysmonVisible ? extensionState.sysmonStatusBarItem.show() : extensionState.sysmonStatusBarItem.hide();
    }
    if (extensionState.cmdLineStatusBarItem) {
        cmdLineVisible ? extensionState.cmdLineStatusBarItem.show() : extensionState.cmdLineStatusBarItem.hide();
    }
}

function createMenu(context){
    context.subscriptions.push(extensionState.statusBarItem);

    const openSysmonCommand = vscode.commands.registerCommand('grandMa3.openSysmon', async () => {
        await handleTerminal(context, "sysmon"); 
    });
    context.subscriptions.push(openSysmonCommand);

    const openCmdLineCommand = vscode.commands.registerCommand('grandMa3.openCmdLine', async () => {
        await handleTerminal(context, "cmdline"); 
    });
    context.subscriptions.push(openCmdLineCommand);

    const changeApiVersionCommand = vscode.commands.registerCommand('grandMa3.menu', async () => {
        const configuration = vscode.workspace.getConfiguration('grandMa3');
        const isExtensionEnabled = configuration.get(EXTENSION_ENABLED_WORKSPACE_KEY, true);

        const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_KEY, true);
        const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_KEY, true);

        const selection = isExtensionEnabled ? await vscode.window.showQuickPick(
            [
                { label: 'Select GrandMa 3 API version' },

                { label: '', kind: vscode.QuickPickItemKind.Separator },

                { label: 'Open System Monitor in terminal' },
                { label: 'Open Command Line in terminal' },

                { label: '', kind: vscode.QuickPickItemKind.Separator },

                { label: isSysmonVisible ? 'Hide System Monitor button' : 'Show System Monitor button' },
                { label: isCmdLineVisible ? 'Hide Command Line button' : 'Show Command Line button' },
                { label: 'Disable extension for this project' },
                { label: 'Restart extension' }
            ],
            { 
                title: 'GrandMa 3 API Menu',
                placeHolder: 'Choose an action'
            }
        ) 
        : await vscode.window.showQuickPick(
            [
                { label: 'Enable extension for this project' },
            ],
            { 
                title: 'GrandMa 3 API Menu',
                placeHolder: 'Choose an action'
            }
        );

        if (!selection) return;

        switch(selection.label) {
            case 'Select GrandMa 3 API version':
                await showApiVersionQuickPick(context);
                break;

            case 'Open System Monitor in terminal':
                await handleTerminal(context, "sysmon");
                break;

            case 'Open Command Line in terminal':
                await handleTerminal(context, "cmdline");
                break;

            case 'Hide System Monitor button':
            case 'Show System Monitor button':
                const newSysmonState = !isSysmonVisible;
                await context.globalState.update(TERMINAL_SYSTEM_MONITOR_VISIBILITY_KEY, newSysmonState);
                updateUIComponentsVisibility(newSysmonState, isCmdLineVisible);
                break;

            case 'Hide Command Line button':
            case 'Show Command Line button':
                const newCmdLineState = !isCmdLineVisible;
                await context.globalState.update(TERMINAL_COMMAND_LINE_VISIBILITY_KEY, newCmdLineState);
                updateUIComponentsVisibility(isSysmonVisible, newCmdLineState);
                break;

            case 'Disable extension for this project':
                await toggleExtension(context, false);
                break;

            case 'Enable extension for this project':
                await toggleExtension(context, true);
                break;
                
            case 'Restart extension':
                const currentApiVersion = await getCurrentApiVersion(context);
                await configureWorkspace(context, currentApiVersion);
                await restartLuaServer();
                vscode.window.showInformationMessage(`GrandMa 3 extension restarted`);
                break;
        }
    });
    context.subscriptions.push(changeApiVersionCommand);
    
    const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_KEY, true);
    const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_KEY, true);

    updateUIComponentsVisibility(isSysmonVisible, isCmdLineVisible);
}

async function toggleExtension(context, enable) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    await configuration.update(EXTENSION_ENABLED_WORKSPACE_KEY, enable, vscode.ConfigurationTarget.Workspace);

    const luaConfig = vscode.workspace.getConfiguration('Lua');

    if (enable) {
        const currentApiVersion = await getCurrentApiVersion(context);
        extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;
        await configureWorkspace(context, currentApiVersion);
        vscode.window.showInformationMessage('GrandMa 3 extension enabled for this workspace');
    } else {
        deactivate();
        extensionState.statusBarItem.text = `GrandMa 3 API: Off`;
        await luaConfig.update('workspace.library', [], vscode.ConfigurationTarget.Workspace);
        vscode.window.showInformationMessage('GrandMa 3 extension disabled for this workspace');
    }

    await restartLuaServer();
}

function createApiVersionStatusBarItem() {
    const statusBarItem = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 100);
    statusBarItem.command = 'grandMa3.menu';
    statusBarItem.show();
    return statusBarItem;
}

function createSysmonStatusBarItem() {
    const item = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 99);
    item.command = 'grandMa3.openSysmon';
    item.text = `$(terminal) Ma3 System Monitor`;
    item.tooltip = 'Open Ma3 System Monitor in terminal';
    return item;
}

function createCmdLineStatusBarItem() {
    const item = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 98);
    item.command = 'grandMa3.openCmdLine';
    item.text = `$(terminal) Ma3 Command Line`;
    item.tooltip = 'Open Ma3 Command Line in terminal';
    return item;
}

async function getCurrentApiVersion(context) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const availableVersions = getAvailableApiVersions(context);

    const inspection = configuration.inspect(API_VERSION_WORKSPACE_KEY);
    const configuredVersion = configuration.get(API_VERSION_WORKSPACE_KEY);

    if (availableVersions.includes(configuredVersion)) {
        if (!inspection.workspaceValue) {
            await configuration.update(API_VERSION_WORKSPACE_KEY, configuredVersion, vscode.ConfigurationTarget.Workspace);
        }
        return configuredVersion;
    }

    const defaultVersion = availableVersions[0];

    await configuration.update(API_VERSION_WORKSPACE_KEY, defaultVersion, vscode.ConfigurationTarget.Workspace);

    return defaultVersion;
}

function getAvailableApiVersions(context) {
    const resourcePath = path.join(context.extensionPath, 'resources');
    return fs.readdirSync(resourcePath)
        .filter(file => fs.statSync(path.join(resourcePath, file)).isDirectory())
        .sort((a, b) => b.localeCompare(a));
}

async function showApiVersionQuickPick(context) {
    const availableVersions = getAvailableApiVersions(context);
    const currentVersion = await getCurrentApiVersion(context);

    const selection = await vscode.window.showQuickPick(
        availableVersions.map(version => ({
            label: version,
            description: version === currentVersion ? 'Current Version' : ''
        })),
        { 
            title: 'Select GrandMa 3 API Version',
            placeHolder: 'Choose API Version'
        }
    );

    if (selection && selection.label !== currentVersion) {
        const configuration = vscode.workspace.getConfiguration('grandMa3');
        await configuration.update(API_VERSION_WORKSPACE_KEY, selection.label, vscode.ConfigurationTarget.Workspace);

        extensionState.statusBarItem.text = `GrandMa 3 API: ${selection.label}`;

        await configureWorkspace(context, selection.label);

        await restartLuaServer();
        vscode.window.showInformationMessage(`GrandMa 3 API version changed to ${selection.label}`);
    }
}

async function restartLuaServer() {
    try {
        await vscode.commands.executeCommand('lua.stopServer');
        await vscode.commands.executeCommand('lua.startServer');
    } catch (error) {
        console.error('Failed to restart Lua server:', error);
    }
}

async function loadApiFiles(context, version) {
    if (extensionState.hoverProviders) {
        extensionState.hoverProviders.forEach(provider => provider.dispose());
        extensionState.hoverProviders.length = 0;
    }

    if (extensionState.completionProviders) {
        extensionState.completionProviders.forEach(provider => provider.dispose());
        extensionState.completionProviders.length = 0;
    }

    const objectFreeFilePath = getObjectFreeFilePath(context, version);
    const objectFilePath = getObjectFilePath(context, version);
    const objectFreeNoDocFilePath = getObjectFreeNoDocFilePath(context, version);
    const objectNoDocFilePath = getObjectNoDocFilePath(context, version);
    
    fs.readFile(objectFreeFilePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading object free Api file:', err);
            return;
        }

        addFunctionsHover(context, data);
        addFunctionsCompletion(context, data);    
    });
    
    fs.readFile(objectFilePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading object Api file:', err);
            return;
        }

        addFunctionsHover(context, data, "Handle");
        addObjectFunctionsCompletion(context, data);    
    });

    fs.readFile(objectFreeNoDocFilePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading object free Api file:', err);
            return;
        }

        addFunctionsNoDocHover(context, data);
        addFunctionsCompletion(context, data);    
    });
    
    fs.readFile(objectNoDocFilePath, 'utf8', (err, data) => {
        if (err) {
            console.error('Error reading object Api file:', err);
            return;
        }

        addFunctionsNoDocHover(context, data, "Handle");
        addObjectFunctionsCompletion(context, data);    
    });
}

async function updateCSpellActiveDictionary(context, version) {
    // 1. Skip if cSpell is not installed
    const cspellExtension = vscode.extensions.getExtension('streetsidesoftware.code-spell-checker');
    if (!cspellExtension) {
        return;
    }

    // 2. Ensure a workspace folder is opened (ConfigurationTarget.Workspace requires it)
    if (!vscode.workspace.workspaceFolders || vscode.workspace.workspaceFolders.length === 0) {
        return;
    }

    const dictName = `grandma3-api-${version}`;
    const dictPath = path.join(context.extensionPath, 'resources', version, 'ma3_dictionary_for_cspell.txt');

    // 3. Skip if the dictionary file does not exist
    if (!fs.existsSync(dictPath)) {
        return;
    }

    try {
        const cspellConfig = vscode.workspace.getConfiguration('cSpell');

        // Update dictionaryDefinitions
        let definitions = cspellConfig.get('dictionaryDefinitions') || [];
        definitions = definitions.filter(d => d && d.name && !d.name.startsWith('grandma3-api-'));
        definitions.push({
            name: dictName,
            path: dictPath
        });

        await cspellConfig.update('dictionaryDefinitions', definitions, vscode.ConfigurationTarget.Workspace);

        // Update active dictionaries list
        const dictsInspection = cspellConfig.inspect('dictionaries');
        let activeDicts = dictsInspection?.workspaceValue || [];
        activeDicts = activeDicts.filter(d => typeof d === 'string' && !d.startsWith('grandma3-api-'));
        activeDicts.push(dictName);

        await cspellConfig.update('dictionaries', activeDicts, vscode.ConfigurationTarget.Workspace);
    } catch (err) {
        console.warn(`[grandMA3] Failed to update cSpell configuration: ${err.message}`);
    }
}

async function configureWorkspace(context, version) {
    await importDummyFunctions(context, version);
    await loadApiFiles(context, version);
    await updateCSpellActiveDictionary(context, version);
}

async function importDummyFunctions(context, version){
    const luaConfig = vscode.workspace.getConfiguration('Lua');
    const versionFolder = context.asAbsolutePath(`resources/${version}`);

    await luaConfig.update('workspace.library', [
        versionFolder
    ], vscode.ConfigurationTarget.Workspace);
}

function addFunctionsHover(context, data, className){
    const jsonData = JSON.parse(data);
    var jsonKeys = Object.keys(jsonData).filter(key => !key.includes('_')); 
    jsonKeys = processJsonKeys(jsonKeys, className);
    
    const hoverProvider = vscode.languages.registerHoverProvider('lua', {
        provideHover(document, position, token) {
            const range = document.getWordRangeAtPosition(position);
            if (!range) return;

            const lineText = document.lineAt(position).text;
            const linePrefix = lineText.slice(0, position.character);

            if (linePrefix.trim().startsWith('--')) {
                return [];
            }
            
            if (className != null) {
                const cleanPrefix = linePrefix.trim();
                const lastColon = cleanPrefix.lastIndexOf(':');
                
                if (lastColon === -1) {
                    return [];
                }
            } else {
                const cleanPrefix = linePrefix.trim();
                
                const lastColon = cleanPrefix.lastIndexOf(':');
                const lastDot = cleanPrefix.lastIndexOf('.');
                const lastSpace = cleanPrefix.lastIndexOf(' ');
                
                if (lastColon > lastDot && lastColon > lastSpace) {
                    return [];
                }
            }

            const snippetKey = document.getText(range);
            const markdownContent = new vscode.MarkdownString();
            markdownContent.isTrusted = true;

            jsonDataExist = false;
            if(className && jsonData[className+":"+snippetKey]){
                jsonDataExist = true;
            } else if(jsonData[snippetKey]){
                jsonDataExist = true;
            }

            if (jsonKeys.includes(snippetKey) && jsonDataExist) {
                var snippetData = jsonData[snippetKey];
                if(className){
                    snippetData = jsonData[className+":"+snippetKey];
                }

                const cleanedPrefix = snippetData.prefix.replace(/\(.*?\)/g, '');

                if(className){
                    markdownContent.appendMarkdown(`# ${className}:${cleanedPrefix}\n\n`);
                } else {
                    markdownContent.appendMarkdown(`# ${cleanedPrefix}\n\n`);
                }
                markdownContent.appendMarkdown(`${snippetData.description}\n\n`);

                if (snippetData.examples) {
                    const examples = snippetData.examples;
                    const examplesCount = Object.keys(examples).length;

                    for (const key in examples) {
                        const example = examples[key];
                        if (examplesCount > 1) {
                            markdownContent.appendMarkdown(`\n\nExample ${key}\n-------\n\n`);
                        } else {
                            markdownContent.appendMarkdown(`\n\nExample\n-------\n\n`);
                        }
                        markdownContent.appendMarkdown(example.description);
                        markdownContent.appendCodeblock(example.code, 'lua');
                        markdownContent.appendMarkdown(`\n\n${example.suffix}`);
                    }
                }

                markdownContent.appendMarkdown(`${snippetData.suffix}\n\n`);
                return new vscode.Hover(markdownContent);
            }

            return null;
        }
    });

    context.subscriptions.push(hoverProvider);
    extensionState.hoverProviders.push(hoverProvider);
}

function addFunctionsNoDocHover(context, data, className){
    const jsonData = JSON.parse(data);
    var jsonKeys = Object.keys(jsonData).filter(key => !key.includes('_')); 
    jsonKeys = processJsonKeys(jsonKeys, className);
    
    const hoverProvider = vscode.languages.registerHoverProvider('lua', {
        provideHover(document, position, token) {
            const range = document.getWordRangeAtPosition(position);
            if (!range) return;

            const lineText = document.lineAt(position).text;
            const linePrefix = lineText.slice(0, position.character);

            if (linePrefix.trim().startsWith('--')) {
                return [];
            }
            
            if (className != null) {
                const cleanPrefix = linePrefix.trim();
                const lastColon = cleanPrefix.lastIndexOf(':');
                
                if (lastColon === -1) {
                    return [];
                }
            } else {
                const cleanPrefix = linePrefix.trim();
                
                const lastColon = cleanPrefix.lastIndexOf(':');
                const lastDot = cleanPrefix.lastIndexOf('.');
                const lastSpace = cleanPrefix.lastIndexOf(' ');
                
                if (lastColon > lastDot && lastColon > lastSpace) {
                    return [];
                }
            }

            const snippetKey = document.getText(range);
            const markdownContent = new vscode.MarkdownString();
            markdownContent.isTrusted = true;

            jsonDataExist = false;
            if(className && jsonData[className+":"+snippetKey]){
                jsonDataExist = true;
            } else if(jsonData[snippetKey]){
                jsonDataExist = true;
            }

            if (jsonKeys.includes(snippetKey) && jsonDataExist) {
                var snippetData = jsonData[snippetKey];
                if(className){
                    snippetData = jsonData[className+":"+snippetKey];
                }

                const cleanedPrefix = snippetData.prefix.replace(/\(.*?\)/g, '');

                if(className){
                    markdownContent.appendMarkdown(`# ${className}:${cleanedPrefix}\n\n`);
                } else {
                    markdownContent.appendMarkdown(`# ${cleanedPrefix}\n\n`);
                }
                if(snippetData.description && snippetData.description.trim() !== ""){
                    markdownContent.appendMarkdown(`${snippetData.description}\n\n`);
                    markdownContent.appendMarkdown(`This function is not documented by MA, but by the community, this is what the 'HelpLua' command provided:\n\n`);
                } else {
                    markdownContent.appendMarkdown(`This function is not documented, this is what the 'HelpLua' command provided:\n\n`);
                }
                markdownContent.appendCodeblock(snippetData.code, 'lua');

                return new vscode.Hover(markdownContent);
            }

            return null;
        }
    });

    context.subscriptions.push(hoverProvider);
    extensionState.hoverProviders.push(hoverProvider);
}

function processJsonKeys(jsonKeys, className) {
    if (!className) {
        return jsonKeys;
    }

    return jsonKeys.map(key => {
        const prefix = `${className}:`;
        if (key.startsWith(prefix)) {
            return key.slice(prefix.length);
        }
        return key;
    });
}

function addFunctionsCompletion(context, data){
    const objectFreeJson = JSON.parse(data);

    const snippetProvider = vscode.languages.registerCompletionItemProvider('lua', {
        provideCompletionItems(document, position) {
            const lineText = document.lineAt(position).text;
            const linePrefix = lineText.slice(0, position.character);

            if (linePrefix.trim().startsWith('--')) {
                return [];
            }

            const cleanPrefix = linePrefix.trim();
            
            const lastColon = cleanPrefix.lastIndexOf(':');
            const lastDot = cleanPrefix.lastIndexOf('.');
            const lastSpace = cleanPrefix.lastIndexOf(' ');
            
            if (lastColon > lastDot && lastColon > lastSpace) {
                return [];
            }

            var suggestions = Object.entries(objectFreeJson)
                .filter(([funcName]) => !funcName.includes('_'))
                .map(([funcName, data]) => {
                    const item = new vscode.CompletionItem(funcName, vscode.CompletionItemKind.Snippet);
                    item.insertText = new vscode.SnippetString(data.body[0]);
                    item.kind = vscode.CompletionItemKind.Function;
                    item.sortText = "0";
                    item.label = { 
                        label: data.prefix,
                        description: "GrandMa 3 API",
                    };
                    return item;
            });

            return suggestions;
        }
    });
    context.subscriptions.push(snippetProvider);
    extensionState.completionProviders.push(snippetProvider);
}

function addObjectFunctionsCompletion(context, data){
    const objectJson = JSON.parse(data);

    const snippetProvider = vscode.languages.registerCompletionItemProvider('lua', {
        provideCompletionItems(document, position) {
            const lineText = document.lineAt(position).text;
            const linePrefix = lineText.slice(0, position.character);

            if (linePrefix.trim().startsWith('--')) {
                return [];
            }

            const cleanPrefix = linePrefix.trim();
            
            const lastColon = cleanPrefix.lastIndexOf(':');
            const lastDot = cleanPrefix.lastIndexOf('.');
            const lastSpace = cleanPrefix.lastIndexOf(' ');
            
            if (!(lastColon > lastDot && lastColon > lastSpace)) {
                return [];
            }

            var suggestions = Object.entries(objectJson)
                .filter(([funcName]) => funcName.startsWith('Handle:') || funcName.startsWith('Obj') && !funcName.includes('_'))
                .map(([funcName, data]) => {
                    const displayName = funcName.replace('Handle:', '');
                    const item = new vscode.CompletionItem(displayName, vscode.CompletionItemKind.Method);
                    item.insertText = new vscode.SnippetString(data.body[0]);
                    item.documentation = new vscode.MarkdownString(data.description);
                    item.kind = vscode.CompletionItemKind.Method;
                    item.sortText = "0";
                    item.label = { 
                        label: data.prefix,
                        description: "GrandMa 3 API",
                    };

                    return item;
                });

            return suggestions;
        }
    }, ':');
    
    context.subscriptions.push(snippetProvider);
    extensionState.completionProviders.push(snippetProvider);
}

function getObjectFreeFilePath(context, version){
    return normalizePath(path.join(context.extensionPath, 'resources', version, 'ma3_object_free.json'));
}

function getObjectFilePath(context, version){
    return normalizePath(path.join(context.extensionPath, 'resources', version, 'ma3_object.json'));
}

function getObjectFreeNoDocFilePath(context, version){
    return normalizePath(path.join(context.extensionPath, 'resources', version, 'ma3_object_free_no_doc.json'));
}

function getObjectNoDocFilePath(context, version){
    return normalizePath(path.join(context.extensionPath, 'resources', version, 'ma3_object_no_doc.json'));
}

function normalizePath(filePath) {
    const normalizedPath = path.resolve(filePath);
    return normalizedPath
}

function debugLog(message) {
    if (!extensionState.outputChannel) {
        extensionState.outputChannel = vscode.window.createOutputChannel('grandMA3 Debug');
    }

    const timestamp = new Date().toISOString();
    extensionState.outputChannel.appendLine(`[${timestamp}] ${message}`);
    console.log('[grandMA3 Debug] ' + message);
}

function deactivate() {
    if (extensionState.hoverProviders) {
        extensionState.hoverProviders.forEach(provider => provider.dispose());
        extensionState.hoverProviders.length = 0;
    }

    if (extensionState.completionProviders) {
        extensionState.completionProviders.forEach(provider => provider.dispose());
        extensionState.completionProviders.length = 0;
    }
}

module.exports = {
    activate,
    deactivate,
    handleOpenSysmon: handleTerminal 
};