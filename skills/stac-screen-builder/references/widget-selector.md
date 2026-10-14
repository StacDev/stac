# Widget Selector

## Layout-First Mapping

- Page shell: `StacScaffold`
- Vertical composition: `StacColumn`
- Horizontal composition: `StacRow`
- Scrollable content: `StacListView` or `StacSingleChildScrollView`
- Section spacing: `StacPadding` and `StacSizedBox`

## Interaction Mapping

- Primary button CTA: `StacFilledButton` or `StacElevatedButton`
- Icon action: `StacIconButton`
- Form group: `StacForm` + `StacTextFormField`
- Inputs tied to state: `bind` on text fields, switches, checkboxes, sliders,
  radio groups, dropdowns and autocomplete
- Conditional UI: `StacConditional`

## Data Mapping

- Remote content: `StacDataProvider` + `items`/`itemTemplate` on the list
- Lists from state: `items`/`itemTemplate` on layouts, `StacForEach` among
  other children
- Local state for part of a screen: `StacStateScope`
- Loading state: the provider's `loaderWidget`, or `{{id.isLoading}}`
- Empty state: `emptyWidget` on the list
- Existing `StacDynamicView` screens keep working; prefer the above for new
  ones
