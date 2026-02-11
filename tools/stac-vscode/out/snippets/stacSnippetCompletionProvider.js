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
exports.StacSnippetCompletionProvider = void 0;
const vscode = __importStar(require("vscode"));
const constants_1 = require("../core/constants");
const isStacDslDocument_1 = require("../core/isStacDslDocument");
const snippetCatalog_1 = require("../generated/snippetCatalog");
const STAC_PREFIX_REGEX = /(?:^|[^A-Za-z0-9_.-])(stac(?:\.[A-Za-z0-9_.-]*)?)$/;
class StacSnippetCompletionProvider {
    provideCompletionItems(document, position) {
        if (document.languageId !== 'dart') {
            return [];
        }
        const config = vscode.workspace.getConfiguration();
        if (!config.get(constants_1.SETTINGS.enableSnippets, true)) {
            return [];
        }
        if (!(0, isStacDslDocument_1.isStacDslDocument)(document)) {
            return [];
        }
        const linePrefix = document.lineAt(position.line).text.slice(0, position.character);
        const prefixMatch = linePrefix.match(STAC_PREFIX_REGEX);
        if (!prefixMatch) {
            return [];
        }
        const typedPrefix = prefixMatch[1] ?? 'stac';
        const wordRange = document.getWordRangeAtPosition(position, /[A-Za-z0-9_.-]+/);
        const replaceRange = wordRange ?? new vscode.Range(position, position);
        return snippetCatalog_1.snippetCatalog
            .filter((entry) => entry.prefix.startsWith(typedPrefix))
            .map((entry) => {
            const item = new vscode.CompletionItem(entry.prefix, vscode.CompletionItemKind.Snippet);
            item.detail = entry.description;
            item.documentation = new vscode.MarkdownString(`**${entry.label}**`);
            item.insertText = new vscode.SnippetString(entry.body.join('\n'));
            item.filterText = entry.prefix;
            item.sortText = entry.prefix;
            item.range = replaceRange;
            return item;
        });
    }
}
exports.StacSnippetCompletionProvider = StacSnippetCompletionProvider;
//# sourceMappingURL=stacSnippetCompletionProvider.js.map