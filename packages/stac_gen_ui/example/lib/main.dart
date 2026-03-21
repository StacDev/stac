import 'package:flutter/material.dart';
import 'package:stac_gen_ui/stac_gen_ui.dart';

/// API key: use --dart-define=CLAUDE_API_KEY=your-key, or set [_kLocalApiKey] for local dev.
/// Avoid committing real keys to version control.
const String _kLocalApiKey = '';

const String _kApiKey = String.fromEnvironment(
  'CLAUDE_API_KEY',
  defaultValue: _kLocalApiKey,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (_kApiKey.isNotEmpty) {
    await StacGenUiConfig.initialize(apiKey: _kApiKey);
  }
  runApp(const StacGenUiExampleApp());
}

class StacGenUiExampleApp extends StatelessWidget {
  const StacGenUiExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stac Gen UI Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: _kApiKey.isEmpty
          ? const _ApiKeyRequiredScreen()
          : const _PromptListScreen(),
    );
  }
}

/// Shown when no API key is set; explains how to provide it.
class _ApiKeyRequiredScreen extends StatelessWidget {
  const _ApiKeyRequiredScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stac Gen UI Example'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.key_off_rounded,
                size: 64,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'Claude API key required',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Provide your Anthropic API key to run this example:\n\n'
                'flutter run --dart-define=CLAUDE_API_KEY=your-key',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Home screen: list of example prompts + option to enter a custom prompt.
class _PromptListScreen extends StatelessWidget {
  const _PromptListScreen();

  static const List<({String label, String prompt})> _presets = [
    (
      label: 'Login form',
      prompt:
          'Create a login form with email and password fields and a submit button',
    ),
    (
      label: 'Profile card',
      prompt:
          'Create a user profile card with avatar, name, email, and an edit button',
    ),
    (
      label: 'Settings page',
      prompt:
          'Create a settings page with a dark mode toggle and a list of options',
    ),
    (
      label: 'Dashboard tiles',
      prompt:
          'Create a dashboard with 4 colored tiles in a 2x2 grid showing stats',
    ),
    (
      label: 'Contact form',
      prompt:
          'Create a contact form with name, email, message fields and a send button',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stac Gen UI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Tap a prompt to generate UI with Claude',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          ..._presets.map(
            (preset) => Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(preset.label),
                subtitle: Text(
                  preset.prompt,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => _openGenUi(context, preset.prompt),
              ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () => _openCustomPrompt(context),
            icon: const Icon(Icons.edit_note),
            label: const Text('Enter custom prompt'),
          ),
        ],
      ),
    );
  }

  void _openGenUi(BuildContext context, String prompt) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) => _GenUiScreen(prompt: prompt),
      ),
    );
  }

  void _openCustomPrompt(BuildContext context) {
    final controller = TextEditingController();
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Custom prompt'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'e.g. Create a recipe card with image and ingredients',
            border: OutlineInputBorder(),
            alignLabelWithHint: true,
          ),
          maxLines: 3,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              final text = controller.text.trim();
              Navigator.of(dialogContext).pop();
              if (text.isNotEmpty) {
                _openGenUi(context, text);
              }
            },
            child: const Text('Generate'),
          ),
        ],
      ),
    );
  }
}

/// Screen that shows [StacGenUiView] for the given prompt.
class _GenUiScreen extends StatelessWidget {
  const _GenUiScreen({required this.prompt});

  final String prompt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generated UI'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: StacGenUiView(
        model: StacGenUiModel(
          prompt: prompt,
          systemPromptExtras:
              'Use Material Design 3. Keep the layout clean and readable.',
        ),
      ),
    );
  }
}
