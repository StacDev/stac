# Stac Gen UI Example

This example demonstrates [stac_gen_ui](https://github.com/StacDev/stac): generating Flutter UI from natural language using the Claude API.

## Prerequisites

- Flutter SDK
- An [Anthropic API key](https://console.anthropic.com/) for the Claude API

## Running the example

1. From the **example** directory, get dependencies:

   ```bash
   cd packages/stac_gen_ui/example
   flutter pub get
   ```

   Or from the repo root with melos:

   ```bash
   melos bootstrap
   ```

2. Run the app with your Claude API key:

   ```bash
   flutter run --dart-define=CLAUDE_API_KEY=your-anthropic-api-key
   ```

   Replace `your-anthropic-api-key` with your actual key (e.g. `sk-ant-...`).

3. Use the app:
   - Tap one of the preset prompts (e.g. "Login form", "Profile card") to generate that UI.
   - Or tap **Enter custom prompt** to type your own description (e.g. "Create a recipe card with image and ingredients").
   - The generated UI is rendered via Stac’s widget system.

## What this example shows

- **Initialization**: `StacGenUiConfig.initialize(apiKey: ...)` in `main()` (when a key is provided).
- **Prompt list**: A home screen with preset prompts and a custom-prompt dialog.
- **StacGenUiView**: A screen that takes a prompt and displays the AI-generated UI (with loading and error states).
- **Optional API key**: If no key is passed via `--dart-define=CLAUDE_API_KEY`, the app shows a short explanation and the exact run command.

## Security

Do not commit your API key or ship it in production clients. This example uses `--dart-define` for local runs only. For production, call Claude from your own backend and keep the key server-side.
