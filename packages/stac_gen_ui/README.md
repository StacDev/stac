# Stac Gen UI

AI-powered UI generation for [Stac](https://stac.dev) using the Claude API. Generate Flutter widgets from natural language prompts at runtime.

## How It Works

1. You provide a natural language prompt (e.g., "Create a login form")
2. The package sends it to the Claude API with a Stac widget catalog
3. Claude generates a stac-compatible JSON specification
4. The JSON is rendered as Flutter widgets via Stac's existing parser system

## Getting Started

### 1. Add the dependency

```yaml
dependencies:
  stac_gen_ui:
    path: ../stac_gen_ui  # or from pub.dev when published
```

### 2. Initialize

```dart
import 'package:stac/stac.dart';
import 'package:stac_gen_ui/stac_gen_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure your Claude API key
  StacGenUiConfig.initialize(apiKey: 'your-claude-api-key');

  // Register the genUi parser
  await Stac.initialize(
    parsers: [const StacGenUiParser()],
  );

  runApp(MyApp());
}
```

### 3. Use in your app

#### Programmatic usage (in Flutter code)

```dart
StacGenUiView(
  model: StacGenUiModel(
    prompt: 'Create a login form with email and password fields and a submit button',
  ),
)
```

#### JSON spec usage (server-driven)

```json
{
  "type": "genUi",
  "prompt": "Create a user profile card with avatar, name, email, and edit button",
  "loaderWidget": {
    "type": "center",
    "child": { "type": "circularProgressIndicator" }
  },
  "errorWidget": {
    "type": "center",
    "child": { "type": "text", "data": "Failed to generate UI" }
  }
}
```

#### Direct API usage

```dart
final jsonSpec = await ClaudeApiService.generateStacJson(
  prompt: 'Create a settings page with dark mode toggle',
);
final widget = Stac.fromJson(jsonSpec, context);
```

## Configuration

```dart
StacGenUiConfig.initialize(
  apiKey: 'your-claude-api-key',
  model: 'claude-sonnet-4-20250514',  // default
  maxTokens: 4096,                     // default
);
```

## Custom System Prompt

Add extra instructions for Claude using `systemPromptExtras`:

```dart
StacGenUiView(
  model: StacGenUiModel(
    prompt: 'Create a dashboard',
    systemPromptExtras: 'Use brand color #1A73E8 for all primary elements. '
        'Follow Material Design 3 guidelines.',
  ),
)
```

## Security Note

The API key is passed programmatically and stored in memory only. For production apps, consider proxying Claude API calls through your own backend to avoid exposing the key in the client.
