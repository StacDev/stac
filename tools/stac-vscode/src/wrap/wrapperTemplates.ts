import type { WidgetCatalogEntry } from '../generated/widgetCatalog';

export type ChildMode = 'child' | 'children';

export interface WrapperTemplate {
  wrapperName: string;
  title: string;
  childMode: ChildMode;
  beforeChildArgs: string[];
}

export const PRESET_WRAPPERS: ReadonlyArray<WrapperTemplate> = [
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
    beforeChildArgs: ['alignment: StacAlignmentDirectional.center'],
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

export const PRESET_WRAPPER_NAMES = PRESET_WRAPPERS.map(
  (template) => template.wrapperName,
);

/** Placeholder template for "Wrap with Stac widget" — no pop-up; user types the class name inline. */
export const CUSTOM_WIDGET_PLACEHOLDER_TEMPLATE: WrapperTemplate = {
  wrapperName: 'StacWidget',
  title: 'Wrap with Stac widget',
  childMode: 'child',
  beforeChildArgs: [],
};

export function templateFromWidgetCatalog(
  widget: WidgetCatalogEntry,
): WrapperTemplate | undefined {
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

export function getPresetWrapper(wrapperName: string): WrapperTemplate | undefined {
  return PRESET_WRAPPERS.find((wrapper) => wrapper.wrapperName === wrapperName);
}
