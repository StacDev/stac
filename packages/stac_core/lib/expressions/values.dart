import 'dart:convert';

/// Marker returned by scope lookups and member access when nothing is bound.
///
/// It lets callers tell "no such variable" apart from "a variable whose value
/// is `null`". Expression evaluation turns it into `null` and counts a miss.
const Object stacUnbound = _StacUnbound();

final class _StacUnbound {
  const _StacUnbound();

  @override
  String toString() => '<unbound>';
}

final RegExp _numericString = RegExp(
  r'^[+-]?(\d+\.?\d*|\.\d+)([eE][+-]?\d+)?$',
);

/// Returns whether [value] counts as true in a condition.
///
/// `null` and `false` are falsy. Numbers are truthy unless zero or NaN.
/// Strings are truthy unless empty or exactly `"false"`. Lists and maps are
/// truthy when non-empty. Anything else is truthy.
bool stacIsTruthy(Object? value) {
  return switch (value) {
    null => false,
    bool b => b,
    num n => n != 0 && !n.isNaN,
    String s => s.isNotEmpty && s != 'false',
    Iterable i => i.isNotEmpty,
    Map m => m.isNotEmpty,
    _ => true,
  };
}

/// Converts [value] to the text used when interpolating it into a string.
///
/// `null` becomes the empty string; every other value uses its `toString()`.
String stacStringify(Object? value) => value == null ? '' : value.toString();

/// Returns [value] as a number when it is a number or a numeric string such
/// as `"42"` or `"-3.5"`, otherwise `null`.
num? stacToNum(Object? value) {
  if (value is num) return value;
  if (value is String) {
    final text = value.trim();
    if (_numericString.hasMatch(text)) return num.tryParse(text);
  }
  return null;
}

/// Structural equality for JSON-like values.
///
/// Numbers compare by value (`1 == 1.0`), lists element-wise and maps
/// key-by-key. Everything else uses `==`.
bool stacDeepEquals(Object? a, Object? b) {
  if (identical(a, b)) return true;
  if (a is num && b is num) return a == b;
  if (a is List && b is List) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (!stacDeepEquals(a[i], b[i])) return false;
    }
    return true;
  }
  if (a is Map && b is Map) {
    if (a.length != b.length) return false;
    for (final key in a.keys) {
      if (!b.containsKey(key) || !stacDeepEquals(a[key], b[key])) {
        return false;
      }
    }
    return true;
  }
  return a == b;
}

/// Equality used by the `==` and `!=` operators.
///
/// Like [stacDeepEquals], except that a number equals a numeric string with
/// the same value (`5 == "5"`) and a boolean equals its string form
/// (`true == "true"`). Values in Stac often pass through text, so this keeps
/// comparisons working when a number or flag arrives as a string.
bool stacLooseEquals(Object? a, Object? b) {
  if (a is num && b is String) return stacToNum(b) == a;
  if (a is String && b is num) return stacToNum(a) == b;
  if (a is bool && b is String) return b == a.toString();
  if (a is String && b is bool) return a == b.toString();
  return stacDeepEquals(a, b);
}

/// Orders [a] and [b] for the relational operators.
///
/// Numbers and numeric strings compare numerically, other strings compare
/// lexicographically. Returns `null` when the values cannot be ordered.
int? stacCompare(Object? a, Object? b) {
  final left = stacToNum(a);
  final right = stacToNum(b);
  if (left != null && right != null) return left.compareTo(right);
  if (a is String && b is String) return a.compareTo(b);
  return null;
}

/// Reads the member [name] of [target].
///
/// Maps return the value stored under [name]. Lists accept numeric names as
/// indexes. Lists, maps and strings additionally expose `length`, `isEmpty`
/// and `isNotEmpty`; lists expose `first` and `last`; maps expose `keys` and
/// `values`. Returns [stacUnbound] for unknown members and for `null` or
/// scalar targets.
Object? stacAccessMember(Object? target, String name) {
  switch (target) {
    case Map map:
      if (map.containsKey(name)) return map[name];
      return switch (name) {
        'length' => map.length,
        'isEmpty' => map.isEmpty,
        'isNotEmpty' => map.isNotEmpty,
        'keys' => map.keys.toList(),
        'values' => map.values.toList(),
        _ => stacUnbound,
      };
    case List list:
      final index = int.tryParse(name);
      if (index != null) return stacIndex(list, index);
      return switch (name) {
        'length' => list.length,
        'isEmpty' => list.isEmpty,
        'isNotEmpty' => list.isNotEmpty,
        'first' => list.isEmpty ? null : list.first,
        'last' => list.isEmpty ? null : list.last,
        _ => stacUnbound,
      };
    case String string:
      return switch (name) {
        'length' => string.length,
        'isEmpty' => string.isEmpty,
        'isNotEmpty' => string.isNotEmpty,
        _ => stacUnbound,
      };
    default:
      return stacUnbound;
  }
}

/// Reads [target] at [index].
///
/// Lists accept integer indexes, counting from the end when negative. Maps
/// are read by key, falling back to the key's string form. Strings return the
/// character at the index. Returns [stacUnbound] for out-of-range or
/// incompatible indexes.
Object? stacIndex(Object? target, Object? index) {
  switch (target) {
    case List list:
      final position = _toIndex(index);
      if (position == null) return stacUnbound;
      final resolved = position < 0 ? list.length + position : position;
      if (resolved < 0 || resolved >= list.length) return stacUnbound;
      return list[resolved];
    case Map map:
      if (map.containsKey(index)) return map[index];
      final key = index?.toString();
      if (key != null && map.containsKey(key)) return map[key];
      return stacUnbound;
    case String string:
      final position = _toIndex(index);
      if (position == null) return stacUnbound;
      final resolved = position < 0 ? string.length + position : position;
      if (resolved < 0 || resolved >= string.length) return stacUnbound;
      return string[resolved];
    default:
      return stacUnbound;
  }
}

int? _toIndex(Object? index) {
  return switch (index) {
    int i => i,
    double d when d == d.truncateToDouble() && d.isFinite => d.toInt(),
    String s => int.tryParse(s.trim()),
    _ => null,
  };
}

/// Describes the type of [value] for error messages, e.g. `a string`.
String stacDescribeType(Object? value) {
  return switch (value) {
    null => 'null',
    bool _ => 'a boolean',
    num _ => 'a number',
    String _ => 'a string',
    List _ => 'a list',
    Map _ => 'a map',
    _ => value.runtimeType.toString(),
  };
}

/// Renders [value] as expression source that evaluates back to it.
///
/// Used when a placeholder sits inside an expression, such as a condition:
/// `{{name}} == 'Ann'` becomes `'Ann' == 'Ann'` rather than the unquoted
/// `Ann == 'Ann'`. Maps have no literal form and render as a JSON string.
String stacExpressionLiteral(Object? value) {
  return switch (value) {
    null => 'null',
    bool b => b.toString(),
    num n => n.isFinite ? n.toString() : 'null',
    String s => _quote(s),
    List list => '[${list.map(stacExpressionLiteral).join(', ')}]',
    Map map => _quote(jsonEncode(map)),
    _ => _quote(value.toString()),
  };
}

String _quote(String text) {
  final escaped = text
      .replaceAll(r'\', r'\\')
      .replaceAll("'", r"\'")
      .replaceAll('\n', r'\n')
      .replaceAll('\r', r'\r')
      .replaceAll('\t', r'\t');
  return "'$escaped'";
}
