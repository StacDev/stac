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
const runnerScript_1 = require("../preview/runnerScript");
suite('Preview runner script', () => {
    test('buildRunnerScript includes function invocation', () => {
        const script = (0, runnerScript_1.buildRunnerScript)('/tmp/stac/screens/home.dart', 'homeScreen');
        assert.ok(script.includes("import 'file:///tmp/stac/screens/home.dart' as target;"));
        assert.ok(script.includes('final data = target.homeScreen().toJson();'));
    });
    test('writeRunnerArtifacts creates script and output paths', async () => {
        const workspace = await node_fs_1.promises.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-preview-'));
        const sourceFile = path.join(workspace, 'stac', 'home.dart');
        await node_fs_1.promises.mkdir(path.dirname(sourceFile), { recursive: true });
        await node_fs_1.promises.writeFile(sourceFile, '// test', 'utf8');
        const artifacts = await (0, runnerScript_1.writeRunnerArtifacts)(workspace, sourceFile, 'homeScreen', 'home_screen');
        const scriptExists = await node_fs_1.promises.stat(artifacts.scriptPath);
        assert.ok(scriptExists.isFile());
        assert.ok(artifacts.outputPath.endsWith('.json'));
        assert.ok(artifacts.outputPath.includes('home_screen'));
    });
});
//# sourceMappingURL=preview.runnerScript.test.js.map