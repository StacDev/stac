import 'package:example/src/utils/logging.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:stac/stac.dart';
import 'package:stac_gen_ui/stac_gen_ui.dart';

class GeneratedUiScreen extends StatefulWidget {
  const GeneratedUiScreen({
    super.key,
    required this.prompt,
    required this.onJsonGenerated,
  });

  final String prompt;
  final void Function(Map<String, dynamic> json) onJsonGenerated;

  @override
  State<GeneratedUiScreen> createState() => _GeneratedUiScreenState();
}

class _GeneratedUiScreenState extends State<GeneratedUiScreen> {
  bool _showJson = false;
  bool _saved = false;
  Map<String, dynamic>? _latestJson;

  Widget _buildJsonView() {
    final json = _latestJson;
    if (json == null) {
      return const Center(
        child: Text('JSON not available yet. Generate UI first.'),
      );
    }
    final formatted = const JsonEncoder.withIndent('  ').convert(json);
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth - 32),
            child: SelectableText(
              formatted,
              style: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
        );
      },
    );
  }

  void _saveCurrentJson() {
    final json = _latestJson;
    if (json == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No JSON available to save yet.')),
      );
      return;
    }

    widget.onJsonGenerated(Map<String, dynamic>.from(json));
    setState(() => _saved = true);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('JSON saved to Saved tab.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showJson
          ? _buildJsonView()
          : (_latestJson != null
              ? (Stac.fromJson(_latestJson!, context) ?? const SizedBox())
              : StacGenUiView(
                  model: StacGenUiModel(
                    prompt: widget.prompt,
                    systemPromptExtras:
                        'Use Material Design 3. Keep the layout clean and readable',
                  ),
                  onStacJsonReceived: (json) {
                    logStacJsonFromLlm(json);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (!mounted) return;
                      setState(() {
                        _latestJson = Map<String, dynamic>.from(json);
                        _saved = false;
                      });
                    });
                  },
                  onError: logStacGenUiError,
                )),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
            ),
          ),
        ),
        child: SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const PhosphorIcon(PhosphorIconsBold.arrowLeft),
                  label: const Text('Back'),
                ),
                TextButton.icon(
                  onPressed: () => setState(() => _showJson = !_showJson),
                  icon: PhosphorIcon(
                    _showJson
                        ? PhosphorIconsBold.appWindow
                        : PhosphorIconsBold.bracketsCurly,
                  ),
                  label: Text(_showJson ? 'Show UI' : 'Show JSON'),
                ),
                TextButton.icon(
                  onPressed: _saved ? null : _saveCurrentJson,
                  icon: PhosphorIcon(
                    _saved
                        ? PhosphorIconsBold.checkCircle
                        : PhosphorIconsBold.floppyDisk,
                  ),
                  label: Text(_saved ? 'Saved' : 'Save JSON'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
