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
exports.collectStacExpressionRanges = collectStacExpressionRanges;
exports.findWrappableExpression = findWrappableExpression;
const vscode = __importStar(require("vscode"));
function collectStacExpressionRanges(text) {
    const matches = [...text.matchAll(/\b(Stac[A-Za-z0-9_]+)\s*\(/g)];
    const ranges = [];
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
function findMatchingParen(text, openParenOffset) {
    let depth = 0;
    for (let index = openParenOffset; index < text.length; index += 1) {
        const char = text[index];
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
function findWrappableExpression(document, selection) {
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
    ranges.sort((first, second) => first.endOffset - first.startOffset - (second.endOffset - second.startOffset));
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
//# sourceMappingURL=findWrappableExpression.js.map