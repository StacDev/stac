import * as assert from 'assert';
import * as vscode from 'vscode';
import { findChildExpression, createRemoveWidgetEdit } from '../wrap/removeWidget';
import { findWrappableExpression } from '../wrap/findWrappableExpression';

function createMockDocument(text: string): vscode.TextDocument {
    const lines = text.split('\n');

    function offsetAt(position: vscode.Position): number {
        let offset = 0;
        for (let line = 0; line < position.line; line += 1) {
            offset += lines[line].length + 1;
        }

        return offset + position.character;
    }

    function positionAt(offset: number): vscode.Position {
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
        getText: (range?: vscode.Range) => {
            if (!range) {
                return text;
            }

            const start = offsetAt(range.start);
            const end = offsetAt(range.end);
            return text.slice(start, end);
        },
        lineAt: (line: number) => ({ text: lines[line] }),
        offsetAt,
        positionAt,
    } as unknown as vscode.TextDocument;
}

suite('Remove Widget Utilities', () => {
    test('finds child expression in simple widget', () => {
        const expr = "StacCenter(child: StacText('Hello'))";
        const child = findChildExpression(expr);
        assert.strictEqual(child, "StacText('Hello')");
    });

    test('finds child expression in multiline widget', () => {
        const expr = `StacCenter(
        child: StacText(
          'Hello'
        ),
      )`;
        const child = findChildExpression(expr);
        // It should capture the content essentially
        // My simple regex finds "StacText(\n          'Hello'\n        )"
        // Let's see what the implementation does.
        assert.ok(child?.startsWith('StacText'));
        assert.ok(child?.includes("'Hello'"));
    });

    test('returns undefined if no child', () => {
        const expr = "StacSizedBox(width: 10)";
        const child = findChildExpression(expr);
        assert.strictEqual(child, undefined);
    });

    test('ignores child in nested widget', () => {
        // "child:" is present but inside another widget's args
        // StacColumn(children: [StacContainer(child: StacText('Hi'))])
        // The outer widget has no "child:", only "children:". 
        // findChildExpression checks for top-level "child:".
        const expr = "StacColumn(children: [StacContainer(child: StacText('Hi'))])";
        const child = findChildExpression(expr);
        assert.strictEqual(child, undefined);
    });

    test('handles complex nesting', () => {
        const expr = `StacContainer(
            child: StacRow(
                children: [StacText('A')],
            ),
        )`;
        const child = findChildExpression(expr);
        // It matches content of child: ...
        // "StacRow(\n                children: [StacText('A')],\n            )"
        assert.ok(child?.startsWith('StacRow'));
    });

    test('handles comments correctly', () => {
        const expr = `StacPadding(
            // child: StacText('Ignored'),
            child: StacText('Real'),
        )`;
        const child = findChildExpression(expr);
        assert.strictEqual(child, "StacText('Real')");
    });

    test('handles strings correctly', () => {
        const expr = `StacColumn(
            children: [
                StacText("child: Not Real"),
            ],
            child: StacText("Real"),
        )`;
        const child = findChildExpression(expr);
        assert.strictEqual(child, 'StacText("Real")');
    });
    test('create edit replaces widget with child', () => {
        const source =
            `  StacCenter(
    child: StacText('Hello'),
    )`;
        const doc = createMockDocument(source);
        const target = {
            widgetName: 'StacCenter',
            range: new vscode.Range(new vscode.Position(0, 2), new vscode.Position(2, 3)),
            expression: source.trim()
        };

        const edit = createRemoveWidgetEdit(doc, target);
        const entries = edit.entries();
        assert.strictEqual(entries.length, 1);

        // Check replacement text (should be StacText('Hello'))
        // Depending on reindent logic...
        // The mock logic for reindent might be tricky to test perfectly without full editor behavior,
        // but we can check the string content.
        const replacement = entries[0][1][0].newText;
        assert.ok(replacement.includes("StacText('Hello')"));
    });
});
