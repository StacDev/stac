import * as vscode from 'vscode';

const STAC_ANNOTATION_REGEX = /@(StacScreen|StacThemeRef)\b/;
const STAC_IMPORT_REGEX = /package:stac_core\/stac_core\.dart/;
const STAC_PATH_SEGMENT_REGEX = /(^|\/)stac(\/|$)/;

export function isStacDslDocument(document: vscode.TextDocument): boolean {
  if (document.languageId !== 'dart') {
    return false;
  }

  const normalizedPath = document.uri.fsPath.replace(/\\/g, '/');
  if (STAC_PATH_SEGMENT_REGEX.test(normalizedPath)) {
    return true;
  }

  const text = document.getText();
  return STAC_ANNOTATION_REGEX.test(text) || STAC_IMPORT_REGEX.test(text);
}
