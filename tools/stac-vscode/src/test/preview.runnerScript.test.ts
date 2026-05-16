import * as assert from 'assert';
import * as os from 'node:os';
import * as path from 'node:path';
import { promises as fs } from 'node:fs';
import { buildRunnerScript, writeRunnerArtifacts } from '../preview/runnerScript';

suite('Preview runner script', () => {
  test('buildRunnerScript includes function invocation', () => {
    const script = buildRunnerScript(
      '/tmp/stac/screens/home.dart',
      'homeScreen',
    );

    assert.ok(script.includes("import 'file:///tmp/stac/screens/home.dart' as target;"));
    assert.ok(script.includes('final data = target.homeScreen().toJson();'));
  });

  test('writeRunnerArtifacts creates script and output paths', async () => {
    const workspace = await fs.mkdtemp(path.join(os.tmpdir(), 'stac-vscode-preview-'));
    const sourceFile = path.join(workspace, 'stac', 'home.dart');
    await fs.mkdir(path.dirname(sourceFile), { recursive: true });
    await fs.writeFile(sourceFile, '// test', 'utf8');

    const artifacts = await writeRunnerArtifacts(
      workspace,
      sourceFile,
      'homeScreen',
      'home_screen',
    );

    const scriptExists = await fs.stat(artifacts.scriptPath);
    assert.ok(scriptExists.isFile());
    assert.ok(artifacts.outputPath.endsWith('.json'));
    assert.ok(artifacts.outputPath.includes('home_screen'));
  });
});
