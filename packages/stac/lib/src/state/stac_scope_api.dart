import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:stac/src/state/stac_item_scope.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_observer.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac/src/state/stac_state_writer.dart';
import 'package:stac_core/stac_core.dart';

/// Reads and writes Stac state from Dart, such as from a custom parser.
///
/// ```dart
/// @override
/// Widget parse(BuildContext context, RatingModel model) {
///   final scope = StacScope.of(context);
///   final rating = scope.watch('rating ?? 0') as num;
///   return RatingBar(
///     value: rating.toDouble(),
///     onChanged: (value) => scope.write('rating', value),
///   );
/// }
/// ```
class StacScope {
  const StacScope._(this._context);

  final BuildContext _context;

  /// The state visible at [context].
  static StacScope of(BuildContext context) => StacScope._(context);

  /// Evaluates [expression] against the state visible here.
  Object? read(String expression) {
    return StacExpression.parse(
      expression,
    ).evaluate(StacStateReader.forAction(_context));
  }

  /// Evaluates [expression] and rebuilds the context when a value it read
  /// changes. Call it while building.
  Object? watch(String expression) {
    return StacExpression.parse(
      expression,
    ).evaluate(StacStateReader.watching(_context));
  }

  /// Writes [value] at [path], choosing the level like a `setValue` entry
  /// with that `path`. `null` removes the value.
  void write(String path, Object? value) {
    StacStateWriter.writeValue(StacScopeNode.of(_context), path, value);
  }

  /// Applies `setValue` entries, such as
  /// `{'path': 'count', 'op': 'increment'}`. Expressions in them are
  /// evaluated first.
  void apply(List<Map<String, dynamic>> entries) {
    StacStateWriter.apply(_context, entries);
  }

  /// Describes each level of state visible here, innermost first.
  String debugDescribe() {
    final buffer = StringBuffer();
    for (final level in StacScopeNode.of(_context).chain) {
      buffer.writeln('${level.kind.name}: ${level.store.data}');
    }
    final arguments = StacScopeNode.of(_context).arguments;
    if (arguments.isNotEmpty) buffer.writeln('arguments: $arguments');
    final item = StacItemScope.maybeOf(_context);
    if (item != null) buffer.writeln('item ${item.index}: ${item.item}');
    return buffer.toString();
  }
}

/// Prints every level of Stac state that exists, each below the level
/// around it, and returns the text:
///
/// ```text
/// app: {"theme":"dark"}
///   screen home_screen: {"count":1}
///     local stateScope: {"expanded":true}
/// ```
///
/// Call it from a debugger or a debug button to see the values screens
/// read.
String debugDumpStacState() {
  final levels = StacStateEvents.levels;
  final inside = <StacStateLevel, List<StacStateLevel>>{};
  for (final level in levels) {
    final parent = level.parent;
    if (parent != null) (inside[parent] ??= []).add(level);
  }
  final buffer = StringBuffer();
  void describe(StacStateLevel level, int depth) {
    buffer
      ..write('  ' * depth)
      ..write(describeStacStateLevel(level));
    if (level.kind == StacScopeKind.screen && level.arguments.isNotEmpty) {
      buffer.write(' args ${_describeValue(level.arguments)}');
    }
    buffer.writeln(': ${_describeValue(level.store.data)}');
    for (final child in inside[level] ?? const <StacStateLevel>[]) {
      describe(child, depth + 1);
    }
  }

  describe(StacScopeNode.app, 0);
  final text = buffer.toString();
  debugPrint(text);
  return text;
}

String _describeValue(Object? value) {
  try {
    return jsonEncode(value);
  } on JsonUnsupportedObjectError {
    return '$value';
  }
}
