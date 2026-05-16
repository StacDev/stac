import * as vscode from 'vscode';
import type { WrappableExpressionTarget } from './findWrappableExpression';
import type { WrapperTemplate } from './wrapperTemplates';

const INDENT_UNIT = '  ';

/**
 * Get the leading whitespace of the line where the expression starts.
 * Used as base indent for lines 2+ of the wrapped output.
 */
function getBaseIndent(document: vscode.TextDocument, range: vscode.Range): string {
  const lineText = document.lineAt(range.start.line).text;
  const match = lineText.match(/^\s*/);
  return match ? match[0] : '';
}

function stripTrailingComma(expression: string): string {
  return expression.trim().replace(/,\s*$/, '');
}

/**
 * Dedent a multiline expression captured from the document.
 *
 * The first line has no leading whitespace (captured mid-line at the widget name).
 * Lines 2+ have full document indentation. We compute common indent from lines 2+
 * and strip it, preserving relative indentation within the expression.
 */
function dedentExpression(expression: string): string[] {
  const lines = expression.split('\n');
  if (lines.length <= 1) {
    return [lines[0].trim()];
  }

  const restLines = lines.slice(1);
  const restIndents = restLines
    .filter((line) => line.trim().length > 0)
    .map((line) => {
      const match = line.match(/^\s*/);
      return match ? match[0].length : 0;
    });

  const minIndent = restIndents.length > 0 ? Math.min(...restIndents) : 0;

  return [
    lines[0].trim(),
    ...restLines.map((line) => {
      if (line.trim().length === 0) {
        return '';
      }
      const match = line.match(/^\s*/);
      const leadingLen = match ? match[0].length : 0;
      return line.slice(Math.min(leadingLen, minIndent));
    }),
  ];
}

function appendCommaToLastLine(lines: string[]): string[] {
  if (lines.length === 0) {
    return lines;
  }

  const last = lines.length - 1;
  if (!lines[last].trimEnd().endsWith(',')) {
    lines[last] = `${lines[last]},`;
  }

  return lines;
}

/**
 * Build lines for `child: <expression>`.
 *
 * Single-line:  `  child: Expression(),`
 * Multiline:    `  child: Expression(\n    ...\n  ),`
 *
 * Rest lines are indented at `innerIndent` and preserve their relative structure
 * from the dedented expression.
 */
function buildChildLine(
  expression: string,
  baseIndent: string,
  indentUnit: string,
): string[] {
  const innerIndent = `${baseIndent}${indentUnit}`;

  if (!expression.includes('\n')) {
    return [`${innerIndent}child: ${expression.trim()},`];
  }

  const dedented = dedentExpression(expression);
  const firstLine = `${innerIndent}child: ${dedented[0]}`;
  const restLines = dedented.slice(1).map((line) =>
    line.length === 0 ? '' : `${innerIndent}${line}`,
  );
  return appendCommaToLastLine([firstLine, ...restLines]);
}

/**
 * Build lines for `children: [<expression>]`.
 */
function buildChildrenLines(
  expression: string,
  baseIndent: string,
  indentUnit: string,
): string[] {
  const innerIndent = `${baseIndent}${indentUnit}`;
  const childIndent = `${innerIndent}${indentUnit}`;

  const lines = [`${innerIndent}children: [`];

  if (!expression.includes('\n')) {
    lines.push(`${childIndent}${expression.trim()},`);
    lines.push(`${innerIndent}],`);
    return lines;
  }

  const dedented = dedentExpression(expression);
  const reindented = dedented.map((line) =>
    line.length === 0 ? '' : `${childIndent}${line}`,
  );
  lines.push(...appendCommaToLastLine(reindented));
  lines.push(`${innerIndent}],`);
  return lines;
}

/**
 * Build the full wrapped expression string.
 *
 * The FIRST line has NO baseIndent because the replacement starts at the widget's
 * position in the line (which may be mid-line, e.g. after `body: `).
 * Lines 2+ use baseIndent since they start from column 0 in the replacement text.
 */
export function buildWrappedExpression(
  template: WrapperTemplate,
  expression: string,
  baseIndent: string,
  indentUnit: string = INDENT_UNIT,
): string {
  const normalizedExpression = stripTrailingComma(expression);
  const innerIndent = `${baseIndent}${indentUnit}`;

  // First line: NO baseIndent — starts at the original widget position
  const lines = [`${template.wrapperName}(`];
  for (const arg of template.beforeChildArgs) {
    lines.push(`${innerIndent}${arg},`);
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
  const baseIndent = getBaseIndent(document, target.range);
  const wrappedExpression = buildWrappedExpression(
    template,
    target.expression,
    baseIndent,
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
