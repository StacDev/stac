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
