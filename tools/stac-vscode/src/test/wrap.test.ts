import * as assert from 'assert';
import * as vscode from 'vscode';
import { buildWrappedExpression } from '../wrap/applyWrapEdit';
import { findWrappableExpression } from '../wrap/findWrappableExpression';
import { widgetCatalogByClass } from '../generated/widgetCatalog';
import { validateCustomWrapperName } from '../wrap/pickCustomWrapper';
import { templateFromWidgetCatalog } from '../wrap/wrapperTemplates';

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

suite('Wrap utilities', () => {
  test('finds nearest Stac widget at cursor', () => {
    const source = "final widget = StacPadding(child: StacText(data: 'Hello'));";
    const document = createMockDocument(source);
    const cursorOffset = source.indexOf('StacText') + 5;
    const cursorPosition = document.positionAt(cursorOffset);

    const target = findWrappableExpression(
      document,
      new vscode.Range(cursorPosition, cursorPosition),
    );

    assert.ok(target);
    assert.strictEqual(target?.widgetName, 'StacText');
    assert.strictEqual(target?.expression, "StacText(data: 'Hello')");
  });

  test('returns undefined when selection is not on stac widget', () => {
    const source = "final widget = Text('Hello');";
    const document = createMockDocument(source);
    const cursorOffset = source.indexOf('Text') + 2;
    const cursorPosition = document.positionAt(cursorOffset);

    const target = findWrappableExpression(
      document,
      new vscode.Range(cursorPosition, cursorPosition),
    );

    assert.strictEqual(target, undefined);
  });

  test('builds wrapped expression with child property (single-line)', () => {
    // baseIndent='  ' simulates widget on a line with 2-space indent
    // First line should NOT include baseIndent (replacement starts mid-line)
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'StacContainer',
        title: 'Wrap with StacContainer',
        childMode: 'child',
        beforeChildArgs: [],
      },
      "StacText(data: 'Hello')",
      '  ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "StacContainer(\n    child: StacText(data: 'Hello'),\n  )",
    );
  });

  test('builds wrapped expression with multiline child (preserves relative indent)', () => {
    // Simulates expression captured mid-line: first line has no indent,
    // rest lines have document indent that gets dedented.
    const inner = `StacAlign(
  alignment: StacAlignmentDirectional.center,
  child: StacCenter(child: StacText(data: 'Hi')),
)`;
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'StacWidget',
        title: 'Wrap with Stac widget',
        childMode: 'child',
        beforeChildArgs: [],
      },
      inner,
      '    ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      `StacWidget(
      child: StacAlign(
        alignment: StacAlignmentDirectional.center,
        child: StacCenter(child: StacText(data: 'Hi')),
      ),
    )`,
    );
  });

  test('builds wrapped expression with beforeChildArgs (e.g. StacPadding)', () => {
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'StacPadding',
        title: 'Wrap with StacPadding',
        childMode: 'child',
        beforeChildArgs: ['padding: StacEdgeInsets.all(8)'],
      },
      "StacCenter(child: StacText(data: 'Hi'))",
      '  ',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "StacPadding(\n    padding: StacEdgeInsets.all(8),\n    child: StacCenter(child: StacText(data: 'Hi')),\n  )",
    );
  });

  test('builds wrapped expression with children property', () => {
    const wrapped = buildWrappedExpression(
      {
        wrapperName: 'StacColumn',
        title: 'Wrap with StacColumn',
        childMode: 'children',
        beforeChildArgs: [],
      },
      "StacText(data: 'Hello')",
      '',
      '  ',
    );

    assert.strictEqual(
      wrapped,
      "StacColumn(\n  children: [\n    StacText(data: 'Hello'),\n  ],\n)",
    );
  });

  test('custom wrapper validator accepts and rejects correctly', () => {
    assert.strictEqual(validateCustomWrapperName('StacColumn'), undefined);
    assert.ok(validateCustomWrapperName('Column'));
    assert.ok(validateCustomWrapperName('StacText'));
    assert.ok(validateCustomWrapperName('StacUnknownWidget'));
  });

  test('template generation chooses children mode when available', () => {
    const widget = widgetCatalogByClass.get('StacColumn');
    assert.ok(widget);

    const template = templateFromWidgetCatalog(widget!);
    assert.ok(template);
    assert.strictEqual(template?.childMode, 'children');
  });
});
