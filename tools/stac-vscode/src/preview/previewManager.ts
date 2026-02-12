import * as vscode from 'vscode';
import { existsSync } from 'node:fs';
import * as path from 'node:path';
import { COMMANDS, SETTINGS } from '../core/constants';
import { generatePreviewJson } from './jsonGeneration';
import { PreviewHostProcess } from './previewHostProcess';
import { PreviewPanel } from './previewPanel';
import {
  chooseScreenDescriptor,
  discoverScreens,
  pickScreenDescriptor,
} from './screenDiscovery';
import type {
  PreviewJsonStrategy,
  PreviewOutboundMessage,
  PreviewRenderMessage,
  PreviewWebviewMessage,
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

  private hostSettingsKey?: string;

  private activeDocumentUri?: vscode.Uri;

  private readonly preferredScreenByDocument = new Map<string, string>();

  private lastRenderMessage?: PreviewRenderMessage;

  private lastRequestedScreenName?: string;

  private lastRenderRequestId?: string;

  private pendingRefresh?: {
    uri: vscode.Uri;
    cursorOffset?: number;
  };

  private refreshRunning = false;

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
    await this.ensurePanelAndHost(settings);

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

    if (document.languageId !== 'dart') {
      return;
    }

    if (!this.panel || !this.activeDocumentUri) {
      return;
    }

    if (document.uri.fsPath !== this.activeDocumentUri.fsPath) {
      return;
    }

    const editor = vscode.window.activeTextEditor;
    const cursorOffset = editor && editor.document.uri.fsPath === document.uri.fsPath
      ? editor.document.offsetAt(editor.selection.active)
      : undefined;

    this.enqueueRefresh(document.uri, cursorOffset);
  }

  private async handleDidChangeActiveEditor(
    editor: vscode.TextEditor | undefined,
  ): Promise<void> {
    const settings = this.getSettings();
    if (!settings.enabled) {
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

    await this.ensurePanelAndHost(settings);
    if (!this.panel) {
      throw new Error('Preview panel is not available.');
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
    void this.panel.postState('building', `Building preview for ${screen.screenName}...`);

    const result = await generatePreviewJson({
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

    const payload: PreviewRenderMessage = {
      type: 'stac.preview.render',
      screenName: screen.screenName,
      json: result.json,
      sourcePath: result.jsonPath,
      timestamp: new Date().toISOString(),
      requestId: createRenderRequestId(),
    };
    this.lastRequestedScreenName = screen.screenName;
    this.lastRenderRequestId = payload.requestId;

    await this.panel.postRender(payload);
    this.lastRenderMessage = payload;
    await this.panel.postState(
      'ready',
      `Preview payload sent for ${screen.screenName} via ${result.source}.`,
    );
  }

  private async ensurePanelAndHost(settings: PreviewSettings): Promise<void> {
    const host = await this.getOrCreateHostProcess(settings);
    const hostUrl = await host.ensureStarted();
    const hostPort = host.hostPort;

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
    } else {
      this.panel.updateHostUrl(hostUrl);
      this.panel.reveal();
    }
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
