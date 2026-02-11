import * as vscode from 'vscode';
import { SETTINGS } from '../core/constants';
import { isStacDslDocument } from '../core/isStacDslDocument';
import { snippetCatalog } from '../generated/snippetCatalog';

const STAC_PREFIX_REGEX = /(?:^|[^A-Za-z0-9_.-])(stac(?:\.[A-Za-z0-9_.-]*)?)$/;

export class StacSnippetCompletionProvider implements vscode.CompletionItemProvider {
  provideCompletionItems(
    document: vscode.TextDocument,
    position: vscode.Position,
  ): vscode.CompletionItem[] {
    if (document.languageId !== 'dart') {
      return [];
    }

    const config = vscode.workspace.getConfiguration();
    if (!config.get<boolean>(SETTINGS.enableSnippets, true)) {
      return [];
    }

    if (!isStacDslDocument(document)) {
      return [];
    }

    const linePrefix = document.lineAt(position.line).text.slice(0, position.character);
    const prefixMatch = linePrefix.match(STAC_PREFIX_REGEX);

    if (!prefixMatch) {
      return [];
    }

    const typedPrefix = prefixMatch[1] ?? 'stac';
    const wordRange = document.getWordRangeAtPosition(position, /[A-Za-z0-9_.-]+/);
    const replaceRange =
      wordRange ?? new vscode.Range(position, position);

    return snippetCatalog
      .filter((entry) => entry.prefix.startsWith(typedPrefix))
      .map((entry) => {
        const item = new vscode.CompletionItem(
          entry.prefix,
          vscode.CompletionItemKind.Snippet,
        );

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
