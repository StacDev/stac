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
exports.discoverScreens = discoverScreens;
exports.chooseScreenDescriptor = chooseScreenDescriptor;
exports.pickScreenDescriptor = pickScreenDescriptor;
const vscode = __importStar(require("vscode"));
const SCREEN_DECLARATION_REGEX = /@StacScreen\s*\(\s*screenName\s*:\s*(['"])([^'"]+)\1[\s\S]*?\)\s*StacWidget\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(([^)]*)\)/g;
function discoverScreens(document) {
    const text = document.getText();
    const screens = [];
    for (const match of text.matchAll(SCREEN_DECLARATION_REGEX)) {
        const fullMatch = match[0];
        const annotationOffset = match.index;
        const screenName = match[2];
        const functionName = match[3];
        const parameters = (match[4] ?? '').trim();
        if (fullMatch === undefined ||
            annotationOffset === undefined ||
            screenName === undefined ||
            functionName === undefined) {
            continue;
        }
        const functionSignatureIndex = fullMatch.indexOf(`StacWidget ${functionName}`);
        const functionOffset = functionSignatureIndex >= 0
            ? annotationOffset + functionSignatureIndex
            : annotationOffset;
        const openBraceOffset = text.indexOf('{', functionOffset);
        const functionEndOffset = openBraceOffset >= 0
            ? findMatchingBraceOffset(text, openBraceOffset) ?? openBraceOffset
            : functionOffset;
        const hasParameters = parameters.length > 0;
        const topLevel = computeBraceDepthAt(text, annotationOffset) === 0;
        screens.push({
            screenName,
            functionName,
            annotationOffset,
            functionOffset,
            functionEndOffset,
            hasParameters,
            topLevel,
            runnerSupported: topLevel && !hasParameters,
        });
    }
    return screens;
}
function chooseScreenDescriptor(screens, cursorOffset, preferredScreenName) {
    if (screens.length === 0) {
        return undefined;
    }
    if (cursorOffset !== undefined) {
        for (const screen of screens) {
            if (cursorOffset >= screen.annotationOffset && cursorOffset <= screen.functionEndOffset) {
                return screen;
            }
        }
    }
    if (preferredScreenName) {
        const preferred = screens.find((screen) => screen.screenName === preferredScreenName);
        if (preferred) {
            return preferred;
        }
    }
    return screens[0];
}
async function pickScreenDescriptor(screens) {
    if (screens.length === 0) {
        return undefined;
    }
    const selected = await vscode.window.showQuickPick(screens.map((screen) => ({
        label: screen.screenName,
        description: screen.functionName,
        detail: screen.runnerSupported
            ? 'Runner supported'
            : 'Runner unsupported, build fallback only',
        screen,
    })), {
        title: 'Select Stac screen for preview',
        placeHolder: 'Pick a @StacScreen target',
    });
    return selected?.screen;
}
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
function findMatchingBraceOffset(text, openBraceOffset) {
    let state = 'normal';
    let escaped = false;
    let depth = 0;
    for (let index = openBraceOffset; index < text.length; index += 1) {
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
            depth -= 1;
            if (depth === 0) {
                return index;
            }
        }
    }
    return undefined;
}
//# sourceMappingURL=screenDiscovery.js.map