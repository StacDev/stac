import * as vscode from 'vscode';
import type { WrappableExpressionTarget } from './findWrappableExpression';

const MATCH_CHILD_PROP = /child:\s*/;

/**
 * Finds the expression for the `child` property of a widget.
 * 
 * Logic:
 * 1. Find `child:` in the widget expression.
 * 2. Extract the value assigned to `child`.
 * 3. Handle trailing comma.
 */
export function findChildExpression(expression: string): string | undefined {
    let state: 'normal' | 'single' | 'double' | 'lineComment' | 'blockComment' = 'normal';
    let depth = 0;
    let foundChildStart = -1;
    const childKey = 'child:';

    for (let i = 0; i < expression.length; i++) {
        const char = expression[i];
        const next = expression[i + 1];

        if (state === 'lineComment') {
            if (char === '\n') state = 'normal';
            continue;
        }
        if (state === 'blockComment') {
            if (char === '*' && next === '/') {
                state = 'normal';
                i++;
            }
            continue;
        }
        if (state === 'single') {
            if (char === "'" && expression[i - 1] !== '\\') state = 'normal';
            continue;
        }
        if (state === 'double') {
            if (char === '"' && expression[i - 1] !== '\\') state = 'normal';
            continue;
        }

        // State detection
        if (char === '/' && next === '/') {
            state = 'lineComment';
            i++;
            continue;
        }
        if (char === '/' && next === '*') {
            state = 'blockComment';
            i++;
            continue;
        }
        if (char === "'") {
            state = 'single';
            continue;
        }
        if (char === '"') {
            state = 'double';
            continue;
        }

        // Normal state processing
        if (char === '(') {
            depth++;
            continue;
        }
        if (char === ')') {
            depth--;
            continue;
        }

        if (depth === 1) {
            // Check for "child:"
            if (expression.substr(i, childKey.length) === childKey) {
                // Boundary check
                const prevChar = expression[i - 1];
                if (!/[a-zA-Z0-9_]/.test(prevChar || '')) {
                    foundChildStart = i + childKey.length;
                    break;
                }
            }
        }
    }

    if (foundChildStart === -1) {
        return undefined;
    }

    // Extract value
    let valueStart = foundChildStart;
    while (valueStart < expression.length && /\s/.test(expression[valueStart])) {
        valueStart++;
    }

    let valueEnd = -1;
    depth = 1;
    state = 'normal';

    for (let i = valueStart; i < expression.length; i++) {
        const char = expression[i];
        const next = expression[i + 1];

        // Re-use state logic (simplified copy)
        if (state === 'lineComment') {
            if (char === '\n') state = 'normal';
            continue;
        }
        if (state === 'blockComment') {
            if (char === '*' && next === '/') { state = 'normal'; i++; }
            continue;
        }
        if (state === 'single') {
            if (char === "'" && expression[i - 1] !== '\\') state = 'normal';
            continue;
        }
        if (state === 'double') {
            if (char === '"' && expression[i - 1] !== '\\') state = 'normal';
            continue;
        }

        if (char === '/' && next === '/') { state = 'lineComment'; i++; continue; }
        if (char === '/' && next === '*') { state = 'blockComment'; i++; continue; }
        if (char === "'") { state = 'single'; continue; }
        if (char === '"') { state = 'double'; continue; }

        if (char === '(') { depth++; }
        else if (char === ')') {
            depth--;
            if (depth === 0) {
                valueEnd = i;
                break;
            }
        } else if (char === ',' && depth === 1) {
            valueEnd = i;
            break;
        }
    }

    if (valueEnd === -1) {
        // Fallback if we hit end of string without closing paren/comma (malformed or just end)
        // But since we started at depth 1 inside a valid widget (presumably), we should hit ')' eventually.
        return undefined;
    }

    return expression.substring(valueStart, valueEnd).trim();
}

export function createRemoveWidgetEdit(
    document: vscode.TextDocument,
    target: WrappableExpressionTarget,
): vscode.WorkspaceEdit {
    const childExpression = findChildExpression(target.expression);
    const edit = new vscode.WorkspaceEdit();

    if (!childExpression) {
        return edit;
    }

    // We need to re-indent the child expression to match the start of the removed widget.
    // The logic is similar to `applyWrapEdit` but in reverse-ish or simpler.
    // `target.range.start` is where the widget starts.
    // If we just replace, we might mess up indentation if `childExpression` is multi-line.

    // If we assume `childExpression` was already formatted, it has some indentation relative to parent.
    // If we promote it, we likely need to dedent it.

    // Let's use `dedentExpression` logic from `applyWrapEdit` if we can export it, or rewrite a simple one.
    // Actually, simple replace might be "okay" if we let VS Code format it?
    // But better to try to be nice.

    // Let's grab the base indentation of the line where widget starts.
    // But wait, `childExpression` extracted from `target.expression` (which comes from `document.getText()`) 
    // preserves original whitespace.

    // Implementation:
    // 1. Dedent `childExpression` so its first line has no indent (it's trimmed already by findChildExpression).
    // 2. But subsequent lines in `childExpression` have indentation relative to the *old* widget.
    //    We need to shift them left.

    // Let's rely on a helper to dedent, similar to `applyWrapEdit.ts`.
    // I will duplicate `dedentExpression` logic here for simplicity to avoid circular deps or complex refactor, 
    // or I can make it shared. `applyWrapEdit.ts` exports `buildWrappedExpression`, not dedent.
    // I'll make a small local helper.

    const indentedChild = reindentChild(childExpression, document, target.range);

    edit.replace(document.uri, target.range, indentedChild);
    return edit;
}

function reindentChild(childExpression: string, document: vscode.TextDocument, range: vscode.Range): string {
    const lines = childExpression.split('\n');
    if (lines.length <= 1) {
        return childExpression;
    }

    // The first line is already trimmed by findChildExpression (usually).
    // The subsequent lines have indentation.
    // We need to calculate how much to remove.
    // The previous indentation basis was likely `range.start.character` + some offset.

    // Heuristic: finding the common indentation of lines 2+ and reducing it 
    // to match `range.start.character`'s indentation?
    // Or just "strip common prefix" and add `range.start` indent?

    // Let's try: get base indent of the target line.
    const lineText = document.lineAt(range.start.line).text;
    const baseIndentMatch = lineText.match(/^\s*/);
    const baseIndent = baseIndentMatch ? baseIndentMatch[0] : '';

    // Check indentation of lines 2+
    const restLines = lines.slice(1);
    const indents = restLines
        .filter(l => l.trim().length > 0)
        .map(l => (l.match(/^\s*/) || [''])[0].length);

    if (indents.length === 0) return childExpression;

    const minIndent = Math.min(...indents);

    // We want to reduce indentation by some amount.
    // If we assume the child was indented by +2 spaces relative to parent,
    // we probably want to reduce by 2 spaces.
    // BUT, we don't know the unit reliably.

    // Alternative:
    // 1. Dedent completely (remove common indent).
    // 2. Add `baseIndent` to lines 2+.

    const dedentedRest = restLines.map(line => {
        if (line.trim().length === 0) return '';
        return line.slice(minIndent); // Remove all common indent
    });

    const result = [
        lines[0], // First line stays as is (it's the expression start)
        ...dedentedRest.map(l => l ? baseIndent + l : '')
    ];

    return result.join('\n');
}
