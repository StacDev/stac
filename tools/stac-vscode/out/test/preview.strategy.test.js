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
const jsonGeneration_1 = require("../preview/jsonGeneration");
function createOutputChannel() {
    return {
        name: 'test',
        append: () => undefined,
        appendLine: () => undefined,
        clear: () => undefined,
        show: () => undefined,
        hide: () => undefined,
        replace: () => undefined,
        dispose: () => undefined,
    };
}
suite('Preview JSON strategy', () => {
    const baseOptions = {
        workspaceRoot: '/tmp/workspace',
        sourceFilePath: '/tmp/workspace/stac/home.dart',
        screenName: 'home',
        functionName: 'homeScreen',
        runnerSupported: true,
        buildCommand: 'stac build',
        outputDirCandidates: ['stac/.build'],
        outputChannel: createOutputChannel(),
    };
    test('runnerThenBuild uses runner result when fast path succeeds', async () => {
        const result = await (0, jsonGeneration_1.generatePreviewJson)({
            ...baseOptions,
            strategy: 'runnerThenBuild',
        }, {
            runRunner: async () => ({
                source: 'runner',
                json: { type: 'text' },
                jsonPath: '/tmp/runner.json',
            }),
            runBuildFallback: async () => {
                throw new Error('fallback should not run');
            },
        });
        assert.strictEqual(result.source, 'runner');
        assert.strictEqual(result.jsonPath, '/tmp/runner.json');
    });
    test('runnerThenBuild falls back when runner fails', async () => {
        const result = await (0, jsonGeneration_1.generatePreviewJson)({
            ...baseOptions,
            strategy: 'runnerThenBuild',
        }, {
            runRunner: async () => {
                throw new Error('runner failed');
            },
            runBuildFallback: async () => ({
                json: { type: 'scaffold' },
                jsonPath: '/tmp/build.json',
            }),
        });
        assert.strictEqual(result.source, 'build');
        assert.strictEqual(result.jsonPath, '/tmp/build.json');
    });
    test('runnerOnly fails when runner fails', async () => {
        await assert.rejects((0, jsonGeneration_1.generatePreviewJson)({
            ...baseOptions,
            strategy: 'runnerOnly',
        }, {
            runRunner: async () => {
                throw new Error('runner failed');
            },
            runBuildFallback: async () => ({
                json: { type: 'fallback' },
                jsonPath: '/tmp/fallback.json',
            }),
        }));
    });
    test('buildOnly skips runner and uses fallback directly', async () => {
        const result = await (0, jsonGeneration_1.generatePreviewJson)({
            ...baseOptions,
            strategy: 'buildOnly',
        }, {
            runRunner: async () => ({
                source: 'runner',
                json: { type: 'runner' },
                jsonPath: '/tmp/runner.json',
            }),
            runBuildFallback: async () => ({
                json: { type: 'build' },
                jsonPath: '/tmp/build.json',
            }),
        });
        assert.strictEqual(result.source, 'build');
        assert.strictEqual(result.jsonPath, '/tmp/build.json');
    });
});
//# sourceMappingURL=preview.strategy.test.js.map