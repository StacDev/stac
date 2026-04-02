import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SavedJsonsScreen extends StatelessWidget {
  const SavedJsonsScreen({
    super.key,
    required this.savedJsons,
  });

  final List<Map<String, dynamic>> savedJsons;

  @override
  Widget build(BuildContext context) {
    if (savedJsons.isEmpty) {
      return Center(
        child: Text(
          'No saved Stac JSON yet.\nGenerate a UI from Home to save one.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: savedJsons.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = savedJsons[index];
        final type = item['type']?.toString() ?? 'unknown';
        return Card(
          child: ListTile(
            title: Text('Saved JSON #${index + 1}'),
            subtitle: Text('Root type: $type'),
            trailing: const PhosphorIcon(PhosphorIconsRegular.caretRight),
            onTap: () {
              final pretty = const JsonEncoder.withIndent('  ').convert(item);
              showDialog<void>(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('Saved JSON #${index + 1}'),
                  content: SingleChildScrollView(
                    child: SelectableText(pretty),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
