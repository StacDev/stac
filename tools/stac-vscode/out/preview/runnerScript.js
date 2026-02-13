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
exports.buildRunnerScript = buildRunnerScript;
exports.writeRunnerArtifacts = writeRunnerArtifacts;
exports.buildThemeRunnerScript = buildThemeRunnerScript;
exports.writeThemeRunnerArtifacts = writeThemeRunnerArtifacts;
const node_fs_1 = require("node:fs");
const path = __importStar(require("node:path"));
const node_crypto_1 = require("node:crypto");
const node_url_1 = require("node:url");
function buildRunnerScript(sourceFilePath, functionName) {
    const importUri = (0, node_url_1.pathToFileURL)(sourceFilePath).href;
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
async function writeRunnerArtifacts(workspaceRoot, sourceFilePath, functionName, screenName) {
    const hash = (0, node_crypto_1.createHash)('sha1')
        .update(sourceFilePath)
        .update(functionName)
        .digest('hex')
        .slice(0, 12);
    const safeScreenName = sanitizePathSegment(screenName);
    const artifactsDir = path.join(workspaceRoot, '.dart_tool', 'stac_vscode');
    const scriptPath = path.join(artifactsDir, `preview_runner_${hash}.dart`);
    const outputPath = path.join(artifactsDir, `preview_${safeScreenName}_${hash}.json`);
    await node_fs_1.promises.mkdir(artifactsDir, { recursive: true });
    await node_fs_1.promises.writeFile(scriptPath, buildRunnerScript(sourceFilePath, functionName), 'utf8');
    return {
        scriptPath,
        outputPath,
    };
}
function sanitizePathSegment(value) {
    const normalized = value.replace(/[^a-zA-Z0-9_-]/g, '_');
    return normalized.length > 0 ? normalized : 'screen';
}
function buildThemeRunnerScript(sourceFilePath, functionOrGetterName, isGetter) {
    const importUri = (0, node_url_1.pathToFileURL)(sourceFilePath).href;
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
async function writeThemeRunnerArtifacts(workspaceRoot, sourceFilePath, functionOrGetterName, themeName, isGetter) {
    const hash = (0, node_crypto_1.createHash)('sha1')
        .update(sourceFilePath)
        .update(functionOrGetterName)
        .digest('hex')
        .slice(0, 12);
    const safeThemeName = sanitizePathSegment(themeName);
    const artifactsDir = path.join(workspaceRoot, '.dart_tool', 'stac_vscode');
    const scriptPath = path.join(artifactsDir, `theme_runner_${hash}.dart`);
    const outputPath = path.join(artifactsDir, `theme_${safeThemeName}_${hash}.json`);
    await node_fs_1.promises.mkdir(artifactsDir, { recursive: true });
    await node_fs_1.promises.writeFile(scriptPath, buildThemeRunnerScript(sourceFilePath, functionOrGetterName, isGetter), 'utf8');
    return {
        scriptPath,
        outputPath,
    };
}
//# sourceMappingURL=runnerScript.js.map