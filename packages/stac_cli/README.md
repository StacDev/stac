# stac_cli

Official CLI for managing Stac SDUI projects.

## Install

```bash
dart pub global activate --source path .
```

## Quick start

```bash
stac --version
stac login
stac init
stac build
stac deploy
```

## Environment

The CLI reads credentials from:

- `~/.stac/.env` (prod)
- `~/.stac/.env.dev` (dev)

Required keys:

- `STAC_BASE_API_URL`
- `STAC_GOOGLE_CLIENT_ID`
- `STAC_GOOGLE_CLIENT_SECRET` (optional)
- `STAC_FIREBASE_API_KEY`

Set environment in code via `currentEnvironment` in `lib/src/config/env.dart`.

