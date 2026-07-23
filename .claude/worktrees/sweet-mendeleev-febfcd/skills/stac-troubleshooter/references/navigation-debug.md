# Navigation Debug

## Quick Checks

- Validate `navigationStyle` matches intent (`push`, `pop`, `pushReplacement`, etc.).
- Validate route source: Stac route, Flutter route, asset, or network.
- Validate `routeName` exists in target system.

## Preferred API

Use `StacNavigator` helpers for clarity:

- `StacNavigator.pushStac('screen_name')`
- `StacNavigator.pushReplacementStac('screen_name')`
- `StacNavigator.pop()`
