import 'dart:math' as math;

import 'expression_exception.dart';
import 'values.dart';

/// A function callable from Stac expressions.
///
/// Receives the evaluated arguments and returns the result. Throw a
/// [StacExpressionException] to report bad arguments.
typedef StacExpressionFunction = Object? Function(List<Object?> arguments);

/// The built-in functions available to Stac expressions.
///
/// Every function is pure. Any function can also be called with method
/// syntax, where the receiver becomes the first argument: `name.upper()` is
/// `upper(name)` and `price.toFixed(2)` is `toFixed(price, 2)`.
abstract final class StacExpressionFunctions {
  /// The default function table.
  static const Map<String, StacExpressionFunction> builtIn = {
    'length': _length,
    'isEmpty': _isEmpty,
    'isNotEmpty': _isNotEmpty,
    'contains': _contains,
    'startsWith': _startsWith,
    'endsWith': _endsWith,
    'upper': _upper,
    'lower': _lower,
    'trim': _trim,
    'replace': _replace,
    'substring': _substring,
    'split': _split,
    'join': _join,
    'concat': _concat,
    'first': _first,
    'last': _last,
    'keys': _keys,
    'values': _values,
    'abs': _abs,
    'floor': _floor,
    'ceil': _ceil,
    'round': _round,
    'min': _min,
    'max': _max,
    'clamp': _clamp,
    'toInt': _toInt,
    'toDouble': _toDouble,
    'toString': _toString,
    'toFixed': _toFixed,
    'coalesce': _coalesce,
    'typeOf': _typeOf,
  };
}

void _arity(String name, List<Object?> args, int min, [int? max]) {
  final upper = max ?? min;
  if (args.length < min || args.length > upper) {
    final expected = min == upper ? '$min' : '$min to $upper';
    throw StacExpressionException(
      "'$name' expects $expected argument${upper == 1 ? '' : 's'} "
      'but got ${args.length}',
    );
  }
}

Never _typeError(String name, String expected, Object? actual) {
  throw StacExpressionException(
    "'$name' expects $expected but got ${stacDescribeType(actual)}",
  );
}

num _number(String name, Object? value) {
  final number = stacToNum(value);
  if (number == null) _typeError(name, 'a number', value);
  return number;
}

int _integer(String name, Object? value) {
  final number = _number(name, value);
  if (number is int) return number;
  if (number == number.truncateToDouble() && number.isFinite) {
    return number.toInt();
  }
  _typeError(name, 'a whole number', value);
}

List<Object?> _numbersOf(List<Object?> args) {
  if (args.length == 1 && args.first is List) {
    return (args.first as List).cast<Object?>();
  }
  return args;
}

Object? _length(List<Object?> args) {
  _arity('length', args, 1);
  return switch (args[0]) {
    null => 0,
    String s => s.length,
    List l => l.length,
    Map m => m.length,
    final other => _typeError('length', 'a string, list or map', other),
  };
}

Object? _isEmpty(List<Object?> args) {
  _arity('isEmpty', args, 1);
  return switch (args[0]) {
    null => true,
    String s => s.isEmpty,
    List l => l.isEmpty,
    Map m => m.isEmpty,
    final other => _typeError('isEmpty', 'a string, list or map', other),
  };
}

Object? _isNotEmpty(List<Object?> args) {
  _arity('isNotEmpty', args, 1);
  return !(_isEmpty(args) as bool);
}

Object? _contains(List<Object?> args) {
  _arity('contains', args, 2);
  final container = args[0];
  final item = args[1];
  return switch (container) {
    null => false,
    String s => s.contains(stacStringify(item)),
    List l => l.any((element) => stacLooseEquals(element, item)),
    Map m => m.containsKey(item) || m.containsKey(item?.toString()),
    _ => _typeError('contains', 'a string, list or map', container),
  };
}

Object? _startsWith(List<Object?> args) {
  _arity('startsWith', args, 2);
  return stacStringify(args[0]).startsWith(stacStringify(args[1]));
}

Object? _endsWith(List<Object?> args) {
  _arity('endsWith', args, 2);
  return stacStringify(args[0]).endsWith(stacStringify(args[1]));
}

Object? _upper(List<Object?> args) {
  _arity('upper', args, 1);
  return stacStringify(args[0]).toUpperCase();
}

Object? _lower(List<Object?> args) {
  _arity('lower', args, 1);
  return stacStringify(args[0]).toLowerCase();
}

Object? _trim(List<Object?> args) {
  _arity('trim', args, 1);
  return stacStringify(args[0]).trim();
}

Object? _replace(List<Object?> args) {
  _arity('replace', args, 3);
  return stacStringify(
    args[0],
  ).replaceAll(stacStringify(args[1]), stacStringify(args[2]));
}

Object? _substring(List<Object?> args) {
  _arity('substring', args, 2, 3);
  final text = stacStringify(args[0]);
  final start = _integer('substring', args[1]).clamp(0, text.length);
  final end = args.length > 2 && args[2] != null
      ? _integer('substring', args[2]).clamp(start, text.length)
      : text.length;
  return text.substring(start, end);
}

Object? _split(List<Object?> args) {
  _arity('split', args, 2);
  return stacStringify(args[0]).split(stacStringify(args[1]));
}

Object? _join(List<Object?> args) {
  _arity('join', args, 1, 2);
  final list = args[0];
  if (list == null) return '';
  if (list is! List) _typeError('join', 'a list', list);
  final separator = args.length > 1 ? stacStringify(args[1]) : '';
  return list.map(stacStringify).join(separator);
}

Object? _concat(List<Object?> args) => args.map(stacStringify).join();

Object? _first(List<Object?> args) {
  _arity('first', args, 1);
  return switch (args[0]) {
    null => null,
    List l => l.isEmpty ? null : l.first,
    String s => s.isEmpty ? null : s[0],
    final other => _typeError('first', 'a list or string', other),
  };
}

Object? _last(List<Object?> args) {
  _arity('last', args, 1);
  return switch (args[0]) {
    null => null,
    List l => l.isEmpty ? null : l.last,
    String s => s.isEmpty ? null : s[s.length - 1],
    final other => _typeError('last', 'a list or string', other),
  };
}

Object? _keys(List<Object?> args) {
  _arity('keys', args, 1);
  return switch (args[0]) {
    null => const <Object?>[],
    Map m => m.keys.toList(),
    final other => _typeError('keys', 'a map', other),
  };
}

Object? _values(List<Object?> args) {
  _arity('values', args, 1);
  return switch (args[0]) {
    null => const <Object?>[],
    Map m => m.values.toList(),
    final other => _typeError('values', 'a map', other),
  };
}

Object? _abs(List<Object?> args) {
  _arity('abs', args, 1);
  return _number('abs', args[0]).abs();
}

Object? _floor(List<Object?> args) {
  _arity('floor', args, 1);
  return _number('floor', args[0]).floor();
}

Object? _ceil(List<Object?> args) {
  _arity('ceil', args, 1);
  return _number('ceil', args[0]).ceil();
}

Object? _round(List<Object?> args) {
  _arity('round', args, 1);
  return _number('round', args[0]).round();
}

Object? _min(List<Object?> args) {
  final values = _numbersOf(args);
  if (values.isEmpty) {
    throw const StacExpressionException("'min' needs at least one number");
  }
  return values.map((value) => _number('min', value)).reduce(math.min);
}

Object? _max(List<Object?> args) {
  final values = _numbersOf(args);
  if (values.isEmpty) {
    throw const StacExpressionException("'max' needs at least one number");
  }
  return values.map((value) => _number('max', value)).reduce(math.max);
}

Object? _clamp(List<Object?> args) {
  _arity('clamp', args, 3);
  final value = _number('clamp', args[0]);
  final lower = _number('clamp', args[1]);
  final upper = _number('clamp', args[2]);
  if (lower > upper) {
    throw const StacExpressionException(
      "'clamp' needs a lower bound that is not above the upper bound",
    );
  }
  return value.clamp(lower, upper);
}

Object? _toInt(List<Object?> args) {
  _arity('toInt', args, 1);
  final value = args[0];
  if (value == null) return null;
  if (value is bool) return value ? 1 : 0;
  final number = stacToNum(value);
  if (number == null || !number.isFinite) return null;
  return number.toInt();
}

Object? _toDouble(List<Object?> args) {
  _arity('toDouble', args, 1);
  final value = args[0];
  if (value == null) return null;
  return stacToNum(value)?.toDouble();
}

Object? _toString(List<Object?> args) {
  _arity('toString', args, 1);
  return stacStringify(args[0]);
}

Object? _toFixed(List<Object?> args) {
  _arity('toFixed', args, 2);
  final digits = _integer('toFixed', args[1]);
  if (digits < 0 || digits > 20) {
    throw const StacExpressionException(
      "'toFixed' needs between 0 and 20 digits",
    );
  }
  return _number('toFixed', args[0]).toStringAsFixed(digits);
}

Object? _coalesce(List<Object?> args) {
  for (final value in args) {
    if (value != null) return value;
  }
  return null;
}

Object? _typeOf(List<Object?> args) {
  _arity('typeOf', args, 1);
  return switch (args[0]) {
    null => 'null',
    bool _ => 'bool',
    num _ => 'number',
    String _ => 'string',
    List _ => 'list',
    Map _ => 'map',
    _ => 'unknown',
  };
}
