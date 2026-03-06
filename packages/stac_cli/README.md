# stac_cli

Official command-line interface for the [Stac](https://pub.dev/packages/stac) SDUI framework. Use this CLI to quickly initialize Stac configurations, build projects, log in to Stac Cloud, and manage deployments.

📚 **[Full CLI Documentation available at docs.stac.dev/cli](https://docs.stac.dev/cli)**

## Install

**macOS / Linux**
```bash
curl -fsSL https://raw.githubusercontent.com/StacDev/install/main/install.sh | bash
```

**Windows (PowerShell)**
```powershell
irm https://raw.githubusercontent.com/StacDev/install/main/install.ps1 | iex
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

