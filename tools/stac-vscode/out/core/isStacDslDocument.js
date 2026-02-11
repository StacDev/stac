"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.isStacDslDocument = isStacDslDocument;
const STAC_ANNOTATION_REGEX = /@(StacScreen|StacThemeRef)\b/;
const STAC_IMPORT_REGEX = /package:stac_core\/stac_core\.dart/;
const STAC_PATH_SEGMENT_REGEX = /(^|\/)stac(\/|$)/;
function isStacDslDocument(document) {
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
//# sourceMappingURL=isStacDslDocument.js.map