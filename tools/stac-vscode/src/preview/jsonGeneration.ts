import { spawn } from 'node:child_process';
import * as path from 'node:path';
import * as vscode from 'vscode';
import { runBuildFallback, type BuildFallbackOptions, type BuildFallbackResult } from './buildFallback';
import { readJsonFile } from './jsonResolver';
import { writeRunnerArtifacts } from './runnerScript';
import type { JsonGenerationResult, PreviewJsonStrategy } from './types';

export interface JsonGenerationOptions {
  workspaceRoot: string;
  sourceFilePath: string;
  screenName: string;
  functionName: string;
  runnerSupported: boolean;
  strategy: PreviewJsonStrategy;
  buildCommand: string;
  outputDirCandidates: readonly string[];
  outputChannel: vscode.OutputChannel;
}

export class RunnerError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'RunnerError';
  }
}

interface JsonGenerationDeps {
  runRunner: (options: JsonGenerationOptions) => Promise<JsonGenerationResult>;
  runBuildFallback: (options: BuildFallbackOptions) => Promise<BuildFallbackResult>;
}

const defaultDeps: JsonGenerationDeps = {
  runRunner: runRunnerFastPath,
  runBuildFallback,
};

export async function generatePreviewJson(
  options: JsonGenerationOptions,
  deps: JsonGenerationDeps = defaultDeps,
): Promise<JsonGenerationResult> {
  if (options.strategy === 'buildOnly') {
    options.outputChannel.appendLine('[preview] Strategy buildOnly selected.');
    return runFallback(options, deps);
  }

  try {
    options.outputChannel.appendLine('[preview] Strategy using runner fast path.');
    return await deps.runRunner(options);
  } catch (error) {
    if (options.strategy === 'runnerOnly') {
      throw error;
    }

    options.outputChannel.appendLine(
      `[preview] Runner failed, switching to build fallback: ${String(error)}`,
    );
    return runFallback(options, deps);
  }
}

async function runRunnerFastPath(
  options: JsonGenerationOptions,
): Promise<JsonGenerationResult> {
  if (!options.runnerSupported) {
    throw new RunnerError(
      'Selected screen is not supported by direct runner. It must be top-level and zero-argument.',
    );
  }

  const artifacts = await writeRunnerArtifacts(
    options.workspaceRoot,
    options.sourceFilePath,
    options.functionName,
    options.screenName,
  );

  options.outputChannel.appendLine(
    `[preview] Running runner fast path: ${artifacts.scriptPath}`,
  );
  // Use relative path from workspace root so dart run can resolve packages correctly
  const relativeScriptPath = path.relative(options.workspaceRoot, artifacts.scriptPath);
  const runnerCommand = ['run', relativeScriptPath, artifacts.outputPath];
  const result = await runCommand('dart', runnerCommand, options.workspaceRoot, options.outputChannel);
  if (result.exitCode !== 0) {
    throw new RunnerError(`Runner command failed (exit ${result.exitCode}).`);
  }

  const json = await readJsonFile(artifacts.outputPath);
  return {
    source: 'runner',
    json,
    jsonPath: artifacts.outputPath,
  };
}

async function runFallback(
  options: JsonGenerationOptions,
  deps: JsonGenerationDeps,
): Promise<JsonGenerationResult> {
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

interface CommandResult {
  exitCode: number;
}

function runCommand(
  command: string,
  args: readonly string[],
  cwd: string,
  outputChannel: vscode.OutputChannel,
): Promise<CommandResult> {
  return new Promise((resolve, reject) => {
    const child = spawn(command, [...args], {
      cwd,
      env: process.env,
      shell: process.platform === 'win32',
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
