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
};
exports.SETTINGS = {
    enableWrapQuickFix: 'stacVscode.enableWrapQuickFix',
    wrapPresets: 'stacVscode.wrapPresets',
    enableSnippets: 'stacVscode.enableSnippets',
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