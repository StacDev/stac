# Action Recipes

## Navigation

- Preferred: use `StacNavigator` helpers.
- Push Stac screen: `StacNavigator.pushStac('screen_name')`
- Pop current route: `StacNavigator.pop()`
- Replace route: `StacNavigator.pushReplacementStac('screen_name')`

## Forms

- Validate before submit: `StacFormValidate`
- Read values: `StacGetFormValue`
- Update state: `StacSetValueAction`

## Network

- Request API data: `StacNetworkRequest`
- Pair with `StacDynamicView` for templated list rendering.

## Utilities

- Sequence actions: `StacMultiAction`
- Add delay for staged transitions: `StacDelayAction`
