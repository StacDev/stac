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
exports.resolveScreenJsonPath = resolveScreenJsonPath;
exports.readJsonFile = readJsonFile;
exports.expandWorkspacePathTokens = expandWorkspacePathTokens;
const node_fs_1 = require("node:fs");
const path = __importStar(require("node:path"));
function resolveScreenJsonPath(workspaceRoot, screenName, outputDirCandidates) {
    for (const candidate of outputDirCandidates) {
        const expanded = expandWorkspacePathTokens(candidate, workspaceRoot);
        const baseDir = path.isAbsolute(expanded) ? expanded : path.join(workspaceRoot, expanded);
        const jsonPath = path.join(baseDir, `${screenName}.json`);
        if (fileExistsSync(jsonPath)) {
            return jsonPath;
        }
    }
    return undefined;
}
async function readJsonFile(jsonPath) {
    const raw = await node_fs_1.promises.readFile(jsonPath, 'utf8');
    const decoded = JSON.parse(raw);
    if (!isRecord(decoded)) {
        throw new Error(`JSON root is not an object: ${jsonPath}`);
    }
    return decoded;
}
function expandWorkspacePathTokens(pathValue, workspaceRoot) {
    return pathValue.replaceAll('${workspaceFolder}', workspaceRoot);
}
function fileExistsSync(filePath) {
    return (0, node_fs_1.existsSync)(filePath);
}
function isRecord(value) {
    return typeof value === 'object' && value !== null && !Array.isArray(value);
}
//# sourceMappingURL=jsonResolver.js.map