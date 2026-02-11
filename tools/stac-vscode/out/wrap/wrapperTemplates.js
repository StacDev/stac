"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.PRESET_WRAPPER_NAMES = exports.PRESET_WRAPPERS = void 0;
exports.templateFromWidgetCatalog = templateFromWidgetCatalog;
exports.getPresetWrapper = getPresetWrapper;
exports.PRESET_WRAPPERS = [
    {
        wrapperName: 'StacContainer',
        title: 'Wrap with StacContainer',
        childMode: 'child',
        beforeChildArgs: [],
    },
    {
        wrapperName: 'StacPadding',
        title: 'Wrap with StacPadding',
        childMode: 'child',
        beforeChildArgs: ['padding: StacEdgeInsets.all(8)'],
    },
    {
        wrapperName: 'StacCenter',
        title: 'Wrap with StacCenter',
        childMode: 'child',
        beforeChildArgs: [],
    },
    {
        wrapperName: 'StacAlign',
        title: 'Wrap with StacAlign',
        childMode: 'child',
        beforeChildArgs: ['alignment: StacAlignment.center'],
    },
    {
        wrapperName: 'StacSizedBox',
        title: 'Wrap with StacSizedBox',
        childMode: 'child',
        beforeChildArgs: [],
    },
    {
        wrapperName: 'StacExpanded',
        title: 'Wrap with StacExpanded',
        childMode: 'child',
        beforeChildArgs: [],
    },
];
exports.PRESET_WRAPPER_NAMES = exports.PRESET_WRAPPERS.map((template) => template.wrapperName);
function templateFromWidgetCatalog(widget) {
    if (widget.supportsChild) {
        return {
            wrapperName: widget.className,
            title: `Wrap with ${widget.className}`,
            childMode: 'child',
            beforeChildArgs: [],
        };
    }
    if (widget.supportsChildren) {
        return {
            wrapperName: widget.className,
            title: `Wrap with ${widget.className}`,
            childMode: 'children',
            beforeChildArgs: [],
        };
    }
    return undefined;
}
function getPresetWrapper(wrapperName) {
    return exports.PRESET_WRAPPERS.find((wrapper) => wrapper.wrapperName === wrapperName);
}
//# sourceMappingURL=wrapperTemplates.js.map