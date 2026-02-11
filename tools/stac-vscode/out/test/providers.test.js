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
const assert = __importStar(require("assert"));
const vscode = __importStar(require("vscode"));
const stacSnippetCompletionProvider_1 = require("../snippets/stacSnippetCompletionProvider");
const stacWrapCodeActionProvider_1 = require("../wrap/stacWrapCodeActionProvider");
suite('Providers', () => {
    test('quick fix list appears on stac widget expression', async () => {
        const source = "Widget build() => StacText(data: 'Hello');";
        const document = await vscode.workspace.openTextDocument({
            language: 'dart',
            content: source,
        });
        const provider = new stacWrapCodeActionProvider_1.StacWrapCodeActionProvider();
        const offset = source.indexOf('StacText') + 2;
        const position = document.positionAt(offset);
        const range = new vscode.Range(position, position);
        const actions = provider.provideCodeActions(document, range);
        const titles = actions.map((action) => action.title);
        assert.ok(titles.includes('Wrap with StacContainer'));
        assert.ok(titles.includes('Wrap with StacPadding'));
        assert.ok(titles.includes('Wrap with StacCenter'));
        assert.ok(titles.includes('Wrap with StacAlign'));
        assert.ok(titles.includes('Wrap with StacSizedBox'));
        assert.ok(titles.includes('Wrap with StacExpanded'));
        assert.ok(titles.includes('Wrap with Stac widget...'));
    });
    test('quick fix list does not appear on non-stac constructors', async () => {
        const source = "Widget build() => Text('Hello');";
        const document = await vscode.workspace.openTextDocument({
            language: 'dart',
            content: source,
        });
        const provider = new stacWrapCodeActionProvider_1.StacWrapCodeActionProvider();
        const offset = source.indexOf('Text') + 1;
        const position = document.positionAt(offset);
        const range = new vscode.Range(position, position);
        const actions = provider.provideCodeActions(document, range);
        assert.strictEqual(actions.length, 0);
    });
    test('snippet provider only suggests in stac dsl context', async () => {
        const provider = new stacSnippetCompletionProvider_1.StacSnippetCompletionProvider();
        const dslSource = [
            "import 'package:stac_core/stac_core.dart';",
            'void buildStac() {',
            '  stac.',
            '}',
        ].join('\n');
        const dslDocument = await vscode.workspace.openTextDocument({
            language: 'dart',
            content: dslSource,
        });
        const dslPosition = dslDocument.positionAt(dslSource.indexOf('stac.') + 'stac.'.length);
        const dslItems = provider.provideCompletionItems(dslDocument, dslPosition);
        assert.ok(dslItems.some((item) => item.label === 'stac.widget.container'));
        assert.ok(dslItems.some((item) => item.label === 'stac.action.navigate'));
        const plainSource = [
            'void notDsl() {',
            '  stac.',
            '}',
        ].join('\n');
        const plainDocument = await vscode.workspace.openTextDocument({
            language: 'dart',
            content: plainSource,
        });
        const plainPosition = plainDocument.positionAt(plainSource.indexOf('stac.') + 'stac.'.length);
        const plainItems = provider.provideCompletionItems(plainDocument, plainPosition);
        assert.strictEqual(plainItems.length, 0);
    });
});
//# sourceMappingURL=providers.test.js.map