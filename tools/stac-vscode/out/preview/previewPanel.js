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
exports.PreviewPanel = void 0;
const vscode = __importStar(require("vscode"));
class PreviewPanel {
    panel;
    disposables = [];
    hostUrl;
    constructor(extensionUri, hostUrl, hostPort) {
        this.hostUrl = hostUrl;
        this.panel = vscode.window.createWebviewPanel('stacPreview', 'Stac Preview', vscode.ViewColumn.Beside, {
            enableScripts: true,
            retainContextWhenHidden: true,
            localResourceRoots: [extensionUri],
            portMapping: [
                {
                    webviewPort: hostPort,
                    extensionHostPort: hostPort,
                },
            ],
        });
        this.panel.webview.html = getWebviewHtml(this.panel.webview, this.hostUrl);
        this.disposables.push(this.panel);
    }
    updateHostUrl(hostUrl) {
        if (this.hostUrl === hostUrl) {
            return;
        }
        this.hostUrl = hostUrl;
        this.panel.webview.html = getWebviewHtml(this.panel.webview, this.hostUrl);
    }
    isVisible() {
        return this.panel.visible;
    }
    reveal() {
        this.panel.reveal(vscode.ViewColumn.Beside, true);
    }
    onDidDispose(listener) {
        return this.panel.onDidDispose(listener, undefined, this.disposables);
    }
    onDidReceiveMessage(listener) {
        return this.panel.webview.onDidReceiveMessage((message) => listener(message), undefined, this.disposables);
    }
    postRender(message) {
        return this.panel.webview.postMessage(message);
    }
    postState(state, detail) {
        return this.panel.webview.postMessage({
            type: 'stac.preview.state',
            state,
            message: detail,
        });
    }
    dispose() {
        while (this.disposables.length > 0) {
            const item = this.disposables.pop();
            item?.dispose();
        }
    }
}
exports.PreviewPanel = PreviewPanel;
function getWebviewHtml(webview, hostUrl) {
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
    .status {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
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
    .status button {
      border: 1px solid var(--vscode-button-border, transparent);
      background: var(--vscode-button-secondaryBackground);
      color: var(--vscode-button-secondaryForeground);
      padding: 3px 8px;
      border-radius: 4px;
      cursor: pointer;
      font-size: 11px;
    }
    iframe {
      width: 100%;
      height: 100%;
      border: 0;
      background: var(--vscode-editor-background);
    }
  </style>
</head>
<body>
  <div class="status">
    <span id="statusText">Starting preview host...</span>
    <button id="retryButton" type="button">Refresh</button>
  </div>
  <iframe id="previewFrame" src="${escapedHostUrl}"></iframe>

  <script>
    const vscode = acquireVsCodeApi();
    const frame = document.getElementById('previewFrame');
    const statusText = document.getElementById('statusText');
    const retryButton = document.getElementById('retryButton');
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

    retryButton.addEventListener('click', () => {
      vscode.postMessage({ type: 'stac.preview.retry' });
    });

    frame.addEventListener('load', () => {
      hostReady = false;
      if (latestRenderMessage) {
        startDelivery();
      }
    });

    function postRenderToFrame(message) {
      if (!message || !frame.contentWindow) return;
      try {
        frame.contentWindow.postMessage(message, targetOrigin);
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
        return;
      }

      if (message.type === 'stac.preview.render') {
        latestRenderMessage = message;
        if (latestDeliveredRequestId && message.requestId === latestDeliveredRequestId) {
          return;
        }
        startDelivery();
      }
    });

    vscode.postMessage({ type: 'stac.preview.webview.ready' });
  </script>
</body>
</html>`;
}
function escapeHtml(value) {
    return value
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&#39;');
}
//# sourceMappingURL=previewPanel.js.map