const vscode = require('vscode');
const path = require('path');
const fs = require('fs');

const API_VERSION_CONFIG_KEY = 'apiVersion';
const EXTENSION_ENABLED_CONFIG_KEY  = 'extensionEnabled';

const extensionState = {
    hoverProviders: [],
    completionProviders: []
};


function activate(context) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const isExtensionEnabled = configuration.get(EXTENSION_ENABLED_CONFIG_KEY, true);


    if (!extensionState.statusBarItem) {
        extensionState.statusBarItem = createApiVersionStatusBarItem();
        createMenu(context);
    }
    extensionState.statusBarItem.show();
    
    if (!isExtensionEnabled) {
        extensionState.statusBarItem.text = `GrandMa 3 API: Off`;
        return;
    }

    const currentApiVersion = getCurrentApiVersion(context);
    extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;

    configureWorkspace(context, currentApiVersion);
    loadApiFiles(context, currentApiVersion);
}

function createMenu(context){
    context.subscriptions.push(extensionState.statusBarItem);

    const changeApiVersionCommand = vscode.commands.registerCommand('grandMa3.menu', async () => {
        const configuration = vscode.workspace.getConfiguration('grandMa3');
        const isExtensionEnabled = configuration.get(EXTENSION_ENABLED_CONFIG_KEY, true);

        const selection = isExtensionEnabled ? await vscode.window.showQuickPick(
            [
                { label: 'Select GrandMa 3 API version' },
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
            case 'Restart extension':
                const currentApiVersion = getCurrentApiVersion(context);
                configureWorkspace(context, currentApiVersion);
                loadApiFiles(context, currentApiVersion);
                restartLuaServer();
                vscode.window.showInformationMessage(`GrandMa 3 extension restarted`);
                break;

            case 'Select GrandMa 3 API version':
                await showApiVersionQuickPick(context);
                break;

            case 'Disable extension for this project':
                await toggleExtension(context, false);
                break;

            case 'Enable extension for this project':
                await toggleExtension(context, true);
                break;
        }
    });
    context.subscriptions.push(changeApiVersionCommand);
}

async function toggleExtension(context, enable) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    await configuration.update(EXTENSION_ENABLED_CONFIG_KEY, enable, vscode.ConfigurationTarget.Workspace);

    const luaConfig = vscode.workspace.getConfiguration('Lua');

    if (enable) {
        const currentApiVersion = getCurrentApiVersion(context);
        extensionState.statusBarItem.text = `GrandMa 3 API: ${currentApiVersion}`;
        configureWorkspace(context, currentApiVersion);
        loadApiFiles(context, currentApiVersion);
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

function getCurrentApiVersion(context) {
    const configuration = vscode.workspace.getConfiguration('grandMa3');
    const availableVersions = getAvailableApiVersions(context);
    
    const configuredVersion = configuration.get(API_VERSION_CONFIG_KEY);

    return availableVersions.includes(configuredVersion) 
        ? configuredVersion 
        : availableVersions[0];
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
        await configuration.update(API_VERSION_CONFIG_KEY, selection.label, vscode.ConfigurationTarget.Workspace);

        extensionState.statusBarItem.text = `GrandMa 3 API: ${selection.label}`;

        configureWorkspace(context, selection.label);
        loadApiFiles(context, selection.label);

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

function loadApiFiles(context, version) {
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

function configureWorkspace(context, version){
    importDummyFunctions(context, version);
    addFunctionNamesToCSpell(context, version);
}

async function importDummyFunctions(context, version){
    const luaConfig = vscode.workspace.getConfiguration('Lua');

    await luaConfig.update('workspace.library', [
        context.asAbsolutePath(path.join('resources', version))
    ], vscode.ConfigurationTarget.Workspace);

    await luaConfig.update('diagnostics.disable', ['undefined-field'], vscode.ConfigurationTarget.Workspace);
}

async function addFunctionNamesToCSpell(context, version) {
    const objectFreeApiPath = getObjectFreeFilePath(context, version);
    const objectFreeApiData = JSON.parse(fs.readFileSync(objectFreeApiPath, 'utf8'));
    const functionNames = Object.keys(objectFreeApiData);

    const cspellUserConfig = vscode.workspace.getConfiguration('cSpell', undefined);

    let words = cspellUserConfig.get('userWords') || [];
    if (!Array.isArray(words)) {
        words = [];
    }

    const newWords = functionNames.filter(word => !words.includes(word));
    if (newWords.length > 0) {
        words = [...words, ...newWords];
        await cspellUserConfig.update('userWords', words, vscode.ConfigurationTarget.Global);
    }
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
    return path.resolve(filePath).toLowerCase();
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
    deactivate
};