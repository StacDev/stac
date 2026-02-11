import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import * as path from 'node:path';
import * as vscode from 'vscode';
import { COMMANDS, WRAP_PRESET_IDS } from './core/constants';
import { StacSnippetCompletionProvider } from './snippets/stacSnippetCompletionProvider';
import { applyWrapWorkspaceEdit } from './wrap/applyWrapEdit';
import { findWrappableExpression } from './wrap/findWrappableExpression';
import { pickCustomWrapperTemplate } from './wrap/pickCustomWrapper';
import { StacWrapCodeActionProvider } from './wrap/stacWrapCodeActionProvider';
import { getPresetWrapper } from './wrap/wrapperTemplates';

const execFileAsync = promisify(execFile);

export function activate(context: vscode.ExtensionContext) {
  registerWrapCodeActions(context);
  registerSnippets(context);
  registerWrapCommands(context);
  registerRegenerateCatalogCommand(context);
}

function registerWrapCodeActions(context: vscode.ExtensionContext) {
  const provider = new StacWrapCodeActionProvider();
  context.subscriptions.push(
    vscode.languages.registerCodeActionsProvider('dart', provider, {
      providedCodeActionKinds: [vscode.CodeActionKind.QuickFix],
    }),
  );
}

function registerSnippets(context: vscode.ExtensionContext) {
  const provider = new StacSnippetCompletionProvider();
  context.subscriptions.push(
    vscode.languages.registerCompletionItemProvider('dart', provider, '.'),
  );
}

function registerWrapCommands(context: vscode.ExtensionContext) {
  const commandByPreset = {
    StacContainer: COMMANDS.wrapWithStacContainer,
    StacPadding: COMMANDS.wrapWithStacPadding,
    StacCenter: COMMANDS.wrapWithStacCenter,
    StacAlign: COMMANDS.wrapWithStacAlign,
    StacSizedBox: COMMANDS.wrapWithStacSizedBox,
    StacExpanded: COMMANDS.wrapWithStacExpanded,
  } as const;

  for (const preset of WRAP_PRESET_IDS) {
    const command = commandByPreset[preset];
    const template = getPresetWrapper(preset);
    if (!template) {
      continue;
    }

    const disposable = vscode.commands.registerCommand(
      command,
      async (uri?: vscode.Uri, range?: vscode.Range) => {
        const contextTarget = await resolveWrapTarget(uri, range);
        if (!contextTarget) {
          return;
        }

        if (contextTarget.target.widgetName === template.wrapperName) {
          return;
        }

        await applyWrapWorkspaceEdit(
          contextTarget.document,
          contextTarget.target,
          template,
        );
      },
    );

    context.subscriptions.push(disposable);
  }

  const customDisposable = vscode.commands.registerCommand(
    COMMANDS.wrapWithStacWidget,
    async (uri?: vscode.Uri, range?: vscode.Range) => {
      const contextTarget = await resolveWrapTarget(uri, range);
      if (!contextTarget) {
        return;
      }

      const template = await pickCustomWrapperTemplate();
      if (!template) {
        return;
      }

      if (contextTarget.target.widgetName === template.wrapperName) {
        return;
      }

      await applyWrapWorkspaceEdit(
        contextTarget.document,
        contextTarget.target,
        template,
      );
    },
  );

  context.subscriptions.push(customDisposable);
}

async function resolveWrapTarget(uri?: vscode.Uri, range?: vscode.Range) {
  if (uri) {
    const document = await vscode.workspace.openTextDocument(uri);
    const targetRange = range ?? new vscode.Range(new vscode.Position(0, 0), new vscode.Position(0, 0));
    const target = findWrappableExpression(document, targetRange);

    if (!target) {
      return undefined;
    }

    return { document, target };
  }

  const editor = vscode.window.activeTextEditor;
  if (!editor) {
    return undefined;
  }

  const target = findWrappableExpression(editor.document, editor.selection);
  if (!target) {
    return undefined;
  }

  return { document: editor.document, target };
}

function registerRegenerateCatalogCommand(context: vscode.ExtensionContext) {
  const disposable = vscode.commands.registerCommand(
    COMMANDS.regenerateCatalog,
    async () => {
      const scriptPath = path.join(context.extensionPath, 'scripts', 'generate-catalog.mjs');

      try {
        await execFileAsync(process.execPath, [scriptPath], {
          cwd: context.extensionPath,
        });
        void vscode.window.showInformationMessage('Stac catalog regenerated.');
      } catch (error) {
        void vscode.window.showErrorMessage(
          `Failed to regenerate Stac catalog: ${String(error)}`,
        );
      }
    },
  );

  context.subscriptions.push(disposable);
}

export function deactivate() {}
