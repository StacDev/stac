"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.PreviewManager = void 0;
const vscode = __importStar(require("vscode"));
const node_fs_1 = require("node:fs");
const path = __importStar(require("node:path"));
const node_child_process_1 = require("node:child_process");
const constants_1 = require("../core/constants");
const jsonGeneration_1 = require("./jsonGeneration");
const jsonResolver_1 = require("./jsonResolver");
const previewHostProcess_1 = require("./previewHostProcess");
const previewPanel_1 = require("./previewPanel");
const screenDiscovery_1 = require("./screenDiscovery");
const themeDiscovery_1 = require("./themeDiscovery");
const runnerScript_1 = require("./runnerScript");
class PreviewManager {
    context;
    outputChannel;
    panel;
    panelHostPort;
    hostProcess;
    hostSettingsKey;
    activeDocumentUri;
    preferredScreenByDocument = new Map();
    lastRenderMessage;
    lastRequestedScreenName;
    lastRenderRequestId;
    discoveredThemes = [];
    selectedThemeName;
    themeJsonCache = new Map();
    pendingRefresh;
    refreshRunning = false;
    /** Timestamp of the last explicit refresh (openPreview / refreshPreview). Used to suppress
     *  duplicate renders from handleDidChangeActiveEditor / handleDidChangeSelection that fire
     *  concurrently with the explicit refresh. */
    lastExplicitRefreshTime = 0;
    constructor(context) {
        this.context = context;
        this.outputChannel = vscode.window.createOutputChannel('Stac Preview');
    }
    register() {
        this.context.subscriptions.push(vscode.commands.registerCommand(constants_1.COMMANDS.previewOpen, async () => {
            await this.openPreview();
        }), vscode.commands.registerCommand(constants_1.COMMANDS.previewRefresh, async () => {
            await this.refreshPreview();
        }), vscode.commands.registerCommand(constants_1.COMMANDS.previewStop, async () => {
            await this.stopPreview();
        }), vscode.commands.registerCommand(constants_1.COMMANDS.previewSelectScreen, async () => {
            await this.selectScreen();
        }), vscode.workspace.onDidSaveTextDocument((document) => {
            void this.handleDidSaveDocument(document);
        }), vscode.window.onDidChangeActiveTextEditor((editor) => {
            void this.handleDidChangeActiveEditor(editor);
        }), vscode.window.onDidChangeTextEditorSelection((event) => {
            void this.handleDidChangeSelection(event);
        }), this.outputChannel, this);
    }
    async openPreview() {
        const settings = this.getSettings();
        if (!settings.enabled) {
            void vscode.window.showInformationMessage('Stac preview is disabled by stacVscode.preview.enable.');
            return;
        }
        const editor = vscode.window.activeTextEditor;
        if (!editor || editor.document.languageId !== 'dart') {
            void vscode.window.showErrorMessage('Open a Dart file containing @StacScreen to preview.');
            return;
        }
        this.activeDocumentUri = editor.document.uri;
        this.preferredScreenByDocument.delete(editor.document.uri.fsPath);
        await this.ensurePanelAndHost(settings);
        await this.refreshThemeList();
        this.lastExplicitRefreshTime = Date.now();
        this.enqueueRefresh(editor.document.uri);
    }
    async refreshPreview() {
        const settings = this.getSettings();
        if (!settings.enabled) {
            return;
        }
        const editor = vscode.window.activeTextEditor;
        if (editor && editor.document.languageId === 'dart') {
            this.activeDocumentUri = editor.document.uri;
            const cursorOffset = editor.document.offsetAt(editor.selection.active);
            this.lastExplicitRefreshTime = Date.now();
            this.enqueueRefresh(editor.document.uri, cursorOffset);
            return;
        }
        if (this.activeDocumentUri) {
            this.enqueueRefresh(this.activeDocumentUri);
            return;
        }
        void vscode.window.showErrorMessage('No active Stac screen document to refresh.');
    }
    async stopPreview() {
        this.pendingRefresh = undefined;
        this.refreshRunning = false;
        if (this.panel) {
            this.panel.dispose();
            this.panel = undefined;
            this.panelHostPort = undefined;
        }
        if (this.hostProcess) {
            await this.hostProcess.stop();
            this.hostProcess = undefined;
            this.hostSettingsKey = undefined;
        }
    }
    async selectScreen() {
        const editor = vscode.window.activeTextEditor;
        if (!editor || editor.document.languageId !== 'dart') {
            void vscode.window.showErrorMessage('Open a Dart document to select a preview screen.');
            return;
        }
        const screens = (0, screenDiscovery_1.discoverScreens)(editor.document);
        if (screens.length === 0) {
            void vscode.window.showErrorMessage('No @StacScreen declarations found in this file.');
            return;
        }
        const selected = await (0, screenDiscovery_1.pickScreenDescriptor)(screens);
        if (!selected) {
            return;
        }
        this.preferredScreenByDocument.set(editor.document.uri.fsPath, selected.screenName);
        this.activeDocumentUri = editor.document.uri;
        const cursorOffset = editor.document.offsetAt(editor.selection.active);
        this.enqueueRefresh(editor.document.uri, cursorOffset);
    }
    async dispose() {
        await this.stopPreview();
    }
    async handleDidSaveDocument(document) {
        const settings = this.getSettings();
        if (!settings.enabled || !settings.autoRefreshOnSave) {
            return;
        }
        if (document.languageId !== 'dart') {
            return;
        }
        if (!this.panel || !this.activeDocumentUri) {
            return;
        }
        // Invalidate theme cache if the saved file is a theme source
        const isThemeFile = this.discoveredThemes.some((t) => t.filePath === document.uri.fsPath);
        if (isThemeFile) {
            // Only invalidate themes from this file, not all themes
            for (const theme of this.discoveredThemes) {
                if (theme.filePath === document.uri.fsPath) {
                    this.themeJsonCache.delete(theme.themeName);
                }
            }
            this.outputChannel.appendLine(`[preview] Theme file saved, cache invalidated: ${document.uri.fsPath}`);
        }
        // Refresh if the saved file is the active screen document OR a theme file with a selected theme
        const isActiveScreen = document.uri.fsPath === this.activeDocumentUri.fsPath;
        if (!isActiveScreen && !(isThemeFile && this.selectedThemeName)) {
            return;
        }
        const editor = vscode.window.activeTextEditor;
        const cursorOffset = editor && editor.document.uri.fsPath === this.activeDocumentUri.fsPath
            ? editor.document.offsetAt(editor.selection.active)
            : undefined;
        this.enqueueRefresh(this.activeDocumentUri, cursorOffset);
    }
    async handleDidChangeActiveEditor(editor) {
        const settings = this.getSettings();
        if (!settings.enabled) {
            return;
        }
        // Suppress if an explicit refresh (open/refresh command) was triggered very recently
        if (Date.now() - this.lastExplicitRefreshTime < 2000) {
            return;
        }
        if (!this.panel) {
            return;
        }
        if (!editor) {
            return;
        }
        const { document } = editor;
        if (document.languageId !== 'dart') {
            return;
        }
        const screens = (0, screenDiscovery_1.discoverScreens)(document);
        if (screens.length === 0) {
            return;
        }
        this.activeDocumentUri = document.uri;
        const cursorOffset = document.offsetAt(editor.selection.active);
        this.enqueueRefresh(document.uri, cursorOffset);
    }
    async handleDidChangeSelection(event) {
        const settings = this.getSettings();
        if (!settings.enabled || !this.panel) {
            return;
        }
        const { document } = event.textEditor;
        if (document.languageId !== 'dart') {
            return;
        }
        const screens = (0, screenDiscovery_1.discoverScreens)(document);
        if (screens.length === 0) {
            return;
        }
        // Suppress if an explicit refresh was triggered very recently
        if (Date.now() - this.lastExplicitRefreshTime < 2000) {
            return;
        }
        const selection = event.selections[0];
        if (!selection) {
            return;
        }
        const cursorOffset = document.offsetAt(selection.active);
        const preferred = this.preferredScreenByDocument.get(document.uri.fsPath);
        const target = (0, screenDiscovery_1.chooseScreenDescriptor)(screens, cursorOffset, preferred);
        if (!target) {
            return;
        }
        if (this.activeDocumentUri?.fsPath === document.uri.fsPath
            && this.lastRequestedScreenName === target.screenName) {
            return;
        }
        this.activeDocumentUri = document.uri;
        this.preferredScreenByDocument.set(document.uri.fsPath, target.screenName);
        this.enqueueRefresh(document.uri, cursorOffset);
    }
    enqueueRefresh(uri, cursorOffset) {
        this.pendingRefresh = { uri, cursorOffset };
        if (!this.refreshRunning) {
            void this.runRefreshLoop();
        }
    }
    async runRefreshLoop() {
        this.refreshRunning = true;
        while (this.pendingRefresh) {
            const next = this.pendingRefresh;
            this.pendingRefresh = undefined;
            try {
                await this.refreshDocument(next.uri, next.cursorOffset);
            }
            catch (error) {
                this.outputChannel.appendLine(`[preview] Refresh failed: ${String(error)}`);
                this.outputChannel.show(true);
                if (this.panel) {
                    void this.panel.postState('error', `Preview refresh failed: ${String(error)}`);
                }
                void vscode.window.showErrorMessage(`Stac preview failed: ${String(error)}`);
            }
        }
        this.refreshRunning = false;
    }
    async refreshDocument(documentUri, cursorOffset) {
        const settings = this.getSettings();
        if (!settings.enabled) {
            return;
        }
        const document = await vscode.workspace.openTextDocument(documentUri);
        if (document.languageId !== 'dart') {
            return;
        }
        const projectRoot = this.resolveProjectRoot(document);
        if (!projectRoot) {
            throw new Error('Unable to find a Dart/Flutter project root (pubspec.yaml) for preview.');
        }
        await this.ensurePanelAndHost(settings);
        if (!this.panel) {
            throw new Error('Preview panel is not available.');
        }
        const screens = (0, screenDiscovery_1.discoverScreens)(document);
        if (screens.length === 0) {
            throw new Error('No @StacScreen declarations found in this document.');
        }
        const preferred = this.preferredScreenByDocument.get(document.uri.fsPath);
        const screen = (0, screenDiscovery_1.chooseScreenDescriptor)(screens, cursorOffset, preferred);
        if (!screen) {
            throw new Error('Unable to resolve a screen for preview.');
        }
        this.preferredScreenByDocument.set(document.uri.fsPath, screen.screenName);
        this.activeDocumentUri = document.uri;
        this.outputChannel.appendLine(`[preview] Rendering screen ${screen.screenName} from ${document.uri.fsPath}`);
        void this.panel.postState('building', `Building preview for ${screen.screenName}...`);
        const result = await (0, jsonGeneration_1.generatePreviewJson)({
            workspaceRoot: projectRoot,
            sourceFilePath: document.uri.fsPath,
            screenName: screen.screenName,
            functionName: screen.functionName,
            runnerSupported: screen.runnerSupported,
            strategy: settings.strategy,
            buildCommand: expandBuildCommandTokens(settings.buildCommand, {
                workspaceFolder: this.resolveWorkspaceFolderPath(document),
                projectFolder: projectRoot,
            }),
            outputDirCandidates: settings.outputDirCandidates,
            outputChannel: this.outputChannel,
        });
        const payload = {
            type: 'stac.preview.render',
            screenName: screen.screenName,
            json: result.json,
            sourcePath: result.jsonPath,
            timestamp: new Date().toISOString(),
            requestId: createRenderRequestId(),
        };
        // Attach theme JSON if a theme is selected
        if (this.selectedThemeName) {
            const themeJson = await this.resolveThemeJson(projectRoot);
            if (themeJson) {
                payload.theme = themeJson;
            }
        }
        this.lastRequestedScreenName = screen.screenName;
        this.lastRenderRequestId = payload.requestId;
        this.lastRenderMessage = payload;
        if (!this.panel) {
            return;
        }
        await this.panel.postRender(payload);
        this.panel?.postState('ready', `Preview payload sent for ${screen.screenName} via ${result.source}.`);
    }
    async ensurePanelAndHost(settings) {
        const host = await this.getOrCreateHostProcess(settings);
        const hostUrl = await host.ensureStarted();
        const hostPort = host.hostPort;
        if (!this.panel || this.panelHostPort !== hostPort) {
            if (this.panel) {
                this.panel.dispose();
            }
            this.panel = new previewPanel_1.PreviewPanel(this.context.extensionUri, hostUrl, hostPort);
            this.panelHostPort = hostPort;
            this.panel.onDidDispose(() => {
                this.panel = undefined;
                this.panelHostPort = undefined;
            });
            this.panel.onDidReceiveMessage((message) => {
                void this.handleWebviewMessage(message);
            });
            // When the user clicks the preview panel, VS Code makes it the "active"
            // editor group.  Any subsequent file-open from the explorer would then
            // create a new split column instead of opening in the editor column.
            // To prevent this, shift focus back to the last active text editor after
            // a short delay (enough for webview click events to fire).
            this.panel.onDidChangeViewState((e) => {
                if (e.webviewPanel.active) {
                    setTimeout(() => {
                        const editor = vscode.window.activeTextEditor;
                        if (editor) {
                            void vscode.window.showTextDocument(editor.document, editor.viewColumn, false);
                        }
                    }, 200);
                }
            });
        }
        else {
            this.panel.updateHostUrl(hostUrl);
            this.panel.reveal();
        }
    }
    async handleWebviewMessage(message) {
        if (message.type === 'stac.preview.retry') {
            await this.refreshPreview();
            return;
        }
        if (message.type === 'stac.preview.webview.ready') {
            if (this.panel && this.lastRenderMessage) {
                void this.panel.postRender(this.lastRenderMessage);
            }
            if (this.panel && this.discoveredThemes.length > 0) {
                void this.panel.postThemes(this.discoveredThemes.map((t) => ({ themeName: t.themeName })), this.selectedThemeName ?? null);
            }
            return;
        }
        if (message.type === 'stac.preview.selectTheme') {
            this.selectedThemeName = message.themeName ?? undefined;
            this.outputChannel.appendLine(`[preview] Theme selected: ${this.selectedThemeName ?? 'none'}`);
            // Fast-path: reuse last screen JSON, only re-resolve theme
            await this.reRenderWithCurrentTheme();
            return;
        }
        this.handlePreviewHostEvent(message);
    }
    handlePreviewHostEvent(message) {
        if (message.type === 'stac.preview.ready') {
            this.outputChannel.appendLine(`[preview] Host ready: ${message.message ?? ''}`);
            if (this.panel) {
                void this.panel.postState('ready', message.message ?? 'Preview host ready.');
                if (this.lastRenderMessage) {
                    void this.panel.postRender(this.lastRenderMessage);
                }
            }
            return;
        }
        if (message.type === 'stac.preview.rendered') {
            const requestId = message.requestId;
            if (requestId
                && this.lastRenderRequestId
                && requestId !== this.lastRenderRequestId) {
                this.outputChannel.appendLine(`[preview] Ignoring stale rendered ack for request ${requestId}.`);
                return;
            }
            if (message.message) {
                this.outputChannel.appendLine(`[preview] ${message.message}`);
            }
            if (this.panel) {
                const screenName = message.screenName ?? this.lastRequestedScreenName ?? 'screen';
                void this.panel.postState('rendered', `Rendered ${screenName}.`);
            }
            return;
        }
        if (message.type === 'stac.preview.error') {
            if (message.requestId
                && this.lastRenderRequestId
                && message.requestId !== this.lastRenderRequestId) {
                return;
            }
            const detail = message.message ?? 'Preview host reported an error.';
            this.outputChannel.appendLine(`[preview] ${detail}`);
            if (this.panel) {
                void this.panel.postState('error', detail);
            }
        }
    }
    async getOrCreateHostProcess(settings) {
        const key = `${settings.hostPort}:${settings.startupTimeoutMs}`;
        if (!this.hostProcess || this.hostSettingsKey !== key) {
            if (this.hostProcess) {
                await this.hostProcess.stop();
            }
            this.hostProcess = new previewHostProcess_1.PreviewHostProcess({
                extensionPath: this.context.extensionPath,
                outputChannel: this.outputChannel,
                port: settings.hostPort,
                startupTimeoutMs: settings.startupTimeoutMs,
            });
            this.hostSettingsKey = key;
        }
        return this.hostProcess;
    }
    resolveWorkspaceFolderPath(document) {
        const workspaceFolder = vscode.workspace.getWorkspaceFolder(document.uri);
        if (workspaceFolder) {
            return workspaceFolder.uri.fsPath;
        }
        const first = vscode.workspace.workspaceFolders?.at(0);
        return first?.uri.fsPath;
    }
    resolveProjectRoot(document) {
        const workspaceFolder = this.resolveWorkspaceFolderPath(document);
        const documentPath = document.uri.fsPath;
        let current = path.dirname(documentPath);
        while (true) {
            const pubspecPath = path.join(current, 'pubspec.yaml');
            if ((0, node_fs_1.existsSync)(pubspecPath)) {
                return current;
            }
            const parent = path.dirname(current);
            if (parent === current) {
                return workspaceFolder;
            }
            if (workspaceFolder && !isWithinPath(parent, workspaceFolder)) {
                return workspaceFolder;
            }
            current = parent;
        }
    }
    /**
     * Re-render using the last screen JSON but with fresh theme resolution.
     * Avoids expensive screen JSON regeneration when only the theme changes.
     */
    async reRenderWithCurrentTheme() {
        if (!this.panel || !this.lastRenderMessage) {
            // No previous render; fall back to full refresh
            if (this.activeDocumentUri) {
                this.enqueueRefresh(this.activeDocumentUri);
            }
            return;
        }
        const projectRoot = this.activeDocumentUri
            ? this.resolveProjectRoot(await vscode.workspace.openTextDocument(this.activeDocumentUri))
            : undefined;
        const payload = {
            ...this.lastRenderMessage,
            theme: undefined,
            requestId: createRenderRequestId(),
            timestamp: new Date().toISOString(),
        };
        if (this.selectedThemeName && projectRoot) {
            const themeJson = await this.resolveThemeJson(projectRoot);
            if (themeJson) {
                payload.theme = themeJson;
            }
        }
        this.lastRenderRequestId = payload.requestId;
        this.lastRenderMessage = payload;
        if (!this.panel) {
            return;
        }
        await this.panel.postRender(payload);
    }
    async refreshThemeList() {
        const workspaceFolder = vscode.workspace.workspaceFolders?.at(0)?.uri.fsPath;
        if (!workspaceFolder) {
            return;
        }
        try {
            this.discoveredThemes = await (0, themeDiscovery_1.discoverThemesInWorkspace)(workspaceFolder);
            this.outputChannel.appendLine(`[preview] Discovered ${this.discoveredThemes.length} theme(s): ${this.discoveredThemes.map((t) => t.themeName).join(', ') || 'none'}`);
            if (this.panel) {
                void this.panel.postThemes(this.discoveredThemes.map((t) => ({ themeName: t.themeName })), this.selectedThemeName ?? null);
            }
        }
        catch (error) {
            this.outputChannel.appendLine(`[preview] Theme discovery failed: ${String(error)}`);
        }
    }
    async resolveThemeJson(projectRoot) {
        if (!this.selectedThemeName) {
            return undefined;
        }
        // Check cache first
        const cached = this.themeJsonCache.get(this.selectedThemeName);
        if (cached) {
            return cached;
        }
        const theme = this.discoveredThemes.find((t) => t.themeName === this.selectedThemeName);
        if (!theme || !theme.topLevel) {
            this.outputChannel.appendLine(`[preview] Theme "${this.selectedThemeName}" not found or not top-level.`);
            return undefined;
        }
        try {
            const artifacts = await (0, runnerScript_1.writeThemeRunnerArtifacts)(projectRoot, theme.filePath, theme.functionOrGetterName, theme.themeName, theme.isGetter);
            this.outputChannel.appendLine(`[preview] Running theme runner: ${artifacts.scriptPath}`);
            const result = await this.runDartCommand(['run', artifacts.scriptPath, artifacts.outputPath], projectRoot);
            if (result.exitCode !== 0) {
                this.outputChannel.appendLine(`[preview] Theme runner failed (exit ${result.exitCode}).`);
                return undefined;
            }
            const json = await (0, jsonResolver_1.readJsonFile)(artifacts.outputPath);
            this.themeJsonCache.set(this.selectedThemeName, json);
            return json;
        }
        catch (error) {
            this.outputChannel.appendLine(`[preview] Failed to generate theme JSON: ${String(error)}`);
            return undefined;
        }
    }
    runDartCommand(args, cwd, timeoutMs = 30_000) {
        return new Promise((resolve, reject) => {
            const child = (0, node_child_process_1.spawn)('dart', [...args], { cwd, env: process.env });
            let settled = false;
            const timer = setTimeout(() => {
                if (!settled) {
                    settled = true;
                    child.kill();
                    this.outputChannel.appendLine(`[preview] dart command timed out after ${timeoutMs}ms`);
                    resolve({ exitCode: 124 });
                }
            }, timeoutMs);
            child.stdout.on('data', (chunk) => {
                this.outputChannel.append(chunk.toString());
            });
            child.stderr.on('data', (chunk) => {
                this.outputChannel.append(chunk.toString());
            });
            child.on('error', (error) => {
                if (!settled) {
                    settled = true;
                    clearTimeout(timer);
                    reject(error);
                }
            });
            child.on('close', (code) => {
                if (!settled) {
                    settled = true;
                    clearTimeout(timer);
                    resolve({ exitCode: code ?? 1 });
                }
            });
        });
    }
    getSettings() {
        const config = vscode.workspace.getConfiguration();
        const strategyValue = config.get(constants_1.SETTINGS.previewJsonStrategy, 'runnerThenBuild');
        const strategy = isPreviewJsonStrategy(strategyValue) ? strategyValue : 'runnerThenBuild';
        return {
            enabled: config.get(constants_1.SETTINGS.previewEnable, true),
            autoRefreshOnSave: config.get(constants_1.SETTINGS.previewAutoRefreshOnSave, true),
            strategy,
            buildCommand: config.get(constants_1.SETTINGS.previewBuildCommand, 'stac build --project "${projectFolder}"'),
            outputDirCandidates: config.get(constants_1.SETTINGS.previewOutputDirCandidates, ['stac/.build', 'build/screens', 'build']),
            hostPort: config.get(constants_1.SETTINGS.previewHostPort, 47841),
            startupTimeoutMs: config.get(constants_1.SETTINGS.previewStartupTimeoutMs, 120000),
        };
    }
}
exports.PreviewManager = PreviewManager;
function isPreviewJsonStrategy(value) {
    return value === 'runnerThenBuild' || value === 'runnerOnly' || value === 'buildOnly';
}
function expandBuildCommandTokens(input, values) {
    const workspaceFolder = values.workspaceFolder ?? values.projectFolder;
    return input
        .replaceAll('${workspaceFolder}', workspaceFolder)
        .replaceAll('${projectFolder}', values.projectFolder);
}
function isWithinPath(candidate, parent) {
    const relative = path.relative(parent, candidate);
    return relative === '' || (!relative.startsWith('..') && !path.isAbsolute(relative));
}
function createRenderRequestId() {
    return `${Date.now()}-${Math.random().toString(36).slice(2, 10)}`;
}
//# sourceMappingURL=previewManager.js.map