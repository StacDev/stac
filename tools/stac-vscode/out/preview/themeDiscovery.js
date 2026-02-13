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
exports.discoverThemesInDocument = discoverThemesInDocument;
exports.discoverThemesInWorkspace = discoverThemesInWorkspace;
const vscode = __importStar(require("vscode"));
/**
 * Regex to match `@StacThemeRef(name: "themeName")` annotations followed by
 * either a getter (`StacTheme get name => ...`) or a function (`StacTheme name() { ... }`).
 *
 * Captures:
 *  [1] quote character (' or ")
 *  [2] theme name
 *  [3] 'get' keyword (present for getters, undefined for functions)
 *  [4] function/getter name
 */
const THEME_DECLARATION_REGEX = /@StacThemeRef\s*\(\s*name\s*:\s*(['"])([^'"]+)\1[\s\S]*?\)\s*StacTheme\s+(get\s+)?([A-Za-z_][A-Za-z0-9_]*)/g;
/**
 * Discover all `@StacThemeRef` declarations in the given document.
 */
function discoverThemesInDocument(document) {
    const text = document.getText();
    const themes = [];
    for (const match of text.matchAll(THEME_DECLARATION_REGEX)) {
        const themeName = match[2];
        const isGetter = match[3] !== undefined;
        const functionOrGetterName = match[4];
        const annotationOffset = match.index;
        if (themeName === undefined ||
            functionOrGetterName === undefined ||
            annotationOffset === undefined) {
            continue;
        }
        const topLevel = computeBraceDepthAt(text, annotationOffset) === 0;
        themes.push({
            themeName,
            filePath: document.uri.fsPath,
            functionOrGetterName,
            isGetter,
            topLevel,
        });
    }
    return themes;
}
/**
 * Discover all `@StacThemeRef` declarations across the workspace.
 * Scans all `.dart` files in the given workspace root.
 */
async function discoverThemesInWorkspace(workspaceRoot) {
    const pattern = new vscode.RelativePattern(workspaceRoot, '**/*.dart');
    const excludes = '{**/.*/**,.dart_tool/**,build/**,**/build/**}';
    const files = await vscode.workspace.findFiles(pattern, excludes, 500);
    const allThemes = [];
    for (const fileUri of files) {
        try {
            const document = await vscode.workspace.openTextDocument(fileUri);
            const themes = discoverThemesInDocument(document);
            allThemes.push(...themes);
        }
        catch {
            // Skip files that can't be opened
        }
    }
    return allThemes;
}
/**
 * Compute the brace depth at a given offset to determine if a declaration is top-level.
 * Skips strings and comments.
 */
function computeBraceDepthAt(text, targetOffset) {
    let state = 'normal';
    let depth = 0;
    let escaped = false;
    for (let index = 0; index < targetOffset; index += 1) {
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
        if (char === '{') {
            depth += 1;
            continue;
        }
        if (char === '}') {
            depth = Math.max(0, depth - 1);
        }
    }
    return depth;
}
//# sourceMappingURL=themeDiscovery.js.map