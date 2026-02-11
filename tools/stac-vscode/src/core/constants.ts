export const EXTENSION_ID = 'stac-vscode';

export const COMMANDS = {
  wrapWithStacContainer: 'stac-vscode.wrapWithStacContainer',
  wrapWithStacPadding: 'stac-vscode.wrapWithStacPadding',
  wrapWithStacCenter: 'stac-vscode.wrapWithStacCenter',
  wrapWithStacAlign: 'stac-vscode.wrapWithStacAlign',
  wrapWithStacSizedBox: 'stac-vscode.wrapWithStacSizedBox',
  wrapWithStacExpanded: 'stac-vscode.wrapWithStacExpanded',
  wrapWithStacWidget: 'stac-vscode.wrapWithStacWidget',
  regenerateCatalog: 'stac-vscode.regenerateCatalog',
} as const;

export const SETTINGS = {
  enableWrapQuickFix: 'stacVscode.enableWrapQuickFix',
  wrapPresets: 'stacVscode.wrapPresets',
  enableSnippets: 'stacVscode.enableSnippets',
} as const;

export const WRAP_PRESET_IDS = [
  'StacContainer',
  'StacPadding',
  'StacCenter',
  'StacAlign',
  'StacSizedBox',
  'StacExpanded',
] as const;

export type WrapPresetId = (typeof WRAP_PRESET_IDS)[number];
