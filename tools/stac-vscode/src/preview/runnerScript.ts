import { promises as fs } from 'node:fs';
import * as path from 'node:path';
import { createHash } from 'node:crypto';
import { pathToFileURL } from 'node:url';

export interface RunnerArtifacts {
  scriptPath: string;
  outputPath: string;
}

export function buildRunnerScript(
  sourceFilePath: string,
  functionName: string,
): string {
  const importUri = pathToFileURL(sourceFilePath).href;

  return [
    "import 'dart:convert';",
    "import 'dart:io';",
    `import '${importUri}' as target;`,
    '',
    'Future<void> main(List<String> args) async {',
    '  if (args.isEmpty) {',
    "    stderr.writeln('Missing output file path argument.');",
    '    exit(64);',
    '  }',
    '',
    '  final outputPath = args.first;',
    '  try {',
    `    final data = target.${functionName}().toJson();`,
    "    final encoder = JsonEncoder.withIndent('  ');",
    '    final file = File(outputPath);',
    '    await file.parent.create(recursive: true);',
    "    await file.writeAsString(encoder.convert(data) + '\\n');",
    '  } catch (error, stackTrace) {',
    "    stderr.writeln('Failed to render preview JSON: $error');",
    "    stderr.writeln('$stackTrace');",
    '    exit(1);',
    '  }',
    '}',
    '',
  ].join('\n');
}

export async function writeRunnerArtifacts(
  workspaceRoot: string,
  sourceFilePath: string,
  functionName: string,
  screenName: string,
): Promise<RunnerArtifacts> {
  const hash = createHash('sha1')
    .update(sourceFilePath)
    .update(functionName)
    .digest('hex')
    .slice(0, 12);
  const safeScreenName = sanitizePathSegment(screenName);
  const artifactsDir = path.join(workspaceRoot, '.dart_tool', 'stac_vscode');
  const scriptPath = path.join(artifactsDir, `preview_runner_${hash}.dart`);
  const outputPath = path.join(artifactsDir, `preview_${safeScreenName}_${hash}.json`);

  await fs.mkdir(artifactsDir, { recursive: true });
  await fs.writeFile(scriptPath, buildRunnerScript(sourceFilePath, functionName), 'utf8');

  return {
    scriptPath,
    outputPath,
  };
}

function sanitizePathSegment(value: string): string {
  const normalized = value.replace(/[^a-zA-Z0-9_-]/g, '_');
  return normalized.length > 0 ? normalized : 'screen';
}

export function buildThemeRunnerScript(
  sourceFilePath: string,
  functionOrGetterName: string,
  isGetter: boolean,
): string {
  const importUri = pathToFileURL(sourceFilePath).href;
  const invocation = isGetter
    ? `target.${functionOrGetterName}.toJson()`
    : `target.${functionOrGetterName}().toJson()`;

  return [
    "import 'dart:convert';",
    "import 'dart:io';",
    `import '${importUri}' as target;`,
    '',
    'Future<void> main(List<String> args) async {',
    '  if (args.isEmpty) {',
    "    stderr.writeln('Missing output file path argument.');",
    '    exit(64);',
    '  }',
    '',
    '  final outputPath = args.first;',
    '  try {',
    `    final data = ${invocation};`,
    "    final encoder = JsonEncoder.withIndent('  ');",
    '    final file = File(outputPath);',
    '    await file.parent.create(recursive: true);',
    "    await file.writeAsString(encoder.convert(data) + '\\n');",
    '  } catch (error, stackTrace) {',
    "    stderr.writeln('Failed to render theme JSON: $error');",
    "    stderr.writeln('$stackTrace');",
    '    exit(1);',
    '  }',
    '}',
    '',
  ].join('\n');
}

export async function writeThemeRunnerArtifacts(
  workspaceRoot: string,
  sourceFilePath: string,
  functionOrGetterName: string,
  themeName: string,
  isGetter: boolean,
): Promise<RunnerArtifacts> {
  const hash = createHash('sha1')
    .update(sourceFilePath)
    .update(functionOrGetterName)
    .digest('hex')
    .slice(0, 12);
  const safeThemeName = sanitizePathSegment(themeName);
  const artifactsDir = path.join(workspaceRoot, '.dart_tool', 'stac_vscode');
  const scriptPath = path.join(artifactsDir, `theme_runner_${hash}.dart`);
  const outputPath = path.join(artifactsDir, `theme_${safeThemeName}_${hash}.json`);

  await fs.mkdir(artifactsDir, { recursive: true });
  await fs.writeFile(
    scriptPath,
    buildThemeRunnerScript(sourceFilePath, functionOrGetterName, isGetter),
    'utf8',
  );

  return {
    scriptPath,
    outputPath,
  };
}
