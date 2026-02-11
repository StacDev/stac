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
const SIMPLE_SNIPPETS = [
    {
        prefix: 'stac screen',
        description: 'Create a new Stac screen',
        body: [
            "import 'package:stac_core/stac_core.dart';",
            '',
            '@StacScreen(screenName: "${1:hello_world}")',
            'StacWidget ${2:helloWorld}() {',
            '  return StacScaffold(',
            '    body: StacAlign(',
            '      alignment: StacAlignmentDirectional.center,',
            '      child: StacPadding(',
            '        padding: StacEdgeInsets.all(8),',
            "        child: StacCenter(child: StacText(data: '${3:Hello, world!}')),",
            '      ),',
            '    ),',
            '  );',
            '}',
        ],
    },
    {
        prefix: 'stac theme',
        description: 'Create a new Stac theme',
        body: [
            "import 'package:stac_core/stac_core.dart';",
            '',
            '@StacThemeRef(name: "${1:finstac_light}")',
            'StacTheme get ${2:finstacLightTheme} => StacTheme(',
            '  brightness: StacBrightness.light,',
            '  colorScheme: const StacColorScheme(',
            '    brightness: StacBrightness.light,',
            '    // Core brand colors',
            "    primary: '#202021',",
            "    onPrimary: '#FFFFFF',",
            '',
            "    secondary: '#1DA08A',",
            "    onSecondary: '#FFFFFF',",
            '',
            "    tertiary: '#1E56A9',",
            "    onTertiary: '#FFFFFF',",
            '',
            '    // Surfaces',
            "    surface: '#FFFFFF',",
            "    onSurface: '#202021',",
            "    surfaceBright: '#F6F7F8',",
            '',
            '    // On surface variant (60% primary)',
            "    onSurfaceVariant: '#99202021',",
            '',
            '    // Error colors',
            "    error: '#FD1717',",
            "    onError: '#FFFFFF',",
            '',
            '    // Outlines',
            "    outline: '#1F202021', // 12% primary",
            "    outlineVariant: '#2E202021', // 18% primary",
            '  ),',
            '  useMaterial3: true,',
            ');',
        ],
    },
];
const STAC_SNIPPET_QUERY_REGEX = /(?:^|\s)(stac(?:\s+[a-z]*)?)$/i;
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
        const match = linePrefix.match(STAC_SNIPPET_QUERY_REGEX);
        if (!match) {
            return [];
        }
        const typedPrefix = (match[1] ?? '').toLowerCase();
        const startCharacter = linePrefix.length - typedPrefix.length;
        const replaceRange = new vscode.Range(new vscode.Position(position.line, startCharacter), position);
        return SIMPLE_SNIPPETS
            .filter((entry) => entry.prefix.startsWith(typedPrefix))
            .map((entry) => {
            const item = new vscode.CompletionItem(entry.prefix, vscode.CompletionItemKind.Snippet);
            item.detail = entry.description;
            item.insertText = new vscode.SnippetString(entry.body.join('\n'));
            item.range = replaceRange;
            item.filterText = entry.prefix;
            item.sortText = entry.prefix;
            return item;
        });
    }
}
exports.StacSnippetCompletionProvider = StacSnippetCompletionProvider;
//# sourceMappingURL=stacSnippetCompletionProvider.js.map