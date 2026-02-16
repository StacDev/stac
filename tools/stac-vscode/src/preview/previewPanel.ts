import * as vscode from 'vscode';
import type {
  PreviewRenderMessage,
  PreviewState,
  PreviewThemesMessage,
  PreviewWebviewMessage,
} from './types';

export class PreviewPanel implements vscode.Disposable {
  private panel: vscode.WebviewPanel;

  private readonly disposables: vscode.Disposable[] = [];

  private hostUrl: string;

  constructor(
    extensionUri: vscode.Uri,
    hostUrl: string,
    hostPort: number,
  ) {
    this.hostUrl = hostUrl;
    this.panel = vscode.window.createWebviewPanel(
      'stacPreview',
      'Stac Preview',
      { viewColumn: vscode.ViewColumn.Beside, preserveFocus: true },
      {
        enableScripts: true,
        retainContextWhenHidden: true,
        localResourceRoots: [extensionUri],
        portMapping: [
          {
            webviewPort: hostPort,
            extensionHostPort: hostPort,
          },
        ],
      },
    );
    this.panel.webview.html = getWebviewHtml(this.panel.webview, this.hostUrl);
    this.panel.iconPath = {
      light: vscode.Uri.joinPath(extensionUri, 'media', 'preview-icon-light.svg'),
      dark: vscode.Uri.joinPath(extensionUri, 'media', 'preview-icon.svg'),
    };
    this.disposables.push(this.panel);
  }

  updateHostUrl(hostUrl: string) {
    if (this.hostUrl === hostUrl) {
      return;
    }

    this.hostUrl = hostUrl;
    this.panel.webview.html = getWebviewHtml(this.panel.webview, this.hostUrl);
  }

  isVisible(): boolean {
    return this.panel.visible;
  }

  reveal() {
    this.panel.reveal(vscode.ViewColumn.Beside, true);
  }

  onDidDispose(listener: () => void): vscode.Disposable {
    return this.panel.onDidDispose(listener, undefined, this.disposables);
  }

  onDidReceiveMessage(
    listener: (message: PreviewWebviewMessage) => void,
  ): vscode.Disposable {
    return this.panel.webview.onDidReceiveMessage(
      (message: PreviewWebviewMessage) => listener(message),
      undefined,
      this.disposables,
    );
  }

  onDidChangeViewState(
    listener: (e: vscode.WebviewPanelOnDidChangeViewStateEvent) => void,
  ): vscode.Disposable {
    return this.panel.onDidChangeViewState(listener, undefined, this.disposables);
  }

  postRender(message: PreviewRenderMessage): Thenable<boolean> {
    return this.panel.webview.postMessage(message);
  }

  postState(state: PreviewState, detail: string): Thenable<boolean> {
    return this.panel.webview.postMessage({
      type: 'stac.preview.state',
      state,
      message: detail,
    });
  }

  postThemes(
    themes: Array<{ themeName: string }>,
    selectedThemeName: string | null,
  ): Thenable<boolean> {
    return this.panel.webview.postMessage({
      type: 'stac.preview.themes',
      themes,
      selectedThemeName,
    } as PreviewThemesMessage & { selectedThemeName: string | null });
  }

  postMessage(message: unknown): Thenable<boolean> {
    return this.panel.webview.postMessage(message);
  }

  dispose() {
    while (this.disposables.length > 0) {
      const item = this.disposables.pop();
      item?.dispose();
    }
  }
}

function getWebviewHtml(webview: vscode.Webview, hostUrl: string): string {
  const csp = webview.cspSource;
  const escapedHostUrl = escapeHtml(hostUrl);

  return `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta
    http-equiv="Content-Security-Policy"
    content="default-src 'none'; frame-src http://localhost:* http://127.0.0.1:*; style-src ${csp} 'unsafe-inline'; script-src ${csp} 'unsafe-inline';"
  />
  <title>Stac Preview</title>
  <style>
    :root { color-scheme: light dark; }
    body {
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      height: 100vh;
      font-family: ui-sans-serif, system-ui, -apple-system, sans-serif;
      background: var(--vscode-editor-background);
      color: var(--vscode-editor-foreground);
    }
    .header { flex-shrink: 0; position: relative; }
    .status {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 10px;
      font-size: 12px;
      border-bottom: 1px solid var(--vscode-editorWidget-border);
      background: var(--vscode-sideBar-background);
    }
    .status span {
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }
    #screenName {
      font-weight: 600;
      flex-shrink: 0;
    }
    #statusText {
      flex: 1;
      opacity: 0.7;
    }
    .status .right {
      display: flex;
      align-items: center;
      gap: 6px;
      flex-shrink: 0;
      margin-left: auto;
    }
    .status button {
      border: 1px solid var(--vscode-button-border, transparent);
      background: var(--vscode-button-secondaryBackground);
      color: var(--vscode-button-secondaryForeground);
      padding: 3px 8px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 11px;
    }
    .device-toggle {
      display: flex;
      gap: 2px;
      border: 1px solid var(--vscode-input-border, transparent);
      border-radius: 4px;
      overflow: hidden;
    }
    .device-toggle button {
      border: none;
      border-radius: 0;
      padding: 3px 6px;
      display: flex;
      align-items: center;
      justify-content: center;
      opacity: 0.6;
    }
    .device-toggle button.active {
      background: var(--vscode-button-background);
      color: var(--vscode-button-foreground);
      opacity: 1;
    }
    .device-toggle button svg {
      width: 14px;
      height: 14px;
      fill: currentColor;
    }
    #themeSelect {
      border: 1px solid var(--vscode-input-border, transparent);
      background: var(--vscode-input-background);
      color: var(--vscode-input-foreground);
      padding: 2px 6px;
      border-radius: 4px;
      font-size: 11px;
      max-width: 160px;
      cursor: pointer;
    }
    #themeSelect:empty, #themeSelect.hidden { display: none; }
    .progress-bar {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      height: 4px;
      overflow: hidden;
      opacity: 0;
      transition: opacity 0.2s;
    }
    .progress-bar.active { opacity: 1; }
    .progress-bar::after {
      content: '';
      display: block;
      width: 40%;
      height: 100%;
      background: var(--vscode-progressBar-background, #0078d4);
      animation: indeterminate 1.4s ease-in-out infinite;
    }
    @keyframes indeterminate {
      0%   { transform: translateX(-100%); }
      100% { transform: translateX(350%); }
    }
    iframe {
      border: 0;
      background: var(--vscode-editor-background);
      height: 100%;
    }
    .frame-wrap {
      flex: 1;
      display: flex;
      justify-content: center;
      overflow: hidden;
      background: var(--vscode-editor-background);
    }
    .frame-wrap[data-device="web"] iframe {
      width: 100%;
      max-width: 100%;
    }
    .frame-wrap[data-device="web"] .mobile-frame {
      width: 100%;
      height: 100%;
    }
    .mobile-frame {}
    .frame-wrap[data-device="android"] .mobile-frame,
    .frame-wrap[data-device="ios"] .mobile-frame {
      width: 390px;
      height: 844px;
      max-width: 100%;
      margin-top: 32px;
      border: 1px solid rgba(136, 136, 136, 0.4);
      border-radius: 8px;
      overflow: hidden;
    }
    .frame-wrap[data-device="android"] iframe,
    .frame-wrap[data-device="ios"] iframe {
      width: 100%;
      height: 100%;
    }
  </style>
</head>
<body>
  <div class="header">
    <div class="status">
      <span id="screenName"></span>
      <span id="statusText">Starting preview host...</span>
      <div class="right">
        <div class="device-toggle">
          <button id="btnAndroid" type="button" title="Android">
            <svg viewBox="0 0 24 24"><path d="M6 18c0 .55.45 1 1 1h1v3.5c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5V19h2v3.5c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5V19h1c.55 0 1-.45 1-1V8H6v10zM3.5 8C2.67 8 2 8.67 2 9.5v7c0 .83.67 1.5 1.5 1.5S5 17.33 5 16.5v-7C5 8.67 4.33 8 3.5 8zm17 0c-.83 0-1.5.67-1.5 1.5v7c0 .83.67 1.5 1.5 1.5s1.5-.67 1.5-1.5v-7c0-.83-.67-1.5-1.5-1.5zm-4.97-5.84l1.3-1.3c.2-.2.2-.51 0-.71-.2-.2-.51-.2-.71 0l-1.48 1.48A5.84 5.84 0 0 0 12 1c-.96 0-1.86.23-2.66.63L7.85.15c-.2-.2-.51-.2-.71 0-.2.2-.2.51 0 .71l1.31 1.31A5.983 5.983 0 0 0 6 7h12c0-2.21-1.2-4.15-2.97-5.84zM10 5H9V4h1v1zm5 0h-1V4h1v1z"/></svg>
          </button>
          <button id="btnIos" type="button" title="iOS">
            <svg viewBox="0 0 24 24"><path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.8-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M13 3.5c.73-.83 1.94-1.46 2.94-1.5.13 1.17-.34 2.35-1.04 3.19-.69.85-1.83 1.51-2.95 1.42-.15-1.15.41-2.35 1.05-3.11z"/></svg>
          </button>
          <button id="btnWeb" type="button" class="active" title="Web">
            <svg viewBox="0 0 24 24"><path d="M3 4h18a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1zm1 2v12h16V6H4z"/></svg>
          </button>
        </div>
        <select id="themeSelect" class="hidden" title="Theme">
          <option value="">No Theme</option>
        </select>
        <button id="retryButton" type="button">Refresh</button>
      </div>
    </div>
    <div id="progressBar" class="progress-bar"></div>
  </div>
  <div id="frameWrap" class="frame-wrap" data-device="web">
    <div class="mobile-frame">
      <iframe id="previewFrame" src="${escapedHostUrl}"></iframe>
    </div>
  </div>

  <script>
    const vscode = acquireVsCodeApi();
    const frame = document.getElementById('previewFrame');
    const statusText = document.getElementById('statusText');
    const screenNameEl = document.getElementById('screenName');
    const retryButton = document.getElementById('retryButton');
    const progressBar = document.getElementById('progressBar');
    const themeSelect = document.getElementById('themeSelect');
    const frameWrap = document.getElementById('frameWrap');
    const btnAndroid = document.getElementById('btnAndroid');
    const btnIos = document.getElementById('btnIos');
    const btnWeb = document.getElementById('btnWeb');
    const hostOrigin = new URL(frame.src).origin;
    const targetOrigin = hostOrigin;
    const hostEventTypes = new Set([
      'stac.preview.ready',
      'stac.preview.rendered',
      'stac.preview.error',
    ]);
    let latestRenderMessage = null;
    let hostReady = false;
    let deliveryTimer = null;
    let latestDeliveredRequestId = null;
    let currentDevice = 'web';

    retryButton.addEventListener('click', () => {
      vscode.postMessage({ type: 'stac.preview.retry' });
    });

    themeSelect.addEventListener('change', () => {
      const value = themeSelect.value || null;
      vscode.postMessage({ type: 'stac.preview.selectTheme', themeName: value });
    });

    function setDevice(device) {
      currentDevice = device;
      frameWrap.setAttribute('data-device', device);
      btnAndroid.classList.toggle('active', device === 'android');
      btnIos.classList.toggle('active', device === 'ios');
      btnWeb.classList.toggle('active', device === 'web');
      // Send platform to the Flutter host
      const platformMap = { android: 'android', ios: 'ios', web: 'web' };
      if (frame.contentWindow) {
        try {
          frame.contentWindow.postMessage(
            { type: 'stac.preview.setPlatform', platform: platformMap[device] || 'web' },
            '*',
          );
        } catch (_) {}
      }
    }

    btnAndroid.addEventListener('click', () => setDevice('android'));
    btnIos.addEventListener('click', () => setDevice('ios'));
    btnWeb.addEventListener('click', () => setDevice('web'));

    frame.addEventListener('load', () => {
      hostReady = false;
      latestDeliveredRequestId = null;
      if (latestRenderMessage) {
        startDelivery();
      }
    });

    function postRenderToFrame(message) {
      if (!message || !frame.contentWindow) return;
      try {
        // Use '*' because VS Code's webview port-mapping proxies the
        // iframe through an internal origin that differs from the
        // original http://127.0.0.1:PORT URL.
        frame.contentWindow.postMessage(message, '*');
      } catch {
        frame.contentWindow.postMessage(JSON.stringify(message), '*');
      }
    }

    function stopDelivery() {
      if (deliveryTimer) {
        clearInterval(deliveryTimer);
        deliveryTimer = null;
      }
    }

    function startDelivery() {
      if (!latestRenderMessage) return;
      stopDelivery();
      postRenderToFrame(latestRenderMessage);
      deliveryTimer = setInterval(() => {
        if (!latestRenderMessage) {
          stopDelivery();
          return;
        }
        postRenderToFrame(latestRenderMessage);
      }, hostReady ? 1000 : 500);
    }

    function normalizeMessageData(data) {
      if (typeof data === 'string') {
        try {
          return JSON.parse(data);
        } catch {
          return undefined;
        }
      }

      if (data && typeof data === 'object') {
        return data;
      }

      return undefined;
    }

    function markDelivered(message) {
      const requestId = typeof message.requestId === 'string'
        ? message.requestId
        : undefined;
      if (!requestId) {
        stopDelivery();
        return;
      }
      latestDeliveredRequestId = requestId;
      if (
        latestRenderMessage
        && typeof latestRenderMessage.requestId === 'string'
        && latestRenderMessage.requestId === requestId
      ) {
        stopDelivery();
      }
    }

    window.addEventListener('message', (event) => {
      const normalized = normalizeMessageData(event.data);
      if (
        normalized
        && typeof normalized.type === 'string'
        && hostEventTypes.has(normalized.type)
      ) {
        const hostMessage = normalized;
        if (hostMessage.type === 'stac.preview.ready') {
          hostReady = true;
          // Always re-deliver when the Flutter app signals ready.
          // On cold start the app takes seconds to initialise after
          // the iframe 'load' event, so earlier postMessage calls
          // are silently lost.  Re-sending here guarantees the first
          // render is received.
          latestDeliveredRequestId = null;
          if (latestRenderMessage) {
            startDelivery();
          }
        }
        if (hostMessage.type === 'stac.preview.rendered') {
          markDelivered(hostMessage);
        }
        vscode.postMessage(hostMessage);
        return;
      }

      const message = normalized;
      if (!message || typeof message !== 'object') {
        return;
      }

      if (message.type === 'stac.preview.state') {
        statusText.textContent = message.message || 'Preview update';
        const loading = message.state === 'building' || message.state === 'loading';
        progressBar.classList.toggle('active', loading);
        return;
      }

      if (message.type === 'stac.preview.themes') {
        const themes = message.themes || [];
        // Clear existing options (keep first "No Theme" option)
        while (themeSelect.options.length > 1) {
          themeSelect.remove(1);
        }
        for (const t of themes) {
          const opt = document.createElement('option');
          opt.value = t.themeName;
          opt.textContent = t.themeName;
          themeSelect.appendChild(opt);
        }
        // Show/hide dropdown
        themeSelect.classList.toggle('hidden', themes.length === 0);
        // Restore selection (or reset to "No Theme")
        themeSelect.value = message.selectedThemeName || '';
        return;
      }

      if (message.type === 'stac.preview.render') {
        latestRenderMessage = message;
        if (message.screenName) {
          screenNameEl.textContent = message.screenName;
        }
        if (latestDeliveredRequestId && message.requestId === latestDeliveredRequestId) {
          return;
        }
        startDelivery();
      }

      if (message.type === 'stac.preview.loadFonts') {
        postRenderToFrame(message);
      }
    });

    vscode.postMessage({ type: 'stac.preview.webview.ready' });
  </script>
</body>
</html>`;
}

function escapeHtml(value: string): string {
  return value
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');
}
