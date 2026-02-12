"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.runBuildFallback = runBuildFallback;
const node_child_process_1 = require("node:child_process");
const jsonResolver_1 = require("./jsonResolver");
async function runBuildFallback(options) {
    const { workspaceRoot, screenName, buildCommand, outputDirCandidates, outputChannel } = options;
    outputChannel.appendLine(`[preview] Running build fallback: ${buildCommand}`);
    const commandResult = await runShellCommand(buildCommand, workspaceRoot, outputChannel);
    if (commandResult.exitCode !== 0) {
        throw new Error(`Build command failed (exit ${commandResult.exitCode}): ${buildCommand}`);
    }
    const jsonPath = (0, jsonResolver_1.resolveScreenJsonPath)(workspaceRoot, screenName, outputDirCandidates);
    if (!jsonPath) {
        throw new Error(`Unable to find ${screenName}.json after build fallback.`);
    }
    const json = await (0, jsonResolver_1.readJsonFile)(jsonPath);
    return {
        json,
        jsonPath,
    };
}
function runShellCommand(command, cwd, outputChannel) {
    return new Promise((resolve, reject) => {
        const child = (0, node_child_process_1.spawn)(command, {
            cwd,
            shell: true,
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
//# sourceMappingURL=buildFallback.js.map