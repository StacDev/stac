import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required this.initialApiKey,
    required this.initialMaxTokens,
    required this.onSaveGenerationSettings,
  });

  final String initialApiKey;
  final int initialMaxTokens;
  final void Function(String apiKey, int maxTokens) onSaveGenerationSettings;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final TextEditingController _apiKeyController;
  late final TextEditingController _maxTokensController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _apiKeyController = TextEditingController(text: widget.initialApiKey);
    _maxTokensController = TextEditingController(
      text: widget.initialMaxTokens.toString(),
    );
  }

  @override
  void dispose() {
    _apiKeyController.dispose();
    _maxTokensController.dispose();
    super.dispose();
  }

  void _save() {
    final form = _formKey.currentState;
    if (form == null || !form.validate()) return;

    final apiKey = _apiKeyController.text.trim();
    final maxTokens = int.parse(_maxTokensController.text.trim());
    widget.onSaveGenerationSettings(apiKey, maxTokens);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Generation settings saved.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const PhosphorIcon(PhosphorIconsRegular.sliders),
                      const SizedBox(width: 8),
                      Text(
                        'Generation Settings',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _apiKeyController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Claude API Key',
                      hintText: 'sk-ant-...',
                    ),
                    validator: (value) {
                      if ((value ?? '').trim().isEmpty) {
                        return 'API key is required.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _maxTokensController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Max tokens',
                      hintText: '8192',
                    ),
                    validator: (value) {
                      final parsed = int.tryParse((value ?? '').trim());
                      if (parsed == null) return 'Enter a valid number.';
                      if (parsed < 256 || parsed > 200000) {
                        return 'Use a value between 256 and 200000.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FilledButton.icon(
                      onPressed: _save,
                      icon: const PhosphorIcon(PhosphorIconsBold.floppyDisk),
                      label: const Text('Save'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: const PhosphorIcon(PhosphorIconsRegular.info),
            title: const Text('About'),
            subtitle: const Text('Stac Gen UI example app'),
          ),
        ),
      ],
    );
  }
}
