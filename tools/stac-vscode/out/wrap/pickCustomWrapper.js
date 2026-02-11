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
exports.pickCustomWrapperTemplate = pickCustomWrapperTemplate;
exports.validateCustomWrapperName = validateCustomWrapperName;
const vscode = __importStar(require("vscode"));
const widgetCatalog_1 = require("../generated/widgetCatalog");
const wrapperTemplates_1 = require("./wrapperTemplates");
async function pickCustomWrapperTemplate() {
    const value = await vscode.window.showInputBox({
        title: 'Wrap with Stac widget',
        prompt: 'Enter a Stac widget class name (example: StacOpacity)',
        placeHolder: 'StacContainer',
        validateInput: (input) => validateCustomWrapperName(input),
    });
    if (!value) {
        return undefined;
    }
    const widget = widgetCatalog_1.widgetCatalogByClass.get(value.trim());
    if (!widget) {
        return undefined;
    }
    return (0, wrapperTemplates_1.templateFromWidgetCatalog)(widget);
}
function validateCustomWrapperName(input) {
    const value = input.trim();
    if (value.length === 0) {
        return undefined;
    }
    if (!value.startsWith('Stac')) {
        return 'Widget name must start with "Stac".';
    }
    const widget = widgetCatalog_1.widgetCatalogByClass.get(value);
    if (!widget) {
        return 'Unknown Stac widget.';
    }
    if (!widget.supportsChild && !widget.supportsChildren) {
        return 'This widget does not support child or children wrapping.';
    }
    return undefined;
}
//# sourceMappingURL=pickCustomWrapper.js.map