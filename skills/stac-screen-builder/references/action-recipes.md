# Action Recipes

## Navigation

- Preferred: use `StacNavigator` helpers.
- Push Stac screen: `StacNavigator.pushStac('screen_name')`
- Pop current route: `StacNavigator.pop()`
- Replace route: `StacNavigator.pushReplacementStac('screen_name')`

## Forms

- Validate before submit: `StacFormValidate`
- Field values: `{{$form.<id>}}` for fields with an `id`
- Read values (older screens): `StacGetFormValue`

## State

- Update state: `StacSetValueAction` with `path` and `op` (`set`, `toggle`,
  `increment`, `decrement`, `append`, `remove`, `merge`, `delete`).
- Keep an input and a value in sync: `bind` on the input.
- See `state-recipes.md`.

## Network

- Show remote data: `StacDataProvider` with a list's `items`.
- Load it again: `StacRefetchAction(id: ...)`, for example in a
  `StacRefreshIndicator`'s `onRefresh`.
- Send a request on a tap: `StacNetworkRequest`, with `saveTo` to store the
  body and `onSuccess`/`onError` reading `{{$result.status}}`,
  `{{$result.body}}`.

## Utilities

- Sequence actions: `StacMultiAction`
- Add delay for staged transitions: `StacDelayAction`
