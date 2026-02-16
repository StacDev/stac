export type PreviewJsonStrategy = 'runnerThenBuild' | 'runnerOnly' | 'buildOnly';

export type PreviewState = 'starting' | 'building' | 'ready' | 'rendered' | 'error';

export interface PreviewRenderMessage {
  type: 'stac.preview.render';
  screenName: string;
  json: Record<string, unknown>;
  theme?: Record<string, unknown>;
  sourcePath: string;
  timestamp: string;
  requestId: string;
}

export interface PreviewPanelStateMessage {
  type: 'stac.preview.state';
  state: PreviewState;
  message: string;
}

export interface PreviewRetryMessage {
  type: 'stac.preview.retry';
}

export interface PreviewReadyEvent {
  type: 'stac.preview.ready';
  message?: string;
  requestId?: string;
}

export interface PreviewRenderedEvent {
  type: 'stac.preview.rendered';
  message?: string;
  requestId?: string;
  screenName?: string;
}

export interface PreviewErrorEvent {
  type: 'stac.preview.error';
  message?: string;
  requestId?: string;
}

export interface PreviewLogEvent {
  type: 'stac.preview.log';
  message: string;
}

export interface PreviewWebviewReadyEvent {
  type: 'stac.preview.webview.ready';
}

export interface PreviewThemesMessage {
  type: 'stac.preview.themes';
  themes: Array<{ themeName: string }>;
}

export interface PreviewSelectThemeMessage {
  type: 'stac.preview.selectTheme';
  themeName: string | null;
}

export type PreviewOutboundMessage =
  | PreviewReadyEvent
  | PreviewRenderedEvent
  | PreviewErrorEvent
  | PreviewLogEvent;

export type PreviewWebviewMessage =
  | PreviewOutboundMessage
  | PreviewRetryMessage
  | PreviewWebviewReadyEvent
  | PreviewSelectThemeMessage;

export interface ScreenDescriptor {
  screenName: string;
  functionName: string;
  annotationOffset: number;
  functionOffset: number;
  functionEndOffset: number;
  hasParameters: boolean;
  topLevel: boolean;
  runnerSupported: boolean;
}

export interface JsonGenerationResult {
  source: 'runner' | 'build';
  json: Record<string, unknown>;
  jsonPath: string;
}

export interface ThemeDescriptor {
  themeName: string;
  filePath: string;
  functionOrGetterName: string;
  isGetter: boolean;
  topLevel: boolean;
}
