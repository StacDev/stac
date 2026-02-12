"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.WRAP_PRESET_IDS = exports.SETTINGS = exports.COMMANDS = exports.EXTENSION_ID = void 0;
exports.EXTENSION_ID = 'stac-vscode';
exports.COMMANDS = {
    wrapWithStacContainer: 'stac-vscode.wrapWithStacContainer',
    wrapWithStacPadding: 'stac-vscode.wrapWithStacPadding',
    wrapWithStacCenter: 'stac-vscode.wrapWithStacCenter',
    wrapWithStacAlign: 'stac-vscode.wrapWithStacAlign',
    wrapWithStacSizedBox: 'stac-vscode.wrapWithStacSizedBox',
    wrapWithStacExpanded: 'stac-vscode.wrapWithStacExpanded',
    wrapWithStacWidget: 'stac-vscode.wrapWithStacWidget',
    regenerateCatalog: 'stac-vscode.regenerateCatalog',
    previewOpen: 'stac-vscode.preview.open',
    previewRefresh: 'stac-vscode.preview.refresh',
    previewStop: 'stac-vscode.preview.stop',
    previewSelectScreen: 'stac-vscode.preview.selectScreen',
};
exports.SETTINGS = {
    enableWrapQuickFix: 'stacVscode.enableWrapQuickFix',
    wrapPresets: 'stacVscode.wrapPresets',
    enableSnippets: 'stacVscode.enableSnippets',
    previewEnable: 'stacVscode.preview.enable',
    previewAutoRefreshOnSave: 'stacVscode.preview.autoRefreshOnSave',
    previewJsonStrategy: 'stacVscode.preview.jsonStrategy',
    previewBuildCommand: 'stacVscode.preview.buildCommand',
    previewOutputDirCandidates: 'stacVscode.preview.outputDirCandidates',
    previewHostPort: 'stacVscode.preview.hostPort',
    previewStartupTimeoutMs: 'stacVscode.preview.startupTimeoutMs',
};
exports.WRAP_PRESET_IDS = [
    'StacContainer',
    'StacPadding',
    'StacCenter',
    'StacAlign',
    'StacSizedBox',
    'StacExpanded',
];
//# sourceMappingURL=constants.js.map