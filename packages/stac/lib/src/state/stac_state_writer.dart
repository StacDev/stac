import 'package:flutter/widgets.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// Where a `setValue` entry stored its value.
class StacStateWrite {
  /// Creates a record of a write to [segments] in [node].
  const StacStateWrite(this.node, this.segments);

  /// The level written to.
  final StacScopeNode node;

  /// The path written, within [node].
  final List<String> segments;

  /// Removes the value again, unless [node] is gone.
  void undo() {
    if (!node.isDisposed) node.store.write(segments, null);
  }
}

/// Applies `setValue` entries to Stac state.
///
/// An entry names its target with `path` or `key`:
///
/// * `path` is a path such as `count`, `user.name`, `$app.theme` or
///   `$form.email`. A plain path writes to the nearest level that already
///   has its first name, and otherwise to the screen.
/// * `key` is the original form: a variable named by the whole string, even
///   when it contains dots. It writes to the nearest level that already has
///   it, and otherwise to the app, so values set this way survive
///   navigation as they always have.
///
/// `op` says how to combine `value` with what is stored: `set` (default),
/// `toggle`, `increment`, `decrement`, `append`, `remove`, `merge` or
/// `delete`. Writing `null` with `set` removes the value.
abstract final class StacStateWriter {
  /// The operations an entry can use.
  static const Set<String> operations = {
    'set',
    'toggle',
    'increment',
    'decrement',
    'append',
    'remove',
    'merge',
    'delete',
  };

  /// Applies [entries] in order for an action or widget at [context].
  ///
  /// Each value is evaluated just before it is written, so an entry can read
  /// the entries before it. Returns where each value was written.
  static List<StacStateWrite> apply(
    BuildContext? context,
    Iterable<Map<String, dynamic>>? entries,
  ) {
    final written = <StacStateWrite>[];
    for (final entry in entries ?? const <Map<String, dynamic>>[]) {
      final reader = StacStateReader.forAction(context);
      final target = _target(reader.node, entry, reader);
      if (target == null) continue;
      final value = stacJsonResolver.resolveValue(entry['value'], reader);
      if (_write(target, entry['op'] ?? 'set', value)) written.add(target);
    }
    return written;
  }

  /// Writes [value] at [path] as given, without evaluating it, choosing the
  /// level like an entry with `path`.
  static StacStateWrite? writeValue(
    StacScopeNode node,
    String path,
    Object? value,
  ) {
    final target = _target(node, {'path': path}, null);
    if (target == null || !_write(target, 'set', value)) return null;
    return target;
  }

  /// Like [writeValue], for a path already split into [segments].
  static StacStateWrite? writeSegments(
    StacScopeNode node,
    List<String> segments,
    Object? value,
  ) {
    final target = _targetFor(node, segments, segments.join('.'));
    if (target == null || !_write(target, 'set', value)) return null;
    return target;
  }

  static StacStateWrite? _target(
    StacScopeNode node,
    Map<String, dynamic> entry,
    StacScopeReader? reader,
  ) {
    final path = entry['path'];
    if (path is String && path.trim().isNotEmpty) {
      final text = _text(path, reader);
      final List<String> segments;
      try {
        segments = stacPathSegments(text);
      } on ArgumentError catch (e) {
        Log.w('setValue path "$text" is not valid: ${e.message}');
        return null;
      }
      return _targetFor(node, segments, text);
    }

    final key = entry['key'];
    if (key is String && key.isNotEmpty) {
      final text = _text(key, reader);
      for (final level in node.chain) {
        if (!level.holdsNames) continue;
        if (level.store.data.containsKey(text)) {
          return StacStateWrite(level, [text]);
        }
      }
      return StacStateWrite(StacScopeNode.app, [text]);
    }

    Log.w('setValue entry needs a "path" or a "key" and was skipped: $entry');
    return null;
  }

  static StacStateWrite? _targetFor(
    StacScopeNode node,
    List<String> segments,
    String text,
  ) {
    final root = segments.first;
    if (root == r'$app' || root == r'$screen' || root == r'$form') {
      if (segments.length == 1) {
        Log.w('State path "$text" needs a name after $root');
        return null;
      }
      final level = switch (root) {
        r'$app' => StacScopeNode.app,
        r'$screen' => node.screen,
        _ => node.form,
      };
      if (level == null) {
        Log.w('State path "$text" is not inside a form');
        return null;
      }
      return StacStateWrite(level, segments.sublist(1));
    }
    if (root.startsWith(r'$')) {
      Log.w('Cannot write to $root, which is read-only');
      return null;
    }
    for (final level in node.chain) {
      if (!level.holdsNames) continue;
      if (level.store.data.containsKey(root)) {
        return StacStateWrite(level, segments);
      }
    }
    return StacStateWrite(node.screen, segments);
  }

  static String _text(String value, StacScopeReader? reader) {
    if (reader == null || !StacTemplate.hasPlaceholderSyntax(value)) {
      return value;
    }
    return StacTemplate.parse(value).resolve(reader) as String;
  }

  static bool _write(StacStateWrite target, Object? op, Object? value) {
    final store = target.node.store;
    final segments = target.segments;
    final read = store.read(segments);
    final current = identical(read, stacUnbound) ? null : read;
    try {
      switch (op) {
        case 'set':
          store.write(segments, value);
        case 'toggle':
          store.write(segments, !stacIsTruthy(current));
        case 'increment':
          store.write(
            segments,
            (stacToNum(current) ?? 0) + (stacToNum(value) ?? 1),
          );
        case 'decrement':
          store.write(
            segments,
            (stacToNum(current) ?? 0) - (stacToNum(value) ?? 1),
          );
        case 'append':
          store.write(segments, [if (current is List) ...current, value]);
        case 'remove':
          if (current is! List) return false;
          store.write(segments, [
            for (final item in current)
              if (!stacLooseEquals(item, value)) item,
          ]);
        case 'merge':
          store.write(segments, <String, Object?>{
            if (current is Map)
              for (final entry in current.entries)
                entry.key.toString(): entry.value,
            if (value is Map)
              for (final entry in value.entries)
                entry.key.toString(): entry.value,
          });
        case 'delete':
          store.write(segments, null);
        default:
          Log.w(
            'Unknown setValue op "$op". Use one of: ${operations.join(', ')}.',
          );
          return false;
      }
    } on RangeError catch (e) {
      Log.w('setValue could not write ${segments.join('.')}: ${e.message}');
      return false;
    }
    return true;
  }
}
