import * as vscode from 'vscode';
import { widgetCatalogByClass } from '../generated/widgetCatalog';
import { templateFromWidgetCatalog } from './wrapperTemplates';

export async function pickCustomWrapperTemplate() {
  const value = await vscode.window.showInputBox({
    title: 'Wrap with Stac widget',
    prompt: 'Enter a Stac widget class name (example: StacOpacity)',
    placeHolder: 'StacContainer',
    validateInput: (input) => validateCustomWrapperName(input),
  });

  if (!value) {
    return undefined;
  }

  const widget = widgetCatalogByClass.get(value.trim());
  if (!widget) {
    return undefined;
  }

  return templateFromWidgetCatalog(widget);
}

export function validateCustomWrapperName(input: string): string | undefined {
  const value = input.trim();

  if (value.length === 0) {
    return undefined;
  }

  if (!value.startsWith('Stac')) {
    return 'Widget name must start with "Stac".';
  }

  const widget = widgetCatalogByClass.get(value);
  if (!widget) {
    return 'Unknown Stac widget.';
  }

  if (!widget.supportsChild && !widget.supportsChildren) {
    return 'This widget does not support child or children wrapping.';
  }

  return undefined;
}
