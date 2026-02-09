# Setup Checklist

## Prerequisites

1. Confirm Flutter SDK is installed (`flutter --version`).
2. Confirm Dart SDK is installed (`dart --version`).
3. Confirm project has `pubspec.yaml`.
4. Confirm Stac CLI is installed (`stac --version`) or install it first.

## Install Stac CLI

macOS/Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/StacDev/install/main/install.sh | bash
```

Windows PowerShell:

```powershell
irm https://raw.githubusercontent.com/StacDev/install/main/install.ps1 | iex
```

## First-Time Setup Flow

1. `stac login`
2. `stac init`
3. Add or update `stac/*.dart` screen definitions.
4. `stac build`
5. `stac deploy`

## Success Criteria

- `lib/default_stac_options.dart` exists and contains a project id.
- `stac/` directory exists with at least one `@StacScreen` function.
- Build output is generated in `stac/.build`.
