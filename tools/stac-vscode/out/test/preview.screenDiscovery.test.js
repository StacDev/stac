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
const screenDiscovery_1 = require("../preview/screenDiscovery");
function createMockDocument(text) {
    const lines = text.split('\n');
    function offsetAt(position) {
        let offset = 0;
        for (let line = 0; line < position.line; line += 1) {
            offset += lines[line].length + 1;
        }
        return offset + position.character;
    }
    function positionAt(offset) {
        let remaining = offset;
        for (let line = 0; line < lines.length; line += 1) {
            const lineLength = lines[line].length;
            if (remaining <= lineLength) {
                return new vscode.Position(line, remaining);
            }
            remaining -= lineLength + 1;
        }
        return new vscode.Position(lines.length - 1, lines.at(-1)?.length ?? 0);
    }
    return {
        languageId: 'dart',
        uri: vscode.Uri.parse('untitled:preview_test.dart'),
        getText: () => text,
        lineAt: (line) => ({ text: lines[line] }),
        offsetAt,
        positionAt,
    };
}
suite('Preview screen discovery', () => {
    test('detects multiple @StacScreen declarations', () => {
        const source = [
            '@StacScreen(screenName: "home")',
            'StacWidget homeScreen() {',
            "  return StacText(data: 'home');",
            '}',
            '',
            '@StacScreen(screenName: "details")',
            'StacWidget detailsScreen() {',
            "  return StacText(data: 'details');",
            '}',
        ].join('\n');
        const screens = (0, screenDiscovery_1.discoverScreens)(createMockDocument(source));
        assert.strictEqual(screens.length, 2);
        assert.strictEqual(screens[0].screenName, 'home');
        assert.strictEqual(screens[1].functionName, 'detailsScreen');
        assert.ok(screens.every((screen) => screen.runnerSupported));
    });
    test('marks parameterized screen as runner unsupported', () => {
        const source = [
            '@StacScreen(screenName: "profile")',
            'StacWidget profileScreen(String userId) {',
            "  return StacText(data: userId);",
            '}',
        ].join('\n');
        const [screen] = (0, screenDiscovery_1.discoverScreens)(createMockDocument(source));
        assert.ok(screen);
        assert.strictEqual(screen.hasParameters, true);
        assert.strictEqual(screen.runnerSupported, false);
    });
    test('defaults to the first screen when cursor is not provided', () => {
        const source = [
            '@StacScreen(screenName: "first")',
            'StacWidget firstScreen() {',
            "  return StacText(data: 'first');",
            '}',
            '',
            '@StacScreen(screenName: "second")',
            'StacWidget secondScreen() {',
            "  return StacText(data: 'second');",
            '}',
        ].join('\n');
        const document = createMockDocument(source);
        const screens = (0, screenDiscovery_1.discoverScreens)(document);
        const selected = (0, screenDiscovery_1.chooseScreenDescriptor)(screens);
        assert.ok(selected);
        assert.strictEqual(selected?.screenName, 'first');
    });
    test('chooses screen containing cursor offset', () => {
        const source = [
            '@StacScreen(screenName: "first")',
            'StacWidget firstScreen() {',
            "  return StacText(data: 'first');",
            '}',
            '',
            '@StacScreen(screenName: "second")',
            'StacWidget secondScreen() {',
            "  return StacText(data: 'second');",
            '}',
        ].join('\n');
        const document = createMockDocument(source);
        const screens = (0, screenDiscovery_1.discoverScreens)(document);
        const cursorOffset = source.indexOf("data: 'second'");
        const selected = (0, screenDiscovery_1.chooseScreenDescriptor)(screens, cursorOffset);
        assert.ok(selected);
        assert.strictEqual(selected?.screenName, 'second');
    });
});
//# sourceMappingURL=preview.screenDiscovery.test.js.map