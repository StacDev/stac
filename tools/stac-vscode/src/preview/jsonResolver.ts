import { existsSync, promises as fs } from 'node:fs';
import * as path from 'node:path';

export function resolveScreenJsonPath(
  workspaceRoot: string,
  screenName: string,
  outputDirCandidates: readonly string[],
): string | undefined {
  for (const candidate of outputDirCandidates) {
    const expanded = expandWorkspacePathTokens(candidate, workspaceRoot);
    const baseDir = path.isAbsolute(expanded) ? expanded : path.join(workspaceRoot, expanded);
    const jsonPath = path.join(baseDir, `${screenName}.json`);
    if (fileExistsSync(jsonPath)) {
      return jsonPath;
    }
  }

  return undefined;
}

export async function readJsonFile(jsonPath: string): Promise<Record<string, unknown>> {
  const raw = await fs.readFile(jsonPath, 'utf8');
  const decoded = JSON.parse(raw) as unknown;
  if (!isRecord(decoded)) {
    throw new Error(`JSON root is not an object: ${jsonPath}`);
  }

  return decoded;
}

export function expandWorkspacePathTokens(pathValue: string, workspaceRoot: string): string {
  return pathValue.replaceAll('${workspaceFolder}', workspaceRoot);
}

function fileExistsSync(filePath: string): boolean {
  return existsSync(filePath);
}

function isRecord(value: unknown): value is Record<string, unknown> {
  return typeof value === 'object' && value !== null && !Array.isArray(value);
}
