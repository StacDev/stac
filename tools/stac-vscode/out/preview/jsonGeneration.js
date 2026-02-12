"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.RunnerError = void 0;
exports.generatePreviewJson = generatePreviewJson;
const node_child_process_1 = require("node:child_process");
const buildFallback_1 = require("./buildFallback");
const jsonResolver_1 = require("./jsonResolver");
const runnerScript_1 = require("./runnerScript");
class RunnerError extends Error {
    constructor(message) {
        super(message);
        this.name = 'RunnerError';
    }
}
exports.RunnerError = RunnerError;
const defaultDeps = {
    runRunner: runRunnerFastPath,
    runBuildFallback: buildFallback_1.runBuildFallback,
};
async function generatePreviewJson(options, deps = defaultDeps) {
    if (options.strategy === 'buildOnly') {
        options.outputChannel.appendLine('[preview] Strategy buildOnly selected.');
        return runFallback(options, deps);
    }
    try {
        options.outputChannel.appendLine('[preview] Strategy using runner fast path.');
        return await deps.runRunner(options);
    }
    catch (error) {
        if (options.strategy === 'runnerOnly') {
            throw error;
        }
        options.outputChannel.appendLine(`[preview] Runner failed, switching to build fallback: ${String(error)}`);
        return runFallback(options, deps);
    }
}
async function runRunnerFastPath(options) {
    if (!options.runnerSupported) {
        throw new RunnerError('Selected screen is not supported by direct runner. It must be top-level and zero-argument.');
    }
    const artifacts = await (0, runnerScript_1.writeRunnerArtifacts)(options.workspaceRoot, options.sourceFilePath, options.functionName, options.screenName);
    options.outputChannel.appendLine(`[preview] Running runner fast path: ${artifacts.scriptPath}`);
    const runnerCommand = ['run', artifacts.scriptPath, artifacts.outputPath];
    const result = await runCommand('dart', runnerCommand, options.workspaceRoot, options.outputChannel);
    if (result.exitCode !== 0) {
        throw new RunnerError(`Runner command failed (exit ${result.exitCode}).`);
    }
    const json = await (0, jsonResolver_1.readJsonFile)(artifacts.outputPath);
    return {
        source: 'runner',
        json,
        jsonPath: artifacts.outputPath,
    };
}
async function runFallback(options, deps) {
    const fallback = await deps.runBuildFallback({
        workspaceRoot: options.workspaceRoot,
        screenName: options.screenName,
        buildCommand: options.buildCommand,
        outputDirCandidates: options.outputDirCandidates,
        outputChannel: options.outputChannel,
    });
    return {
        source: 'build',
        json: fallback.json,
        jsonPath: fallback.jsonPath,
    };
}
function runCommand(command, args, cwd, outputChannel) {
    return new Promise((resolve, reject) => {
        const child = (0, node_child_process_1.spawn)(command, [...args], {
            cwd,
            env: process.env,
        });
        child.stdout.on('data', (chunk) => {
            outputChannel.append(chunk.toString());
        });
        child.stderr.on('data', (chunk) => {
            outputChannel.append(chunk.toString());
        });
        child.on('error', (error) => {
            reject(error);
        });
        child.on('close', (code) => {
            resolve({
                exitCode: code ?? 1,
            });
        });
    });
}
//# sourceMappingURL=jsonGeneration.js.map