import * as vscode from 'vscode';
import { existsSync, statSync } from 'node:fs';
import * as path from 'node:path';
import { spawn } from 'node:child_process';
import { COMMANDS, SETTINGS } from '../core/constants';
import { AssetServer } from './assetServer';
import { findFontsInPubspec } from './fontDiscovery';
import { generatePreviewJson } from './jsonGeneration';
import { readJsonFile } from './jsonResolver';
import { transformJson } from './jsonTransformer';
import { PreviewHostProcess } from './previewHostProcess';
import { PreviewPanel } from './previewPanel';
import {
  chooseScreenDescriptor,
  discoverScreens,
  pickScreenDescriptor,
} from './screenDiscovery';
import { discoverThemesInWorkspace } from './themeDiscovery';
import { writeThemeRunnerArtifacts } from './runnerScript';
import type {
  PreviewJsonStrategy,
  PreviewOutboundMessage,
  PreviewRenderMessage,
  PreviewWebviewMessage,
  ThemeDescriptor,
} from './types';

interface PreviewSettings {
  enabled: boolean;
  autoRefreshOnSave: boolean;
  strategy: PreviewJsonStrategy;
  buildCommand: string;
  outputDirCandidates: string[];
  hostPort: number;
  startupTimeoutMs: number;
}

export class PreviewManager implements vscode.Disposable {
  private readonly context: vscode.ExtensionContext;

  private readonly outputChannel: vscode.OutputChannel;

  private panel?: PreviewPanel;

  private panelHostPort?: number;

  private hostProcess?: PreviewHostProcess;

  private assetServer?: AssetServer;

  private lastAssetRoot?: string;

  private hostSettingsKey?: string;

  private activeDocumentUri?: vscode.Uri;

  private readonly preferredScreenByDocument = new Map<string, string>();

  private lastRenderMessage?: PreviewRenderMessage;

  private lastRequestedScreenName?: string;

  private lastRenderRequestId?: string;

  private discoveredThemes: ThemeDescriptor[] = [];

  private selectedThemeName?: string;

  private themeJsonCache = new Map<string, Record<string, unknown>>();

  private readonly resolvedProjectRoots = new Set<string>();

  private pendingRefresh?: {
    uri: vscode.Uri;
    cursorOffset?: number;
  };

  private refreshRunning = false;

  /** Timestamp of the last explicit refresh (openPreview / refreshPreview). Used to suppress
   *  duplicate renders from handleDidChangeActiveEditor / handleDidChangeSelection that fire
   *  concurrently with the explicit refresh. */
  private lastExplicitRefreshTime = 0;

  constructor(context: vscode.ExtensionContext) {
    this.context = context;
    this.outputChannel = vscode.window.createOutputChannel('Stac Preview');
  }

  register() {
    this.context.subscriptions.push(
      vscode.commands.registerCommand(COMMANDS.previewOpen, async () => {
        await this.openPreview();
      }),
      vscode.commands.registerCommand(COMMANDS.previewRefresh, async () => {
        await this.refreshPreview();
      }),
      vscode.commands.registerCommand(COMMANDS.previewStop, async () => {
        await this.stopPreview();
      }),
      vscode.commands.registerCommand(COMMANDS.previewSelectScreen, async () => {
        await this.selectScreen();
      }),
      vscode.workspace.onDidSaveTextDocument((document) => {
        void this.handleDidSaveDocument(document);
      }),
      vscode.window.onDidChangeActiveTextEditor((editor) => {
        void this.handleDidChangeActiveEditor(editor);
      }),
      vscode.window.onDidChangeTextEditorSelection((event) => {
        void this.handleDidChangeSelection(event);
      }),
      this.outputChannel,
      this,
    );
  }

  async openPreview(): Promise<void> {
    const settings = this.getSettings();
    if (!settings.enabled) {
      void vscode.window.showInformationMessage(
        'Stac preview is disabled by stacVscode.preview.enable.',
      );
      return;
    }

    const editor = vscode.window.activeTextEditor;
    if (!editor || editor.document.languageId !== 'dart') {
      void vscode.window.showErrorMessage('Open a Dart file containing @StacScreen to preview.');
      return;
    }

    this.activeDocumentUri = editor.document.uri;
    this.preferredScreenByDocument.delete(editor.document.uri.fsPath);

    // Show the panel immediately so the user sees the loading state right away.
    // Use the configured port — if it turns out to be busy, ensurePanelAndHost
    // will recreate the panel with the actual port once the host is ready.
    this.createOrUpdatePanel(
      `http://127.0.0.1:${settings.hostPort}`,
      settings.hostPort,
    );

    // Eagerly trigger host startup — runs in background while we discover themes
    // and prepare content.  refreshDocument() will await the host when it needs the panel.
    this.warmUpHost(settings);

    await this.refreshThemeList();

    this.lastExplicitRefreshTime = Date.now();
    this.enqueueRefresh(editor.document.uri);
  }

  async refreshPreview(): Promise<void> {
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

  async stopPreview(): Promise<void> {
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

    if (this.assetServer) {
      this.assetServer.stop();
      this.assetServer = undefined;
      this.lastAssetRoot = undefined;
    }
  }

  async selectScreen(): Promise<void> {
    const editor = vscode.window.activeTextEditor;
    if (!editor || editor.document.languageId !== 'dart') {
      void vscode.window.showErrorMessage('Open a Dart document to select a preview screen.');
      return;
    }

    const screens = discoverScreens(editor.document);
    if (screens.length === 0) {
      void vscode.window.showErrorMessage('No @StacScreen declarations found in this file.');
      return;
    }

    const selected = await pickScreenDescriptor(screens);
    if (!selected) {
      return;
    }

    this.preferredScreenByDocument.set(editor.document.uri.fsPath, selected.screenName);
    this.activeDocumentUri = editor.document.uri;
    const cursorOffset = editor.document.offsetAt(editor.selection.active);
    this.enqueueRefresh(editor.document.uri, cursorOffset);
  }

  async dispose(): Promise<void> {
    await this.stopPreview();
  }

  private async handleDidSaveDocument(document: vscode.TextDocument): Promise<void> {
    const settings = this.getSettings();
    if (!settings.enabled || !settings.autoRefreshOnSave) {
      return;
    }

    if (!this.panel || !this.activeDocumentUri) {
      return;
    }

    const fsPath = document.uri.fsPath;

    // pubspec.yaml changes can affect fonts, assets, and package resolution — refresh the preview
    if (fsPath.endsWith('pubspec.yaml')) {
      this.outputChannel.appendLine(
        '[preview] pubspec.yaml saved, refreshing preview for asset/font/package changes.',
      );
      const projectRoot = this.resolveProjectRoot(document);
      if (projectRoot) {
        this.resolvedProjectRoots.delete(projectRoot);
      }
      this.enqueueRefresh(this.activeDocumentUri);
      return;
    }

    if (document.languageId !== 'dart') {
      return;
    }

    // Invalidate theme cache if the saved file is a known theme source
    const isKnownThemeFile = this.discoveredThemes.some(
      (t) => t.filePath === fsPath,
    );
    if (isKnownThemeFile) {
      for (const theme of this.discoveredThemes) {
        if (theme.filePath === fsPath) {
          this.themeJsonCache.delete(theme.themeName);
        }
      }
      this.outputChannel.appendLine(
        `[preview] Theme file saved, cache invalidated: ${fsPath}`,
      );
    }

    // Re-discover themes if the saved file contains @StacThemeRef (new or existing)
    // to pick up newly added themes without a full restart.
    const fileText = document.getText();
    const mightContainTheme = fileText.includes('@StacThemeRef');
    let hasNewThemes = false;
    if (mightContainTheme || isKnownThemeFile) {
      const previousNames = new Set(this.discoveredThemes.map((t) => t.themeName));
      await this.refreshThemeList();
      hasNewThemes = this.discoveredThemes.some((t) => !previousNames.has(t.themeName));
    }

    const isActiveScreen = fsPath === this.activeDocumentUri.fsPath;
    const isThemeFileNow = this.discoveredThemes.some(
      (t) => t.filePath === fsPath,
    );

    if (!isActiveScreen && !isThemeFileNow && !hasNewThemes) {
      return;
    }

    const editor = vscode.window.activeTextEditor;
    const cursorOffset = editor && editor.document.uri.fsPath === this.activeDocumentUri.fsPath
      ? editor.document.offsetAt(editor.selection.active)
      : undefined;

    this.enqueueRefresh(this.activeDocumentUri, cursorOffset);
  }

  private async handleDidChangeActiveEditor(
    editor: vscode.TextEditor | undefined,
  ): Promise<void> {
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

    const screens = discoverScreens(document);
    if (screens.length === 0) {
      return;
    }

    this.activeDocumentUri = document.uri;
    const cursorOffset = document.offsetAt(editor.selection.active);
    this.enqueueRefresh(document.uri, cursorOffset);
  }

  private async handleDidChangeSelection(
    event: vscode.TextEditorSelectionChangeEvent,
  ): Promise<void> {
    const settings = this.getSettings();
    if (!settings.enabled || !this.panel) {
      return;
    }

    const { document } = event.textEditor;
    if (document.languageId !== 'dart') {
      return;
    }

    const screens = discoverScreens(document);
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
    const target = chooseScreenDescriptor(screens, cursorOffset, preferred);
    if (!target) {
      return;
    }

    if (
      this.activeDocumentUri?.fsPath === document.uri.fsPath
      && this.lastRequestedScreenName === target.screenName
    ) {
      return;
    }

    this.activeDocumentUri = document.uri;
    this.preferredScreenByDocument.set(document.uri.fsPath, target.screenName);
    this.enqueueRefresh(document.uri, cursorOffset);
  }

  private enqueueRefresh(uri: vscode.Uri, cursorOffset?: number) {
    this.pendingRefresh = { uri, cursorOffset };
    if (!this.refreshRunning) {
      void this.runRefreshLoop();
    }
  }

  private async runRefreshLoop(): Promise<void> {
    this.refreshRunning = true;
    while (this.pendingRefresh) {
      const next = this.pendingRefresh;
      this.pendingRefresh = undefined;

      try {
        await this.refreshDocument(next.uri, next.cursorOffset);
      } catch (error) {
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

  private async refreshDocument(
    documentUri: vscode.Uri,
    cursorOffset?: number,
  ): Promise<void> {
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

    const screens = discoverScreens(document);
    if (screens.length === 0) {
      throw new Error('No @StacScreen declarations found in this document.');
    }

    const preferred = this.preferredScreenByDocument.get(document.uri.fsPath);
    const screen = chooseScreenDescriptor(screens, cursorOffset, preferred);
    if (!screen) {
      throw new Error('Unable to resolve a screen for preview.');
    }

    this.preferredScreenByDocument.set(document.uri.fsPath, screen.screenName);
    this.activeDocumentUri = document.uri;
    this.outputChannel.appendLine(
      `[preview] Rendering screen ${screen.screenName} from ${document.uri.fsPath}`,
    );

    if (!this.assetServer) {
      this.assetServer = new AssetServer((msg) => this.outputChannel.appendLine(msg));
    } else if (this.lastAssetRoot && this.lastAssetRoot !== projectRoot) {
      this.outputChannel.appendLine(`[preview] Project root changed, restarting asset server...`);
      this.assetServer.stop();
      this.assetServer = new AssetServer((msg) => this.outputChannel.appendLine(msg));
    }
    this.lastAssetRoot = projectRoot;

    // Ensure package resolution is set up before running any dart scripts
    await this.ensurePackageResolution(projectRoot);

    // Start content generation immediately — JSON generation, theme resolution,
    // font discovery, and asset server are all independent and can run in parallel
    // with each other AND with the Flutter host compilation.
    const contentPromise = Promise.all([
      this.assetServer.start(projectRoot),
      generatePreviewJson({
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
      }),
      findFontsInPubspec(projectRoot).catch(() => []),
      this.selectedThemeName
        ? this.resolveThemeJson(projectRoot).catch((e) => {
          this.outputChannel.appendLine(`[preview] Theme resolution failed: ${String(e)}`);
          return undefined;
        })
        : Promise.resolve(undefined),
    ]);

    // Wait for host and panel — on first open this blocks while the Flutter web
    // server compiles, but content generation is running in parallel above.
    // On subsequent refreshes this returns instantly.
    await this.ensurePanelAndHost(settings);
    if (!this.panel) {
      throw new Error('Preview panel is not available.');
    }

    void this.panel.postState('building', `Building preview for ${screen.screenName}...`);

    // Await content results (likely already done if host startup was the bottleneck)
    const [assetServerPort, result, fonts, themeJson] = await contentPromise;

    const transformedJson = transformJson(result.json, assetServerPort);

    try {
      if (fonts.length > 0) {
        const fontsPayload = fonts.map(f => ({
          family: f.family,
          urls: f.fonts.map(asset =>
            `http://127.0.0.1:${assetServerPort}/${asset.asset.replace(/^\//, '')}`
          )
        }));

        this.panel?.postMessage({
          type: 'stac.preview.loadFonts',
          fonts: fontsPayload
        });
        this.outputChannel.appendLine(
          `[preview] Sending ${fonts.length} font families to host.`
        );
      } else {
        this.outputChannel.appendLine('[preview] No fonts found in pubspec.yaml.');
      }
    } catch (e) {
      this.outputChannel.appendLine(`[preview] Failed to load fonts: ${e}`);
    }

    const payload: PreviewRenderMessage = {
      type: 'stac.preview.render',
      screenName: screen.screenName,
      json: transformedJson,
      sourcePath: result.jsonPath,
      timestamp: new Date().toISOString(),
      requestId: createRenderRequestId(),
    };

    if (themeJson) {
      payload.theme = themeJson;
    }

    this.lastRequestedScreenName = screen.screenName;
    this.lastRenderRequestId = payload.requestId;
    this.lastRenderMessage = payload;

    if (!this.panel) {
      return;
    }

    await this.panel.postRender(payload);
    this.panel?.postState(
      'ready',
      `Preview payload sent for ${screen.screenName} via ${result.source}.`,
    );
  }

  private createOrUpdatePanel(hostUrl: string, hostPort: number): void {
    if (!this.panel || this.panelHostPort !== hostPort) {
      if (this.panel) {
        this.panel.dispose();
      }
      this.panel = new PreviewPanel(this.context.extensionUri, hostUrl, hostPort);
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
              void vscode.window.showTextDocument(
                editor.document,
                editor.viewColumn,
                false,
              );
            }
          }, 200);
        }
      });
    } else {
      this.panel.updateHostUrl(hostUrl);
      this.panel.reveal();
    }
  }

  private async ensurePanelAndHost(settings: PreviewSettings): Promise<void> {
    const host = await this.getOrCreateHostProcess(settings);
    const hostUrl = await host.ensureStarted();
    this.createOrUpdatePanel(hostUrl, host.hostPort);
  }

  private async handleWebviewMessage(message: PreviewWebviewMessage): Promise<void> {
    if (message.type === 'stac.preview.retry') {
      await this.refreshPreview();
      return;
    }

    if (message.type === 'stac.preview.webview.ready') {
      if (this.panel && this.lastRenderMessage) {
        void this.panel.postRender(this.lastRenderMessage);
      }
      if (this.panel && this.discoveredThemes.length > 0) {
        void this.panel.postThemes(
          this.discoveredThemes.map((t) => ({ themeName: t.themeName })),
          this.selectedThemeName ?? null,
        );
      }
      return;
    }

    if (message.type === 'stac.preview.selectTheme') {
      this.selectedThemeName = message.themeName ?? undefined;
      this.outputChannel.appendLine(
        `[preview] Theme selected: ${this.selectedThemeName ?? 'none'}`,
      );
      // Fast-path: reuse last screen JSON, only re-resolve theme
      await this.reRenderWithCurrentTheme();
      return;
    }

    this.handlePreviewHostEvent(message);
  }

  private handlePreviewHostEvent(message: PreviewOutboundMessage) {
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
      if (
        requestId
        && this.lastRenderRequestId
        && requestId !== this.lastRenderRequestId
      ) {
        this.outputChannel.appendLine(
          `[preview] Ignoring stale rendered ack for request ${requestId}.`,
        );
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
      if (
        message.requestId
        && this.lastRenderRequestId
        && message.requestId !== this.lastRenderRequestId
      ) {
        return;
      }
      const detail = message.message ?? 'Preview host reported an error.';
      this.outputChannel.appendLine(`[preview] ${detail}`);
      if (this.panel) {
        void this.panel.postState('error', detail);
      }
      return;
    }

    if (message.type === 'stac.preview.log') {
      const detail = message.message;
      this.outputChannel.appendLine(`[preview] [host] ${detail}`);
    }
  }

  private async getOrCreateHostProcess(settings: PreviewSettings): Promise<PreviewHostProcess> {
    const key = `${settings.hostPort}:${settings.startupTimeoutMs}`;
    if (!this.hostProcess || this.hostSettingsKey !== key) {
      if (this.hostProcess) {
        await this.hostProcess.stop();
      }

      this.hostProcess = new PreviewHostProcess({
        extensionPath: this.context.extensionPath,
        outputChannel: this.outputChannel,
        port: settings.hostPort,
        startupTimeoutMs: settings.startupTimeoutMs,
      });
      this.hostSettingsKey = key;
    }

    return this.hostProcess;
  }

  private warmUpHost(settings: PreviewSettings): void {
    void this.getOrCreateHostProcess(settings).then(
      (host) => host.ensureStarted(),
      () => { /* Startup errors are handled when ensurePanelAndHost is awaited */ },
    );
  }

  private resolveWorkspaceFolderPath(document: vscode.TextDocument): string | undefined {
    const workspaceFolder = vscode.workspace.getWorkspaceFolder(document.uri);
    if (workspaceFolder) {
      return workspaceFolder.uri.fsPath;
    }

    const first = vscode.workspace.workspaceFolders?.at(0);
    return first?.uri.fsPath;
  }

  private resolveProjectRoot(document: vscode.TextDocument): string | undefined {
    const workspaceFolder = this.resolveWorkspaceFolderPath(document);
    const documentPath = document.uri.fsPath;
    let current = path.dirname(documentPath);

    while (true) {
      const pubspecPath = path.join(current, 'pubspec.yaml');
      if (existsSync(pubspecPath)) {
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
  private async reRenderWithCurrentTheme(): Promise<void> {
    if (!this.panel || !this.lastRenderMessage) {
      // No previous render; fall back to full refresh
      if (this.activeDocumentUri) {
        this.enqueueRefresh(this.activeDocumentUri);
      }
      return;
    }

    const projectRoot = this.activeDocumentUri
      ? this.resolveProjectRoot(
        await vscode.workspace.openTextDocument(this.activeDocumentUri),
      )
      : undefined;

    const payload: PreviewRenderMessage = {
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

  private async refreshThemeList(): Promise<void> {
    const workspaceFolder = vscode.workspace.workspaceFolders?.at(0)?.uri.fsPath;
    if (!workspaceFolder) {
      return;
    }

    try {
      this.discoveredThemes = await discoverThemesInWorkspace(workspaceFolder);
      this.outputChannel.appendLine(
        `[preview] Discovered ${this.discoveredThemes.length} theme(s): ${this.discoveredThemes.map((t) => t.themeName).join(', ') || 'none'}`,
      );

      if (this.discoveredThemes.length > 0 && !this.selectedThemeName) {
        this.selectedThemeName = this.discoveredThemes[0].themeName;
        this.outputChannel.appendLine(`[preview] Auto-selected theme: ${this.selectedThemeName}`);
      }

      if (this.panel) {
        void this.panel.postThemes(
          this.discoveredThemes.map((t) => ({ themeName: t.themeName })),
          this.selectedThemeName ?? null,
        );
      }
    } catch (error) {
      this.outputChannel.appendLine(`[preview] Theme discovery failed: ${String(error)}`);
    }
  }

  private async resolveThemeJson(projectRoot: string): Promise<Record<string, unknown> | undefined> {
    if (!this.selectedThemeName) {
      return undefined;
    }

    // Check cache first
    const cached = this.themeJsonCache.get(this.selectedThemeName);
    if (cached) {
      return cached;
    }

    const theme = this.discoveredThemes.find(
      (t) => t.themeName === this.selectedThemeName,
    );
    if (!theme || !theme.topLevel) {
      this.outputChannel.appendLine(
        `[preview] Theme "${this.selectedThemeName}" not found or not top-level.`,
      );
      return undefined;
    }

    try {
      const artifacts = await writeThemeRunnerArtifacts(
        projectRoot,
        theme.filePath,
        theme.functionOrGetterName,
        theme.themeName,
        theme.isGetter,
      );

      this.outputChannel.appendLine(
        `[preview] Running theme runner: ${artifacts.scriptPath}`,
      );

      // Use relative path from project root so dart run can resolve packages correctly
      const relativeScriptPath = path.relative(projectRoot, artifacts.scriptPath);
      const result = await this.runDartCommand(
        ['run', relativeScriptPath, artifacts.outputPath],
        projectRoot,
      );

      if (result.exitCode !== 0) {
        this.outputChannel.appendLine(
          `[preview] Theme runner failed (exit ${result.exitCode}).`,
        );
        return undefined;
      }

      const json = await readJsonFile(artifacts.outputPath);
      this.themeJsonCache.set(this.selectedThemeName, json);
      return json;
    } catch (error) {
      this.outputChannel.appendLine(
        `[preview] Failed to generate theme JSON: ${String(error)}`,
      );
      return undefined;
    }
  }

  private async ensurePackageResolution(projectRoot: string): Promise<void> {
    if (this.resolvedProjectRoots.has(projectRoot)) {
      return;
    }

    const pubspecPath = path.join(projectRoot, 'pubspec.yaml');
    if (!existsSync(pubspecPath)) {
      return;
    }

    const packageConfigPath = path.join(projectRoot, '.dart_tool', 'package_config.json');
    let needsResolution = !existsSync(packageConfigPath);

    if (!needsResolution) {
      try {
        const pubspecMtime = statSync(pubspecPath).mtimeMs;
        const configMtime = statSync(packageConfigPath).mtimeMs;
        needsResolution = pubspecMtime > configMtime;
      } catch {
        needsResolution = true;
      }
    }

    if (!needsResolution) {
      this.resolvedProjectRoots.add(projectRoot);
      return;
    }

    try {
      const pubspecContent = await vscode.workspace.fs.readFile(
        vscode.Uri.file(pubspecPath),
      );
      const pubspecText = Buffer.from(pubspecContent).toString('utf8');
      const isFlutterProject = /\bflutter\s*:/.test(pubspecText);

      const command = isFlutterProject ? 'flutter' : 'dart';
      this.outputChannel.appendLine(
        `[preview] Running ${command} pub get to resolve packages...`,
      );

      const result = await this.runDartCommand(
        ['pub', 'get'],
        projectRoot,
        120_000,
        command,
      );

      if (result.exitCode === 0) {
        this.resolvedProjectRoots.add(projectRoot);
      } else {
        this.outputChannel.appendLine(
          `[preview] Warning: ${command} pub get failed (exit ${result.exitCode}). Package resolution may fail.`,
        );
      }
    } catch (error) {
      this.outputChannel.appendLine(
        `[preview] Warning: Failed to ensure package resolution: ${String(error)}`,
      );
    }
  }

  private runDartCommand(
    args: readonly string[],
    cwd: string,
    timeoutMs = 30_000,
    command = 'dart',
  ): Promise<{ exitCode: number }> {
    return new Promise((resolve, reject) => {
      const child = spawn(command, [...args], {
        cwd,
        env: process.env,
        shell: process.platform === 'win32',
      });
      let settled = false;

      const timer = setTimeout(() => {
        if (!settled) {
          settled = true;
          child.kill();
          this.outputChannel.appendLine(
            `[preview] dart command timed out after ${timeoutMs}ms`,
          );
          resolve({ exitCode: 124 });
        }
      }, timeoutMs);

      child.stdout.on('data', (chunk: Buffer | string) => {
        this.outputChannel.append(chunk.toString());
      });

      child.stderr.on('data', (chunk: Buffer | string) => {
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

  private getSettings(): PreviewSettings {
    const config = vscode.workspace.getConfiguration();
    const strategyValue = config.get<string>(SETTINGS.previewJsonStrategy, 'runnerThenBuild');
    const strategy = isPreviewJsonStrategy(strategyValue) ? strategyValue : 'runnerThenBuild';

    return {
      enabled: config.get<boolean>(SETTINGS.previewEnable, true),
      autoRefreshOnSave: config.get<boolean>(SETTINGS.previewAutoRefreshOnSave, true),
      strategy,
      buildCommand: config.get<string>(
        SETTINGS.previewBuildCommand,
        'stac build --project "${projectFolder}"',
      ),
      outputDirCandidates: config.get<string[]>(
        SETTINGS.previewOutputDirCandidates,
        ['stac/.build', 'build/screens', 'build'],
      ),
      hostPort: config.get<number>(SETTINGS.previewHostPort, 47841),
      startupTimeoutMs: config.get<number>(SETTINGS.previewStartupTimeoutMs, 120000),
    };
  }
}

function isPreviewJsonStrategy(value: string): value is PreviewJsonStrategy {
  return value === 'runnerThenBuild' || value === 'runnerOnly' || value === 'buildOnly';
}

function expandBuildCommandTokens(
  input: string,
  values: { workspaceFolder?: string; projectFolder: string },
): string {
  const workspaceFolder = values.workspaceFolder ?? values.projectFolder;
  return input
    .replaceAll('${workspaceFolder}', workspaceFolder)
    .replaceAll('${projectFolder}', values.projectFolder);
}

function isWithinPath(candidate: string, parent: string): boolean {
  const relative = path.relative(parent, candidate);
  return relative === '' || (!relative.startsWith('..') && !path.isAbsolute(relative));
}

function createRenderRequestId(): string {
  return `${Date.now()}-${Math.random().toString(36).slice(2, 10)}`;
}
