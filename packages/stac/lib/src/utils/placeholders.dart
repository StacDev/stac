/// Matches one `{{path}}` placeholder. Group 1 is the path without the
/// braces or surrounding spaces.
final RegExp placeholderPattern = RegExp(r'\{\{\s*([^{}]+?)\s*\}\}');

/// The path inside [text] when the whole of [text] is one placeholder, such
/// as `{{cart}}`, otherwise null.
String? singlePlaceholder(String text) {
  final match = placeholderPattern.firstMatch(text);
  if (match == null || match.start != 0 || match.end != text.length) {
    return null;
  }
  return match.group(1);
}

/// Reads [path] from [data], where a path walks into maps by key and into
/// lists by index: `user.address.city`, `items.0.title` or `items[0].title`.
/// Returns null when any step is missing.
Object? readPath(Object? data, String path) {
  Object? current = data;
  for (final segment in _segments(path)) {
    if (current is Map) {
      if (!current.containsKey(segment)) return null;
      current = current[segment];
    } else if (current is List) {
      final index = int.tryParse(segment);
      if (index == null || index < 0 || index >= current.length) return null;
      current = current[index];
    } else {
      return null;
    }
  }
  return current;
}

Iterable<String> _segments(String path) sync* {
  for (final part in path.split('.')) {
    if (part.isEmpty) continue;
    final bracket = part.indexOf('[');
    if (bracket < 0) {
      yield part;
      continue;
    }
    if (bracket > 0) yield part.substring(0, bracket);
    if (!part.endsWith(']')) {
      yield part.substring(bracket);
      continue;
    }
    yield* part.substring(bracket + 1, part.length - 1).split('][');
  }
}

/// Fills the placeholders in [json] with the values [lookup] returns for
/// their paths, and returns the filled copy.
///
/// A string that is exactly one placeholder for a list or map becomes a copy
/// of that list or map, so it can be used where JSON expects one, such as a
/// request body. Any other value is inserted as text. A path for which
/// [lookup] returns null is left as it is.
///
/// A map for which [skip] returns true is left as it is, with everything
/// inside it, and so is an entry for which [skipEntry] returns true.
dynamic resolvePlaceholders(
  dynamic json,
  Object? Function(String path) lookup, {
  bool Function(Map<dynamic, dynamic> json)? skip,
  bool Function(Map<dynamic, dynamic> json, String key)? skipEntry,
}) {
  if (json is String) {
    final path = singlePlaceholder(json);
    if (path != null) {
      final value = lookup(path);
      if (value is List || value is Map) return _copy(value);
    }
    return json.replaceAllMapped(placeholderPattern, (match) {
      final value = lookup(match.group(1)!);
      return value == null ? match.group(0)! : '$value';
    });
  }
  if (json is Map) {
    if (skip != null && skip(json)) return json;
    return <String, dynamic>{
      for (final entry in json.entries)
        '${entry.key}': skipEntry != null && skipEntry(json, '${entry.key}')
            ? entry.value
            : resolvePlaceholders(
                entry.value,
                lookup,
                skip: skip,
                skipEntry: skipEntry,
              ),
    };
  }
  if (json is List) {
    return [
      for (final item in json)
        resolvePlaceholders(item, lookup, skip: skip, skipEntry: skipEntry),
    ];
  }
  return json;
}

/// The first segment of every placeholder path in [json], in order of first
/// appearance: the keys a widget reads. `{{user.name}}` yields `user`.
List<String> placeholderKeys(dynamic json) {
  final keys = <String>{};
  void collect(dynamic node) {
    if (node is String) {
      for (final match in placeholderPattern.allMatches(node)) {
        final path = match.group(1)!;
        final separator = path.indexOf(RegExp(r'[.\[]'));
        keys.add(separator > 0 ? path.substring(0, separator) : path);
      }
    } else if (node is Map) {
      node.values.forEach(collect);
    } else if (node is List) {
      node.forEach(collect);
    }
  }

  collect(json);
  return keys.toList();
}

dynamic _copy(dynamic value) {
  if (value is Map) {
    return <String, dynamic>{
      for (final entry in value.entries) '${entry.key}': _copy(entry.value),
    };
  }
  if (value is List) return [for (final item in value) _copy(item)];
  return value;
}
