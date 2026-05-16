import * as assert from 'assert';
import * as vscode from 'vscode';
import { generatePreviewJson } from '../preview/jsonGeneration';

function createOutputChannel(): vscode.OutputChannel {
  return {
    name: 'test',
    append: () => undefined,
    appendLine: () => undefined,
    clear: () => undefined,
    show: () => undefined,
    hide: () => undefined,
    replace: () => undefined,
    dispose: () => undefined,
  } as unknown as vscode.OutputChannel;
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
  } as const;

  test('runnerThenBuild uses runner result when fast path succeeds', async () => {
    const result = await generatePreviewJson(
      {
        ...baseOptions,
        strategy: 'runnerThenBuild',
      },
      {
        runRunner: async () => ({
          source: 'runner',
          json: { type: 'text' },
          jsonPath: '/tmp/runner.json',
        }),
        runBuildFallback: async () => {
          throw new Error('fallback should not run');
        },
      } as any,
    );

    assert.strictEqual(result.source, 'runner');
    assert.strictEqual(result.jsonPath, '/tmp/runner.json');
  });

  test('runnerThenBuild falls back when runner fails', async () => {
    const result = await generatePreviewJson(
      {
        ...baseOptions,
        strategy: 'runnerThenBuild',
      },
      {
        runRunner: async () => {
          throw new Error('runner failed');
        },
        runBuildFallback: async () => ({
          json: { type: 'scaffold' },
          jsonPath: '/tmp/build.json',
        }),
      } as any,
    );

    assert.strictEqual(result.source, 'build');
    assert.strictEqual(result.jsonPath, '/tmp/build.json');
  });

  test('runnerOnly fails when runner fails', async () => {
    await assert.rejects(
      generatePreviewJson(
        {
          ...baseOptions,
          strategy: 'runnerOnly',
        },
        {
          runRunner: async () => {
            throw new Error('runner failed');
          },
          runBuildFallback: async () => ({
            json: { type: 'fallback' },
            jsonPath: '/tmp/fallback.json',
          }),
        } as any,
      ),
    );
  });

  test('buildOnly skips runner and uses fallback directly', async () => {
    const result = await generatePreviewJson(
      {
        ...baseOptions,
        strategy: 'buildOnly',
      },
      {
        runRunner: async () => ({
          source: 'runner',
          json: { type: 'runner' },
          jsonPath: '/tmp/runner.json',
        }),
        runBuildFallback: async () => ({
          json: { type: 'build' },
          jsonPath: '/tmp/build.json',
        }),
      } as any,
    );

    assert.strictEqual(result.source, 'build');
    assert.strictEqual(result.jsonPath, '/tmp/build.json');
  });
});
