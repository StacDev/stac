import { spawn } from 'node:child_process';
import * as vscode from 'vscode';
import { readJsonFile, resolveScreenJsonPath } from './jsonResolver';

export interface BuildFallbackOptions {
  workspaceRoot: string;
  screenName: string;
  buildCommand: string;
  outputDirCandidates: readonly string[];
  outputChannel: vscode.OutputChannel;
}

export interface BuildFallbackResult {
  json: Record<string, unknown>;
  jsonPath: string;
}

export async function runBuildFallback(
  options: BuildFallbackOptions,
): Promise<BuildFallbackResult> {
  const { workspaceRoot, screenName, buildCommand, outputDirCandidates, outputChannel } = options;
  outputChannel.appendLine(`[preview] Running build fallback: ${buildCommand}`);

  const commandResult = await runShellCommand(buildCommand, workspaceRoot, outputChannel);
  if (commandResult.exitCode !== 0) {
    throw new Error(
      `Build command failed (exit ${commandResult.exitCode}): ${buildCommand}`,
    );
  }

  const jsonPath = resolveScreenJsonPath(workspaceRoot, screenName, outputDirCandidates);
  if (!jsonPath) {
    throw new Error(`Unable to find ${screenName}.json after build fallback.`);
  }

  const json = await readJsonFile(jsonPath);
  return {
    json,
    jsonPath,
  };
}

interface ShellCommandResult {
  exitCode: number;
}

function runShellCommand(
  command: string,
  cwd: string,
  outputChannel: vscode.OutputChannel,
): Promise<ShellCommandResult> {
  return new Promise((resolve, reject) => {
    const child = spawn(command, {
      cwd,
      shell: true,
      env: process.env,
    });

    child.stdout.on('data', (chunk: Buffer | string) => {
      outputChannel.append(chunk.toString());
    });

    child.stderr.on('data', (chunk: Buffer | string) => {
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
