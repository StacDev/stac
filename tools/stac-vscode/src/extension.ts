import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import * as path from 'node:path';
import * as vscode from 'vscode';
import { COMMANDS, WRAP_PRESET_IDS } from './core/constants';
import { PreviewManager } from './preview/previewManager';
import { StacSnippetCompletionProvider } from './snippets/stacSnippetCompletionProvider';
import { applyWrapWorkspaceEdit } from './wrap/applyWrapEdit';
import { createRemoveWidgetEdit } from './wrap/removeWidget';
import { findWrappableExpression } from './wrap/findWrappableExpression';
import { StacWrapCodeActionProvider } from './wrap/stacWrapCodeActionProvider';
import {
  CUSTOM_WIDGET_PLACEHOLDER_TEMPLATE,
  getPresetWrapper,
} from './wrap/wrapperTemplates';

const execFileAsync = promisify(execFile);
let previewManager: PreviewManager | undefined;

export function activate(context: vscode.ExtensionContext) {
  registerWrapCodeActions(context);
  registerSnippets(context);
  registerWrapCommands(context);
  registerRegenerateCatalogCommand(context);
  previewManager = new PreviewManager(context);
  previewManager.register();
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
    vscode.languages.registerCompletionItemProvider('dart', provider, ' '),
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

      const { document, target } = contextTarget;
      const applied = await applyWrapWorkspaceEdit(
        document,
        target,
        CUSTOM_WIDGET_PLACEHOLDER_TEMPLATE,
      );
      if (!applied) {
        return;
      }

      // Select "StacWidget" so user can type the widget/class name inline (Flutter-style)
      const placeholderLength = CUSTOM_WIDGET_PLACEHOLDER_TEMPLATE.wrapperName.length;
      const selection = new vscode.Range(
        target.range.start,
        target.range.start.translate(0, placeholderLength),
      );
      const editor = await vscode.window.showTextDocument(document.uri, {
        selection,
        preserveFocus: false,
      });
      editor.revealRange(selection);
    },
  );
  context.subscriptions.push(customDisposable);

  const removeDisposable = vscode.commands.registerCommand(
    COMMANDS.removeStacWidget,
    async (uri?: vscode.Uri, range?: vscode.Range) => {
      const contextTarget = await resolveWrapTarget(uri, range);
      if (!contextTarget) {
        return;
      }

      const { document, target } = contextTarget;
      const edit = createRemoveWidgetEdit(document, target);
      if (!edit) {
        return;
      }

      await vscode.workspace.applyEdit(edit);
    },
  );
  context.subscriptions.push(removeDisposable);
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

export async function deactivate() {
  if (previewManager) {
    await previewManager.dispose();
    previewManager = undefined;
  }
}
