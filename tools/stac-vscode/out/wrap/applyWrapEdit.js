"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || (function () {
    var ownKeys = function(o) {
        ownKeys = Object.getOwnPropertyNames || function (o) {
            var ar = [];
            for (var k in o) if (Object.prototype.hasOwnProperty.call(o, k)) ar[ar.length] = k;
            return ar;
        };
        return ownKeys(o);
    };
    return function (mod) {
        if (mod && mod.__esModule) return mod;
        var result = {};
        if (mod != null) for (var k = ownKeys(mod), i = 0; i < k.length; i++) if (k[i] !== "default") __createBinding(result, mod, k[i]);
        __setModuleDefault(result, mod);
        return result;
    };
})();
Object.defineProperty(exports, "__esModule", { value: true });
exports.buildWrappedExpression = buildWrappedExpression;
exports.createWrapWorkspaceEdit = createWrapWorkspaceEdit;
exports.applyWrapWorkspaceEdit = applyWrapWorkspaceEdit;
const vscode = __importStar(require("vscode"));
function getIndentUnit(document) {
    const editorConfig = vscode.workspace.getConfiguration('editor', document.uri);
    const insertSpaces = editorConfig.get('insertSpaces', true);
    const tabSizeRaw = editorConfig.get('tabSize', 2);
    const tabSize = typeof tabSizeRaw === 'number' ? tabSizeRaw : 2;
    if (!insertSpaces) {
        return '\t';
    }
    return ' '.repeat(Math.max(1, tabSize));
}
function getBaseIndent(document, range) {
    const lineText = document.lineAt(range.start.line).text;
    const firstCharIndex = lineText.search(/\S|$/);
    return lineText.slice(0, firstCharIndex);
}
function stripTrailingComma(expression) {
    return expression.trim().replace(/,\s*$/, '');
}
function dedentMultiline(expression) {
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
function appendCommaToLastLine(lines) {
    if (lines.length === 0) {
        return lines;
    }
    const index = lines.length - 1;
    if (!lines[index].trimEnd().endsWith(',')) {
        lines[index] = `${lines[index]},`;
    }
    return lines;
}
function buildChildLine(expression, baseIndent, indentUnit) {
    const innerIndent = `${baseIndent}${indentUnit}`;
    const childIndent = `${innerIndent}${indentUnit}`;
    if (!expression.includes('\n')) {
        return [`${innerIndent}child: ${expression},`];
    }
    const expressionLines = dedentMultiline(expression).map((line) => `${childIndent}${line}`);
    return [`${innerIndent}child:`, ...appendCommaToLastLine(expressionLines)];
}
function buildChildrenLines(expression, baseIndent, indentUnit) {
    const innerIndent = `${baseIndent}${indentUnit}`;
    const childIndent = `${innerIndent}${indentUnit}`;
    const lines = [`${innerIndent}children: [`];
    if (!expression.includes('\n')) {
        lines.push(`${childIndent}${expression},`);
        lines.push(`${innerIndent}],`);
        return lines;
    }
    const expressionLines = dedentMultiline(expression).map((line) => `${childIndent}${line}`);
    lines.push(...appendCommaToLastLine(expressionLines));
    lines.push(`${innerIndent}],`);
    return lines;
}
function buildWrappedExpression(template, expression, baseIndent, indentUnit) {
    const normalizedExpression = stripTrailingComma(expression);
    const lines = [`${template.wrapperName}(`];
    for (const argument of template.beforeChildArgs) {
        lines.push(`${baseIndent}${indentUnit}${argument},`);
    }
    if (template.childMode === 'children') {
        lines.push(...buildChildrenLines(normalizedExpression, baseIndent, indentUnit));
    }
    else {
        lines.push(...buildChildLine(normalizedExpression, baseIndent, indentUnit));
    }
    lines.push(`${baseIndent})`);
    return lines.join('\n');
}
function createWrapWorkspaceEdit(document, target, template) {
    const indentUnit = getIndentUnit(document);
    const baseIndent = getBaseIndent(document, target.range);
    const wrappedExpression = buildWrappedExpression(template, target.expression, baseIndent, indentUnit);
    const edit = new vscode.WorkspaceEdit();
    edit.replace(document.uri, target.range, wrappedExpression);
    return edit;
}
async function applyWrapWorkspaceEdit(document, target, template) {
    const edit = createWrapWorkspaceEdit(document, target, template);
    return vscode.workspace.applyEdit(edit);
}
//# sourceMappingURL=applyWrapEdit.js.map