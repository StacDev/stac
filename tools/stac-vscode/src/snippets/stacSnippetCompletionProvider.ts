import * as vscode from 'vscode';
import { SETTINGS } from '../core/constants';
import { isStacDslDocument } from '../core/isStacDslDocument';

interface SimpleSnippet {
  prefix: string;
  description: string;
  body: string[];
}

const SIMPLE_SNIPPETS: readonly SimpleSnippet[] = [
  {
    prefix: 'stac screen',
    description: 'Create a new Stac screen',
    body: [
      "import 'package:stac_core/stac_core.dart';",
      '',
      '@StacScreen(screenName: "${1/(^[A-Z])|([A-Z])/${1:/downcase}${2:+_}${2:/downcase}/g}")',
      'StacWidget ${1:screenName}() {',
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
      '@StacThemeRef(name: "${1/(^[A-Z])|([A-Z])/${1:/downcase}${2:+_}${2:/downcase}/g}")',
      'StacTheme get ${1:lightTheme} => StacTheme(',
      '  brightness: StacBrightness.light,',
      '  useMaterial3: true,',
      ');',
    ],
  },
];

const STAC_SNIPPET_QUERY_REGEX = /(?:^|\s)(stac(?:\s+[a-z]*)?)$/i;

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
    const match = linePrefix.match(STAC_SNIPPET_QUERY_REGEX);

    if (!match) {
      return [];
    }

    const typedPrefix = (match[1] ?? '').toLowerCase();
    const startCharacter = linePrefix.length - typedPrefix.length;
    const replaceRange = new vscode.Range(
      new vscode.Position(position.line, startCharacter),
      position,
    );

    return SIMPLE_SNIPPETS
      .filter((entry) => entry.prefix.startsWith(typedPrefix))
      .map((entry) => {
        const item = new vscode.CompletionItem(
          entry.prefix,
          vscode.CompletionItemKind.Snippet,
        );

        item.detail = entry.description;
        item.insertText = new vscode.SnippetString(entry.body.join('\n'));
        item.range = replaceRange;
        item.filterText = entry.prefix;
        item.sortText = entry.prefix;
        return item;
      });
  }
}
