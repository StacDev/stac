import * as assert from 'assert';
import * as vscode from 'vscode';
import { StacSnippetCompletionProvider } from '../snippets/stacSnippetCompletionProvider';
import { StacWrapCodeActionProvider } from '../wrap/stacWrapCodeActionProvider';

suite('Providers', () => {
  test('quick fix list appears on stac widget expression', async () => {
    const source = "Widget build() => StacText(data: 'Hello');";
    const document = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: source,
    });

    const provider = new StacWrapCodeActionProvider();
    const offset = source.indexOf('StacText') + 2;
    const position = document.positionAt(offset);
    const range = new vscode.Range(position, position);

    const actions = provider.provideCodeActions(document, range) as vscode.CodeAction[];
    const titles = actions.map((action) => action.title);

    assert.ok(titles.includes('Wrap with StacContainer'));
    assert.ok(titles.includes('Wrap with StacPadding'));
    assert.ok(titles.includes('Wrap with StacCenter'));
    assert.ok(titles.includes('Wrap with StacAlign'));
    assert.ok(titles.includes('Wrap with StacSizedBox'));
    assert.ok(titles.includes('Wrap with StacExpanded'));
    assert.ok(titles.includes('Wrap with Stac widget'));
  });

  test('quick fix list does not appear on non-stac constructors', async () => {
    const source = "Widget build() => Text('Hello');";
    const document = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: source,
    });

    const provider = new StacWrapCodeActionProvider();
    const offset = source.indexOf('Text') + 1;
    const position = document.positionAt(offset);
    const range = new vscode.Range(position, position);

    const actions = provider.provideCodeActions(document, range) as vscode.CodeAction[];
    assert.strictEqual(actions.length, 0);
  });

  test('snippet provider only suggests in stac dsl context', async () => {
    const provider = new StacSnippetCompletionProvider();

    const dslSource = [
      "import 'package:stac_core/stac_core.dart';",
      'void buildStac() {',
      '  stac ',
      '}',
    ].join('\n');

    const dslDocument = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: dslSource,
    });

    const dslPosition = dslDocument.positionAt(
      dslSource.indexOf('stac ') + 'stac '.length,
    );
    const dslItems = provider.provideCompletionItems(
      dslDocument,
      dslPosition,
    ) as vscode.CompletionItem[];

    assert.ok(dslItems.some((item) => item.label === 'stac screen'));
    assert.ok(dslItems.some((item) => item.label === 'stac theme'));
    assert.strictEqual(dslItems.length, 2);

    const plainSource = [
      'void notDsl() {',
      '  stac theme',
      '}',
    ].join('\n');

    const plainDocument = await vscode.workspace.openTextDocument({
      language: 'dart',
      content: plainSource,
    });

    const plainPosition = plainDocument.positionAt(
      plainSource.indexOf('stac theme') + 'stac theme'.length,
    );

    const plainItems = provider.provideCompletionItems(
      plainDocument,
      plainPosition,
    ) as vscode.CompletionItem[];

    assert.strictEqual(plainItems.length, 0);
  });
});
