import * as vscode from 'vscode';

export interface StacExpressionRange {
  widgetName: string;
  startOffset: number;
  endOffset: number;
}

export interface WrappableExpressionTarget {
  widgetName: string;
  range: vscode.Range;
  expression: string;
}

export function collectStacExpressionRanges(text: string): StacExpressionRange[] {
  const matches = [...text.matchAll(/\b(Stac[A-Za-z0-9_]+)\s*\(/g)];
  const ranges: StacExpressionRange[] = [];

  for (const match of matches) {
    const widgetName = match[1];
    const matchIndex = match.index;

    if (widgetName === undefined || matchIndex === undefined) {
      continue;
    }

    const openParenOffset = matchIndex + match[0].lastIndexOf('(');
    const closeParenOffset = findMatchingParen(text, openParenOffset);

    if (closeParenOffset < 0) {
      continue;
    }

    ranges.push({
      widgetName,
      startOffset: matchIndex,
      endOffset: closeParenOffset + 1,
    });
  }

  return ranges;
}

function findMatchingParen(text: string, openParenOffset: number): number {
  type State = 'normal' | 'single' | 'double' | 'lineComment' | 'blockComment';
  let state: State = 'normal';
  let escaped = false;
  let depth = 0;

  for (let index = openParenOffset; index < text.length; index += 1) {
    const char = text[index];
    const next = text[index + 1];

    if (state === 'lineComment') {
      if (char === '\n') {
        state = 'normal';
      }
      continue;
    }

    if (state === 'blockComment') {
      if (char === '*' && next === '/') {
        state = 'normal';
        index += 1;
      }
      continue;
    }

    if (state === 'single') {
      if (!escaped && char === "'") {
        state = 'normal';
      }
      escaped = !escaped && char === '\\';
      continue;
    }

    if (state === 'double') {
      if (!escaped && char === '"') {
        state = 'normal';
      }
      escaped = !escaped && char === '\\';
      continue;
    }

    if (char === '/' && next === '/') {
      state = 'lineComment';
      index += 1;
      continue;
    }

    if (char === '/' && next === '*') {
      state = 'blockComment';
      index += 1;
      continue;
    }

    if (char === "'") {
      state = 'single';
      escaped = false;
      continue;
    }

    if (char === '"') {
      state = 'double';
      escaped = false;
      continue;
    }

    if (char === '(') {
      depth += 1;
      continue;
    }

    if (char === ')') {
      depth -= 1;
      if (depth === 0) {
        return index;
      }
    }
  }

  return -1;
}

export function findWrappableExpression(
  document: vscode.TextDocument,
  selection: vscode.Range,
): WrappableExpressionTarget | undefined {
  const text = document.getText();
  const startOffset = document.offsetAt(selection.start);
  const endOffset = document.offsetAt(selection.end);
  const isCursor = selection.isEmpty;

  const ranges = collectStacExpressionRanges(text).filter((item) => {
    if (isCursor) {
      return item.startOffset <= startOffset && startOffset <= item.endOffset;
    }

    return item.startOffset <= startOffset && endOffset <= item.endOffset;
  });

  if (ranges.length === 0) {
    return undefined;
  }

  ranges.sort(
    (first, second) =>
      first.endOffset - first.startOffset - (second.endOffset - second.startOffset),
  );

  const target = ranges[0];
  const start = document.positionAt(target.startOffset);
  const end = document.positionAt(target.endOffset);
  const range = new vscode.Range(start, end);

  return {
    widgetName: target.widgetName,
    range,
    expression: document.getText(range),
  };
}
