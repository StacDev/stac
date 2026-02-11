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
exports.activate = activate;
exports.deactivate = deactivate;
const node_child_process_1 = require("node:child_process");
const node_util_1 = require("node:util");
const path = __importStar(require("node:path"));
const vscode = __importStar(require("vscode"));
const constants_1 = require("./core/constants");
const stacSnippetCompletionProvider_1 = require("./snippets/stacSnippetCompletionProvider");
const applyWrapEdit_1 = require("./wrap/applyWrapEdit");
const findWrappableExpression_1 = require("./wrap/findWrappableExpression");
const pickCustomWrapper_1 = require("./wrap/pickCustomWrapper");
const stacWrapCodeActionProvider_1 = require("./wrap/stacWrapCodeActionProvider");
const wrapperTemplates_1 = require("./wrap/wrapperTemplates");
const execFileAsync = (0, node_util_1.promisify)(node_child_process_1.execFile);
function activate(context) {
    registerWrapCodeActions(context);
    registerSnippets(context);
    registerWrapCommands(context);
    registerRegenerateCatalogCommand(context);
}
function registerWrapCodeActions(context) {
    const provider = new stacWrapCodeActionProvider_1.StacWrapCodeActionProvider();
    context.subscriptions.push(vscode.languages.registerCodeActionsProvider('dart', provider, {
        providedCodeActionKinds: [vscode.CodeActionKind.QuickFix],
    }));
}
function registerSnippets(context) {
    const provider = new stacSnippetCompletionProvider_1.StacSnippetCompletionProvider();
    context.subscriptions.push(vscode.languages.registerCompletionItemProvider('dart', provider, '.'));
}
function registerWrapCommands(context) {
    const commandByPreset = {
        StacContainer: constants_1.COMMANDS.wrapWithStacContainer,
        StacPadding: constants_1.COMMANDS.wrapWithStacPadding,
        StacCenter: constants_1.COMMANDS.wrapWithStacCenter,
        StacAlign: constants_1.COMMANDS.wrapWithStacAlign,
        StacSizedBox: constants_1.COMMANDS.wrapWithStacSizedBox,
        StacExpanded: constants_1.COMMANDS.wrapWithStacExpanded,
    };
    for (const preset of constants_1.WRAP_PRESET_IDS) {
        const command = commandByPreset[preset];
        const template = (0, wrapperTemplates_1.getPresetWrapper)(preset);
        if (!template) {
            continue;
        }
        const disposable = vscode.commands.registerCommand(command, async (uri, range) => {
            const contextTarget = await resolveWrapTarget(uri, range);
            if (!contextTarget) {
                return;
            }
            if (contextTarget.target.widgetName === template.wrapperName) {
                return;
            }
            await (0, applyWrapEdit_1.applyWrapWorkspaceEdit)(contextTarget.document, contextTarget.target, template);
        });
        context.subscriptions.push(disposable);
    }
    const customDisposable = vscode.commands.registerCommand(constants_1.COMMANDS.wrapWithStacWidget, async (uri, range) => {
        const contextTarget = await resolveWrapTarget(uri, range);
        if (!contextTarget) {
            return;
        }
        const template = await (0, pickCustomWrapper_1.pickCustomWrapperTemplate)();
        if (!template) {
            return;
        }
        if (contextTarget.target.widgetName === template.wrapperName) {
            return;
        }
        await (0, applyWrapEdit_1.applyWrapWorkspaceEdit)(contextTarget.document, contextTarget.target, template);
    });
    context.subscriptions.push(customDisposable);
}
async function resolveWrapTarget(uri, range) {
    if (uri) {
        const document = await vscode.workspace.openTextDocument(uri);
        const targetRange = range ?? new vscode.Range(new vscode.Position(0, 0), new vscode.Position(0, 0));
        const target = (0, findWrappableExpression_1.findWrappableExpression)(document, targetRange);
        if (!target) {
            return undefined;
        }
        return { document, target };
    }
    const editor = vscode.window.activeTextEditor;
    if (!editor) {
        return undefined;
    }
    const target = (0, findWrappableExpression_1.findWrappableExpression)(editor.document, editor.selection);
    if (!target) {
        return undefined;
    }
    return { document: editor.document, target };
}
function registerRegenerateCatalogCommand(context) {
    const disposable = vscode.commands.registerCommand(constants_1.COMMANDS.regenerateCatalog, async () => {
        const scriptPath = path.join(context.extensionPath, 'scripts', 'generate-catalog.mjs');
        try {
            await execFileAsync(process.execPath, [scriptPath], {
                cwd: context.extensionPath,
            });
            void vscode.window.showInformationMessage('Stac catalog regenerated.');
        }
        catch (error) {
            void vscode.window.showErrorMessage(`Failed to regenerate Stac catalog: ${String(error)}`);
        }
    });
    context.subscriptions.push(disposable);
}
function deactivate() { }
//# sourceMappingURL=extension.js.map