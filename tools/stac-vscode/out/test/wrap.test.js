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
const applyWrapEdit_1 = require("../wrap/applyWrapEdit");
const findWrappableExpression_1 = require("../wrap/findWrappableExpression");
const widgetCatalog_1 = require("../generated/widgetCatalog");
const pickCustomWrapper_1 = require("../wrap/pickCustomWrapper");
const wrapperTemplates_1 = require("../wrap/wrapperTemplates");
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
        uri: vscode.Uri.parse('untitled:mock.dart'),
        getText: (range) => {
            if (!range) {
                return text;
            }
            const start = offsetAt(range.start);
            const end = offsetAt(range.end);
            return text.slice(start, end);
        },
        lineAt: (line) => ({ text: lines[line] }),
        offsetAt,
        positionAt,
    };
}
suite('Wrap utilities', () => {
    test('finds nearest Stac widget at cursor', () => {
        const source = "final widget = StacPadding(child: StacText(data: 'Hello'));";
        const document = createMockDocument(source);
        const cursorOffset = source.indexOf('StacText') + 5;
        const cursorPosition = document.positionAt(cursorOffset);
        const target = (0, findWrappableExpression_1.findWrappableExpression)(document, new vscode.Range(cursorPosition, cursorPosition));
        assert.ok(target);
        assert.strictEqual(target?.widgetName, 'StacText');
        assert.strictEqual(target?.expression, "StacText(data: 'Hello')");
    });
    test('returns undefined when selection is not on stac widget', () => {
        const source = "final widget = Text('Hello');";
        const document = createMockDocument(source);
        const cursorOffset = source.indexOf('Text') + 2;
        const cursorPosition = document.positionAt(cursorOffset);
        const target = (0, findWrappableExpression_1.findWrappableExpression)(document, new vscode.Range(cursorPosition, cursorPosition));
        assert.strictEqual(target, undefined);
    });
    test('builds wrapped expression with child property', () => {
        const wrapped = (0, applyWrapEdit_1.buildWrappedExpression)({
            wrapperName: 'StacContainer',
            title: 'Wrap with StacContainer',
            childMode: 'child',
            beforeChildArgs: [],
        }, "StacText(data: 'Hello')", '  ', '  ');
        assert.strictEqual(wrapped, "StacContainer(\n    child: StacText(data: 'Hello'),\n  )");
    });
    test('builds wrapped expression with children property', () => {
        const wrapped = (0, applyWrapEdit_1.buildWrappedExpression)({
            wrapperName: 'StacColumn',
            title: 'Wrap with StacColumn',
            childMode: 'children',
            beforeChildArgs: [],
        }, "StacText(data: 'Hello')", '', '  ');
        assert.strictEqual(wrapped, "StacColumn(\n  children: [\n    StacText(data: 'Hello'),\n  ],\n)");
    });
    test('custom wrapper validator accepts and rejects correctly', () => {
        assert.strictEqual((0, pickCustomWrapper_1.validateCustomWrapperName)('StacColumn'), undefined);
        assert.ok((0, pickCustomWrapper_1.validateCustomWrapperName)('Column'));
        assert.ok((0, pickCustomWrapper_1.validateCustomWrapperName)('StacText'));
        assert.ok((0, pickCustomWrapper_1.validateCustomWrapperName)('StacUnknownWidget'));
    });
    test('template generation chooses children mode when available', () => {
        const widget = widgetCatalog_1.widgetCatalogByClass.get('StacColumn');
        assert.ok(widget);
        const template = (0, wrapperTemplates_1.templateFromWidgetCatalog)(widget);
        assert.ok(template);
        assert.strictEqual(template?.childMode, 'children');
    });
});
//# sourceMappingURL=wrap.test.js.map