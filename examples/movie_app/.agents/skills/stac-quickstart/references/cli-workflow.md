# CLI Workflow

## Core Commands

```bash
stac login
stac status
stac init
stac build --verbose
stac deploy --verbose
```

## Fast Verification Loop

1. Run `stac status` and confirm authenticated state.
2. Run `stac build` and verify generated json files.
3. Run `stac deploy` and verify uploaded screen count.

## Common Recovery Steps

- Login issues: `stac logout && stac login`
- No screens found: ensure `@StacScreen` annotations exist under `stac/`.
- Project mismatch: re-run `stac init` in correct root.
