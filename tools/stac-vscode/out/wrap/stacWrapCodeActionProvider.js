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
exports.StacWrapCodeActionProvider = void 0;
const vscode = __importStar(require("vscode"));
const constants_1 = require("../core/constants");
const findWrappableExpression_1 = require("./findWrappableExpression");
const wrapperTemplates_1 = require("./wrapperTemplates");
const WRAP_COMMANDS = {
    StacContainer: constants_1.COMMANDS.wrapWithStacContainer,
    StacPadding: constants_1.COMMANDS.wrapWithStacPadding,
    StacCenter: constants_1.COMMANDS.wrapWithStacCenter,
    StacAlign: constants_1.COMMANDS.wrapWithStacAlign,
    StacSizedBox: constants_1.COMMANDS.wrapWithStacSizedBox,
    StacExpanded: constants_1.COMMANDS.wrapWithStacExpanded,
};
function getEnabledPresetIds() {
    const config = vscode.workspace.getConfiguration();
    const configured = config.get(constants_1.SETTINGS.wrapPresets, [...constants_1.WRAP_PRESET_IDS]);
    const allowed = new Set(constants_1.WRAP_PRESET_IDS);
    return configured.filter((item) => allowed.has(item));
}
class StacWrapCodeActionProvider {
    provideCodeActions(document, range) {
        if (document.languageId !== 'dart') {
            return [];
        }
        const config = vscode.workspace.getConfiguration();
        const enabled = config.get(constants_1.SETTINGS.enableWrapQuickFix, true);
        if (!enabled) {
            return [];
        }
        const target = (0, findWrappableExpression_1.findWrappableExpression)(document, range);
        if (!target) {
            return [];
        }
        const actions = [];
        for (const presetId of getEnabledPresetIds()) {
            if (target.widgetName === presetId) {
                continue;
            }
            const template = (0, wrapperTemplates_1.getPresetWrapper)(presetId);
            if (!template) {
                continue;
            }
            const action = new vscode.CodeAction(template.title, vscode.CodeActionKind.QuickFix);
            action.command = {
                command: WRAP_COMMANDS[presetId],
                title: template.title,
                arguments: [document.uri, target.range],
            };
            actions.push(action);
        }
        const customAction = new vscode.CodeAction('Wrap with Stac widget...', vscode.CodeActionKind.QuickFix);
        customAction.command = {
            command: constants_1.COMMANDS.wrapWithStacWidget,
            title: 'Wrap with Stac widget...',
            arguments: [document.uri, target.range],
        };
        actions.push(customAction);
        return actions;
    }
}
exports.StacWrapCodeActionProvider = StacWrapCodeActionProvider;
//# sourceMappingURL=stacWrapCodeActionProvider.js.map