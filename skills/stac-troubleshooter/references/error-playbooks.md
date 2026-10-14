# Error Playbooks

## `stac: command not found`

- Install CLI.
- Restart shell.
- Verify with `stac --version`.

## `stac build` finds no files

- Confirm `stac/` directory exists.
- Confirm `.dart` files exist under `stac/`.
- Confirm at least one function uses `@StacScreen(...)`.

## A value does not update

- Check which level it was written to: a `path` without `$app.` goes to the
  screen, so other screens do not see it.
- Print all state with `debugDumpStacState()`, or add a `StacStateObserver`
  to `Stac.initialize(stateObservers: [...])` to log every change.
- Run `stac build` to catch expression syntax errors and invalid paths.

## Unknown widget/action type at runtime

- Confirm type spelling.
- Confirm custom parser is registered in `Stac.initialize`.
- Confirm generated json contains expected `type`/`actionType`.
