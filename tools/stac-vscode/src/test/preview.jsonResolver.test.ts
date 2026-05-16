import * as assert from 'assert';
import * as os from 'node:os';
import * as path from 'node:path';
import { promises as fs } from 'node:fs';
import {
  expandWorkspacePathTokens,
  readJsonFile,
  resolveScreenJsonPath,
} from '../preview/jsonResolver';

suite('Preview JSON resolver', () => {
  test('resolveScreenJsonPath finds json in stac/.build', async () => {
    const workspace = await fs.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-json-'));
    const outputDir = path.join(workspace, 'stac', '.build');
    await fs.mkdir(outputDir, { recursive: true });
    const jsonPath = path.join(outputDir, 'hello_world.json');
    await fs.writeFile(jsonPath, '{"type":"text"}', 'utf8');

    const resolved = resolveScreenJsonPath(workspace, 'hello_world', ['stac/.build']);
    assert.strictEqual(resolved, jsonPath);
  });

  test('expandWorkspacePathTokens replaces workspace token', () => {
    const expanded = expandWorkspacePathTokens(
      '${workspaceFolder}/build/screens',
      '/tmp/demo',
    );
    assert.strictEqual(expanded, '/tmp/demo/build/screens');
  });

  test('readJsonFile parses object json', async () => {
    const tempDir = await fs.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-json-read-'));
    const jsonPath = path.join(tempDir, 'screen.json');
    await fs.writeFile(jsonPath, '{"type":"scaffold"}', 'utf8');

    const payload = await readJsonFile(jsonPath);
    assert.strictEqual(payload.type, 'scaffold');
  });
});
