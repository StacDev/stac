# Error Playbooks

## `stac: command not found`

- Install CLI.
- Restart shell.
- Verify with `stac --version`.

## `stac build` finds no files

- Confirm `stac/` directory exists.
- Confirm `.dart` files exist under `stac/`.
- Confirm at least one function uses `@StacScreen(...)`.

## Unknown widget/action type at runtime

- Confirm type spelling.
- Confirm custom parser is registered in `Stac.initialize`.
- Confirm generated json contains expected `type`/`actionType`.
