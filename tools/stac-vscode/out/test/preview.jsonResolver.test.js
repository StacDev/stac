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
const assert = __importStar(require("assert"));
const os = __importStar(require("node:os"));
const path = __importStar(require("node:path"));
const node_fs_1 = require("node:fs");
const jsonResolver_1 = require("../preview/jsonResolver");
suite('Preview JSON resolver', () => {
    test('resolveScreenJsonPath finds json in stac/.build', async () => {
        const workspace = await node_fs_1.promises.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-json-'));
        const outputDir = path.join(workspace, 'stac', '.build');
        await node_fs_1.promises.mkdir(outputDir, { recursive: true });
        const jsonPath = path.join(outputDir, 'hello_world.json');
        await node_fs_1.promises.writeFile(jsonPath, '{"type":"text"}', 'utf8');
        const resolved = (0, jsonResolver_1.resolveScreenJsonPath)(workspace, 'hello_world', ['stac/.build']);
        assert.strictEqual(resolved, jsonPath);
    });
    test('expandWorkspacePathTokens replaces workspace token', () => {
        const expanded = (0, jsonResolver_1.expandWorkspacePathTokens)('${workspaceFolder}/build/screens', '/tmp/demo');
        assert.strictEqual(expanded, '/tmp/demo/build/screens');
    });
    test('readJsonFile parses object json', async () => {
        const tempDir = await node_fs_1.promises.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-json-read-'));
        const jsonPath = path.join(tempDir, 'screen.json');
        await node_fs_1.promises.writeFile(jsonPath, '{"type":"scaffold"}', 'utf8');
        const payload = await (0, jsonResolver_1.readJsonFile)(jsonPath);
        assert.strictEqual(payload.type, 'scaffold');
    });
});
//# sourceMappingURL=preview.jsonResolver.test.js.map