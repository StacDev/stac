import 'package:flutter/material.dart';
import 'package:stac_gen_ui/stac_gen_ui.dart';
import 'package:example/src/app.dart';

/// API key: use --dart-define=CLAUDE_API_KEY=your-key, or set [_kLocalApiKey] for local dev.
/// Avoid committing real keys to version control.
const String _kLocalApiKey = '';

const String _kApiKey = String.fromEnvironment(
  'CLAUDE_API_KEY',
  defaultValue: _kLocalApiKey,
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await StacGenUiConfig.initialize(apiKey: _kApiKey);
  runApp(const StacGenUiExampleApp());
}

