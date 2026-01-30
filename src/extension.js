const vscode = require('vscode');
const path = require('path');
const fs = require('fs');

const API_VERSION_WORKSPACE_KEY = `apiVersion`;
const EXTENSION_ENABLED_WORKSPACE_KEY  = `extensionEnabled`;

const EXTENSION_ID = `Carrot-Industries.ma3-lua-api`;

const LAST_INSTALLED_VERSION_GLOBAL_KEY  = `${EXTENSION_ID}.lastInstalledVersion`;
const UPDATE_NOTIFICATION_HIDDEN_GLOBAL_KEY  = `${EXTENSION_ID}.updateNotificationHidden`;
const TERMINAL_PATH_GLOBAL_KEY = `${EXTENSION_ID}.terminalPath`;
const TERMINAL_SYSTEM_MONITOR_VISIBILITY_GLOBAL_KEY = `${EXTENSION_ID}.terminalSystemMonitorVisibility`;
const TERMINAL_COMMAND_LINE_VISIBILITY_GLOBAL_KEY = `${EXTENSION_ID}.terminalCommandLineVisibility`;

const extensionState = {
    hoverProviders: [],
    completionProviders: []
};

async function activate(context) {
    const extension = vscode.extensions.getExtension(EXTENSION_ID);

    const currentVersion = extension.packageJSON.version;
    const lastKnownVersion = context.globalState.get(LAST_INSTALLED_VERSION_GLOBAL_KEY);
        
    if (!lastKnownVersion) {
        await context.globalState.update(LAST_INSTALLED_VERSION_GLOBAL_KEY, currentVersion);
        await context.globalState.update(getUpdateHiddenKey(currentVersion), true);
        return;
    }

    if (lastKnownVersion !== currentVersion) {
        await context.globalState.update(LAST_INSTALLED_VERSION_GLOBAL_KEY, currentVersion);
    }

    await showUpdateNotification(context, currentVersion);

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

    const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_GLOBAL_KEY, true);
    const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_GLOBAL_KEY, true);

    updateUIComponentsVisibility(isSysmonVisible, isCmdLineVisible);

    if (!isExtensionEnabled) {
        extensionState.statusBarItem.text = `GrandMa 3 API: Off`;
        migrateLuaDiagnostics(); 
        return;
    }

    const currentApiVersion = await getCurrentApiVersion(context);
    extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;

    await configureWorkspace(context, currentApiVersion);

    migrateLuaDiagnostics();
}

async function showUpdateNotification(context, version) {
    const isHidden = context.globalState.get(getUpdateHiddenKey(version), false);

    if (!isHidden) {
        const whatsUpAction = "What's up?";
        const laterAction = "Later";
        const message = `Ma3 Lua Api updated to v${version}. Check out the new features!`;

        vscode.window.showInformationMessage(message, whatsUpAction, laterAction).then(async (selection) => {
            if (selection === whatsUpAction) {
                const uri = vscode.Uri.joinPath(context.extensionUri, 'CHANGELOG.md');
                await vscode.commands.executeCommand('markdown.showPreview', uri);
                
                await context.globalState.update(getUpdateHiddenKey(version), true);
            }
        });
    }
}


function getUpdateHiddenKey(version) {
    return `${UPDATE_NOTIFICATION_HIDDEN_GLOBAL_KEY}_${version}`;
}

async function migrateLuaDiagnostics() {
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

async function getGMA3TerminalPath(context) {
    const savedPath = context.globalState.get(TERMINAL_PATH_GLOBAL_KEY);
    if (savedPath && fs.existsSync(savedPath)) {
        return savedPath;
    }
    
    const platform = process.platform;
    const isWin = platform === 'win32';
    const isMac = platform === 'darwin';

    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const selectedVersion = configuration.get(API_VERSION_WORKSPACE_KEY);

    if (!selectedVersion) {
        vscode.window.showWarningMessage("No grandMA3 API version selected.");
        return null;
    }

    let possibleScanDirs = [];
    let binaryName = "";

    if (isWin) {
        possibleScanDirs = ["C:\\Program Files\\MALightingTechnology"];
        binaryName = path.join('bin', 'app_terminal.exe');
    } else if (isMac) {
        possibleScanDirs = [
            "/Applications/grandMA3/Contents/MacOS",
            "/Applications/grandMA3.app/Contents/MacOS"
        ];
        binaryName = "app_terminal";
    }

    for (const scanDir of possibleScanDirs) {
        if (fs.existsSync(scanDir)) {
            try {
                const dirs = fs.readdirSync(scanDir);

                const matchingDirs = dirs
                    .filter(d => d.toLowerCase().startsWith(`gma3_${selectedVersion}`))
                    .sort((a, b) => b.localeCompare(a, undefined, { numeric: true, sensitivity: 'base' }));

                if (matchingDirs.length > 0) {
                    const bestMatch = matchingDirs[0];
                    const terminalPath = path.join(scanDir, bestMatch, binaryName);
                    
                    
                    if (fs.existsSync(terminalPath)) {
                        return terminalPath;
                    }
                }
            } catch (err) {
                console.error("Error scanning grandMA3 directory:", err);
            }
        }
    }

    const profileKey = isWin ? 'terminal.integrated.profiles.windows' : 'terminal.integrated.profiles.osx';
    const profiles = vscode.workspace.getConfiguration().get(profileKey);
    if (profiles && profiles['grandMA3'] && profiles['grandMA3'].path) {
        return profiles['grandMA3'].path;
    }

    const manualPath = await askUserForTerminalPath(isMac);
    if (manualPath) {
        await context.globalState.update(TERMINAL_PATH_GLOBAL_KEY, manualPath);
        return manualPath;
    }

    return null;
}

async function askUserForTerminalPath(isMac) {
    const fileName = isMac ? 'app_terminal' : 'app_terminal.exe';
    
    const defaultUri = isMac 
        ? vscode.Uri.file('/Applications/grandMA3/Contents/MacOS') 
        : vscode.Uri.file('C:\\Program Files\\MALightingTechnology');

    const selectedFile = await vscode.window.showOpenDialog({
        canSelectMany: false,
        openLabel: `Select ${fileName}`,
        title: `Select grandMA3 ${fileName}`,
        defaultUri: defaultUri,
        filters: isMac ? {} : { 'Executable': ['exe'] }
    });

    if (selectedFile && selectedFile[0]) {
        return selectedFile[0].fsPath;
    }
    
    return null;
}

async function handleTerminal(context, mode) {
    const terminalPath = await getGMA3TerminalPath(context);

    if (!terminalPath) {
        vscode.window.showErrorMessage("Could not find grandMA3 terminal. Please select it manually.");
        return;
    }
    let terminalName = ""
    if(mode == "sysmon") {
        terminalName = "Ma3 System Monitor";
    } else {
        terminalName = "Ma3 Command Line";
    }

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
            if(mode == "sysmon") {
                terminal.sendText("sysmon");
            } else {
                terminal.sendText("cmdline");
            }
        }, 1500);
    } catch (error) {
        await context.globalState.update(TERMINAL_PATH_GLOBAL_KEY, undefined);
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

        const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_GLOBAL_KEY, true);
        const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_GLOBAL_KEY, true);

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
                await context.globalState.update(TERMINAL_SYSTEM_MONITOR_VISIBILITY_GLOBAL_KEY, newSysmonState);
                updateUIComponentsVisibility(newSysmonState, isCmdLineVisible);
                break;

            case 'Hide Command Line button':
            case 'Show Command Line button':
                const newCmdLineState = !isCmdLineVisible;
                await context.globalState.update(TERMINAL_COMMAND_LINE_VISIBILITY_GLOBAL_KEY, newCmdLineState);
                updateUIComponentsVisibility(isSysmonVisible, newCmdLineState);
                break;

            case 'Disable extension for this project':
                await toggleExtension(context, false);
                break;

            case 'Enable extension for this project':
                await toggleExtension(context, true);
                break;
                
            case 'Restart extension':
                const currentApiVersion = getCurrentApiVersion(context);
                configureWorkspace(context, currentApiVersion);
                restartLuaServer();
                vscode.window.showInformationMessage(`GrandMa 3 extension restarted`);
                break;
        }
    });
    context.subscriptions.push(changeApiVersionCommand);
    
    const isSysmonVisible = context.globalState.get(TERMINAL_SYSTEM_MONITOR_VISIBILITY_GLOBAL_KEY, true);
    const isCmdLineVisible = context.globalState.get(TERMINAL_COMMAND_LINE_VISIBILITY_GLOBAL_KEY, true);

    updateUIComponentsVisibility(isSysmonVisible, isCmdLineVisible);
}

async function toggleExtension(context, enable) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    await configuration.update(EXTENSION_ENABLED_WORKSPACE_KEY, enable, vscode.ConfigurationTarget.Workspace);

    const luaConfig = vscode.workspace.getConfiguration('Lua');

    if (enable) {
        const currentApiVersion = getCurrentApiVersion(context);
        extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;
        configureWorkspace(context, currentApiVersion);
        vscode.window.showInformationMessage('GrandMa 3 extension enabled for this workspace');
    } else {
        deactivate()
        extensionState.statusBarItem.text = `GrandMa 3 API: Off`;
        await luaConfig.update('workspace.library', [], vscode.ConfigurationTarget.Workspace);
        vscode.window.showInformationMessage('GrandMa 3 extension disabled for this workspace');
    }

    restartLuaServer();
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
    const currentVersion = getCurrentApiVersion(context);

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

    if (selection && selection.label != currentVersion) {
        const configuration = vscode.workspace.getConfiguration('grandMa3');
        await configuration.update(API_VERSION_WORKSPACE_KEY, selection.label, vscode.ConfigurationTarget.Workspace);

        extensionState.statusBarItem.text = `GrandMa 3 API: ${selection.label}`;

        configureWorkspace(context, selection.label);

        restartLuaServer();
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
    const cspellConfig = vscode.workspace.getConfiguration('cSpell');
    const dictName = `grandma3-api-${version}`;
    const dictPath = path.join(context.extensionPath, 'resources', version, 'ma3_dictionary_for_cspell.txt');

    let definitions = cspellConfig.get('dictionaryDefinitions') || [];
    
    definitions = definitions.filter(d => d.name && !d.name.startsWith('grandma3-api-'));
    
    definitions.push({
        name: dictName,
        path: dictPath,
    });

    await cspellConfig.update('dictionaryDefinitions', definitions, vscode.ConfigurationTarget.Workspace);

    const dictsInspection = cspellConfig.inspect('dictionaries');
    let activeDicts = dictsInspection?.workspaceValue || [];

    activeDicts = activeDicts.filter(d => typeof d === 'string' && !d.startsWith('grandma3-api-'));
    
    activeDicts.push(dictName);

    await cspellConfig.update('dictionaries', activeDicts, vscode.ConfigurationTarget.Workspace);
}

async function configureWorkspace(context, version){
    importDummyFunctions(context, version);
    loadApiFiles(context, version);
    updateCSpellActiveDictionary(context, version);
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