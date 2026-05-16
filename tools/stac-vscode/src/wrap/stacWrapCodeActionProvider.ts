import * as vscode from 'vscode';
import { COMMANDS, SETTINGS, WRAP_PRESET_IDS, type WrapPresetId } from '../core/constants';
import { findWrappableExpression } from './findWrappableExpression';
import { findChildExpression } from './removeWidget';
import { getPresetWrapper } from './wrapperTemplates';

const WRAP_COMMANDS: Record<WrapPresetId, string> = {
  StacContainer: COMMANDS.wrapWithStacContainer,
  StacPadding: COMMANDS.wrapWithStacPadding,
  StacCenter: COMMANDS.wrapWithStacCenter,
  StacAlign: COMMANDS.wrapWithStacAlign,
  StacSizedBox: COMMANDS.wrapWithStacSizedBox,
  StacExpanded: COMMANDS.wrapWithStacExpanded,
};

function getEnabledPresetIds(): WrapPresetId[] {
  const config = vscode.workspace.getConfiguration();
  const configured = config.get<string[]>(SETTINGS.wrapPresets, [...WRAP_PRESET_IDS]);

  const allowed = new Set<string>(WRAP_PRESET_IDS);
  return configured.filter((item): item is WrapPresetId => allowed.has(item));
}

export class StacWrapCodeActionProvider implements vscode.CodeActionProvider {
  provideCodeActions(
    document: vscode.TextDocument,
    range: vscode.Range,
  ): vscode.CodeAction[] {
    if (document.languageId !== 'dart') {
      return [];
    }

    const config = vscode.workspace.getConfiguration();
    const enabled = config.get<boolean>(SETTINGS.enableWrapQuickFix, true);
    if (!enabled) {
      return [];
    }

    const target = findWrappableExpression(document, range);
    if (!target) {
      return [];
    }

    const actions: vscode.CodeAction[] = [];
    for (const presetId of getEnabledPresetIds()) {
      if (target.widgetName === presetId) {
        continue;
      }

      const template = getPresetWrapper(presetId);
      if (!template) {
        continue;
      }

      const action = new vscode.CodeAction(template.title, vscode.CodeActionKind.QuickFix);
      action.command = {
        command: WRAP_COMMANDS[presetId],
        title: template.title,
        arguments: [document.uri, target.range],
      };
      actions.push(action);
    }

    const customAction = new vscode.CodeAction(
      'Wrap with Stac widget',
      vscode.CodeActionKind.QuickFix,
    );
    customAction.command = {
      command: COMMANDS.wrapWithStacWidget,
      title: 'Wrap with Stac widget',
      arguments: [document.uri, target.range],
    };
    actions.push(customAction);



    const childExpression = findChildExpression(target.expression);
    if (childExpression) {
      const removeAction = new vscode.CodeAction(
        'Remove this Stac Widget',
        vscode.CodeActionKind.QuickFix,
      );
      removeAction.command = {
        command: COMMANDS.removeStacWidget,
        title: 'Remove this Stac Widget',
        arguments: [document.uri, target.range],
      };
      actions.push(removeAction);
    }

    return actions;
  }
}
