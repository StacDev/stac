import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:stac_playground/data/dsl_to_json.dart';

/// Every DSL example should parse, and the JSON it produces should match the
/// example's JSON asset — that equivalence is the playground's whole pitch.
void main() {
  final dslDir = Directory('lib/dsl');
  final files = dslDir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  test('every DSL file is in the declarative subset', () {
    final failures = <String>[];
    for (final file in files) {
      final id = file.uri.pathSegments.last.replaceAll('.dart', '');
      try {
        dslToJson(file.readAsStringSync());
      } on DslParseException catch (e) {
        failures.add('$id: $e');
      } catch (e) {
        failures.add('$id: unexpected ${e.runtimeType}: $e');
      }
    }
    // Every example must parse, including the ones built from private helper
    // functions (navigation, table) — those are inlined by the parser.
    expect(
      failures,
      isEmpty,
      reason: 'These should parse but did not:\n${failures.join('\n')}',
    );
  });

  test('parsed DSL produces a renderable widget tree', () {
    final problems = <String>[];
    for (final file in files) {
      final id = file.uri.pathSegments.last.replaceAll('.dart', '');
      Map<String, dynamic> produced;
      try {
        produced = dslToJson(file.readAsStringSync());
      } catch (_) {
        continue; // covered by the parse test above
      }
      if (produced['type'] is! String) {
        problems.add('$id: root has no widget "type"');
        continue;
      }
      try {
        // The preview hands this straight to Stac.fromJson, so it has to be
        // encodable and every nested widget needs a type.
        jsonEncode(produced);
      } catch (e) {
        problems.add('$id: not JSON-encodable: $e');
      }
      final untyped = _untypedWidgets(produced, r'$');
      if (untyped.isNotEmpty) {
        problems.add('$id: ${untyped.take(3).join(', ')}');
      }
    }
    expect(problems, isEmpty, reason: problems.join('\n'));
  });

  test('examples that round-trip exactly keep doing so', () {
    // These DSL files reproduce their JSON asset byte-for-byte (structurally),
    // so they're the tightest correctness gate on the parser. The rest differ
    // only via documented divergences — no-op keys the DSL drops, `null`
    // placeholders for empty `{}` actions, and equivalent encodings such as
    // `StacEdgeInsets.all(12)` → `12`, which fromJson expands. The set may
    // grow; it must not shrink.
    const exact = {
      'align',
      'aspect_ratio',
      'auto_complete',
      'carousel_view',
      'center',
      'circular_progress_indicator',
      'clip_oval',
      'column',
      'conditional',
      'divider',
      'drawer',
      'dropdown_menu_view',
      'dynamic_view',
      'fitted_box',
      'floating_action_button',
      'fractionally_sized_box',
      'icon',
      'icon_button',
      'limited_box',
      'linear_progress_indicator',
      'list_tile',
      'list_view',
      'navigation_bar',
      'opacity',
      'outlined_button',
      'padding',
      'page_view',
      'placeholder',
      'row',
      'scaffold',
      'scroll_view',
      'selectable_text',
      'sized_box',
      'slider',
      'sliver_app_bar',
      'sliver_fill_remaining',
      'sliver_grid',
      'sliver_list',
      'sliver_opacity',
      'sliver_padding',
      'sliver_to_box_adapter',
      'sliver_visibility',
      'spacer',
      'switch',
      'tab_bar',
      'text_button',
      'tool_tip',
      'web_view',
      'wrap',
    };
    final broken = <String>[];
    for (final id in exact) {
      final dartFile = File('lib/dsl/$id.dart');
      final jsonFile = File('assets/json/${id}_example.json');
      if (!dartFile.existsSync() || !jsonFile.existsSync()) {
        broken.add('$id: source missing');
        continue;
      }
      try {
        final produced = dslToJson(dartFile.readAsStringSync());
        final expected =
            jsonDecode(jsonFile.readAsStringSync()) as Map<String, dynamic>;
        final diff = _diff(expected, produced, r'$');
        if (diff.isNotEmpty) broken.add('$id: ${diff.take(3).join('; ')}');
      } catch (e) {
        broken.add('$id: $e');
      }
    }
    expect(
      broken,
      isEmpty,
      reason: 'These no longer round-trip:\n${broken.join('\n')}',
    );
  });
}

/// Walks the tree looking for nested maps that carry widget-ish keys but no
/// `type`, which would fail to render.
List<String> _untypedWidgets(dynamic node, String path) {
  final out = <String>[];
  if (node is Map) {
    for (final entry in node.entries) {
      final key = entry.key;
      final value = entry.value;
      // Only `child` is reliably a widget — `body`, for instance, is the HTTP
      // payload on StacNetworkRequest.
      if (key == 'child' && value is Map && value['type'] is! String) {
        out.add('$path.$key has no type');
      }
      out.addAll(_untypedWidgets(value, '$path.$key'));
    }
  } else if (node is List) {
    for (var i = 0; i < node.length; i++) {
      out.addAll(_untypedWidgets(node[i], '$path[$i]'));
    }
  }
  return out;
}

/// Structural diff. Keys the DSL intentionally drops (documented no-ops and
/// unmappable fields) still surface here so they're visible rather than hidden.
List<String> _diff(dynamic expected, dynamic actual, String path) {
  final out = <String>[];
  if (expected is Map && actual is Map) {
    for (final key in expected.keys) {
      if (!actual.containsKey(key)) {
        out.add('$path.$key missing (expected ${_short(expected[key])})');
        continue;
      }
      out.addAll(_diff(expected[key], actual[key], '$path.$key'));
    }
    for (final key in actual.keys) {
      if (!expected.containsKey(key)) {
        out.add('$path.$key extra (${_short(actual[key])})');
      }
    }
  } else if (expected is List && actual is List) {
    if (expected.length != actual.length) {
      out.add('$path length ${expected.length} != ${actual.length}');
    } else {
      for (var i = 0; i < expected.length; i++) {
        out.addAll(_diff(expected[i], actual[i], '$path[$i]'));
      }
    }
  } else if (expected is num && actual is num) {
    if (expected.toDouble() != actual.toDouble()) {
      out.add('$path: $expected != $actual');
    }
  } else if (expected.toString() != actual.toString()) {
    out.add('$path: ${_short(expected)} != ${_short(actual)}');
  }
  return out;
}

String _short(dynamic v) {
  final s = jsonEncode(v);
  return s.length > 60 ? '${s.substring(0, 57)}…' : s;
}
