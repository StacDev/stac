import * as vscode from 'vscode';
import type { WrappableExpressionTarget } from './findWrappableExpression';
import type { WrapperTemplate } from './wrapperTemplates';

function getIndentUnit(document: vscode.TextDocument): string {
  const editorConfig = vscode.workspace.getConfiguration('editor', document.uri);
  const insertSpaces = editorConfig.get<boolean>('insertSpaces', true);
  const tabSizeRaw = editorConfig.get<number | string>('tabSize', 2);
  const tabSize = typeof tabSizeRaw === 'number' ? tabSizeRaw : 2;

  if (!insertSpaces) {
    return '\t';
  }

  return ' '.repeat(Math.max(1, tabSize));
}

function getBaseIndent(document: vscode.TextDocument, range: vscode.Range): string {
  const lineText = document.lineAt(range.start.line).text;
  const firstCharIndex = lineText.search(/\S|$/);
  return lineText.slice(0, firstCharIndex);
}

function stripTrailingComma(expression: string): string {
  return expression.trim().replace(/,\s*$/, '');
}

function dedentMultiline(expression: string): string[] {
  const lines = expression.split('\n');
  const indents = lines
    .filter((line) => line.trim().length > 0)
    .map((line) => {
      const match = line.match(/^\s*/);
      return match ? match[0].length : 0;
    });

  const minIndent = indents.length > 0 ? Math.min(...indents) : 0;

  return lines.map((line) => line.slice(Math.min(minIndent, line.length)));
}

function appendCommaToLastLine(lines: string[]): string[] {
  if (lines.length === 0) {
    return lines;
  }

  const index = lines.length - 1;
  if (!lines[index].trimEnd().endsWith(',')) {
    lines[index] = `${lines[index]},`;
  }

  return lines;
}

function buildChildLine(
  expression: string,
  baseIndent: string,
  indentUnit: string,
): string[] {
  const innerIndent = `${baseIndent}${indentUnit}`;
  const childIndent = `${innerIndent}${indentUnit}`;

  if (!expression.includes('\n')) {
    return [`${innerIndent}child: ${expression},`];
  }

  const expressionLines = dedentMultiline(expression).map(
    (line) => `${childIndent}${line}`,
  );

  return [`${innerIndent}child:`, ...appendCommaToLastLine(expressionLines)];
}

function buildChildrenLines(
  expression: string,
  baseIndent: string,
  indentUnit: string,
): string[] {
  const innerIndent = `${baseIndent}${indentUnit}`;
  const childIndent = `${innerIndent}${indentUnit}`;

  const lines = [`${innerIndent}children: [`];

  if (!expression.includes('\n')) {
    lines.push(`${childIndent}${expression},`);
    lines.push(`${innerIndent}],`);
    return lines;
  }

  const expressionLines = dedentMultiline(expression).map(
    (line) => `${childIndent}${line}`,
  );

  lines.push(...appendCommaToLastLine(expressionLines));
  lines.push(`${innerIndent}],`);
  return lines;
}

export function buildWrappedExpression(
  template: WrapperTemplate,
  expression: string,
  baseIndent: string,
  indentUnit: string,
): string {
  const normalizedExpression = stripTrailingComma(expression);

  const lines = [`${template.wrapperName}(`];
  for (const argument of template.beforeChildArgs) {
    lines.push(`${baseIndent}${indentUnit}${argument},`);
  }

  if (template.childMode === 'children') {
    lines.push(...buildChildrenLines(normalizedExpression, baseIndent, indentUnit));
  } else {
    lines.push(...buildChildLine(normalizedExpression, baseIndent, indentUnit));
  }

  lines.push(`${baseIndent})`);
  return lines.join('\n');
}

export function createWrapWorkspaceEdit(
  document: vscode.TextDocument,
  target: WrappableExpressionTarget,
  template: WrapperTemplate,
): vscode.WorkspaceEdit {
  const indentUnit = getIndentUnit(document);
  const baseIndent = getBaseIndent(document, target.range);
  const wrappedExpression = buildWrappedExpression(
    template,
    target.expression,
    baseIndent,
    indentUnit,
  );

  const edit = new vscode.WorkspaceEdit();
  edit.replace(document.uri, target.range, wrappedExpression);
  return edit;
}

export async function applyWrapWorkspaceEdit(
  document: vscode.TextDocument,
  target: WrappableExpressionTarget,
  template: WrapperTemplate,
): Promise<boolean> {
  const edit = createWrapWorkspaceEdit(document, target, template);
  return vscode.workspace.applyEdit(edit);
}
