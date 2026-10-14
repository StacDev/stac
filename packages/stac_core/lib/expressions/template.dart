import 'ast.dart';
import 'evaluator.dart';
import 'expression.dart';
import 'expression_exception.dart';
import 'scope_reader.dart';
import 'values.dart';

/// How [StacTemplate.resolve] turns placeholder values into output.
enum StacTemplateMode {
  /// Interpolate every placeholder as text. Used for widget properties.
  ///
  /// A placeholder that is a plain path to nothing (`{{user.name}}` with no
  /// `user`) is left as written, as Stac always did, so a later pass such as
  /// `dynamicView` item templating can still fill it.
  text,

  /// Like [text], except a template that is exactly one placeholder returns
  /// the placeholder's value with its type intact (a number stays a number).
  ///
  /// Used for slots that accept any JSON value, such as `setValue` values.
  /// Plain paths to nothing resolve to `null` rather than staying as written.
  typed,

  /// Render values as expression literals so the result can be parsed as an
  /// expression. Used for conditions: `{{name}} == 'Ann'` becomes
  /// `'Ann' == 'Ann'`. Values that cannot be found render as `null`.
  expression,
}

/// Called when a placeholder cannot be parsed or evaluated.
typedef StacTemplateErrorHandler =
    void Function(
      StacTemplatePlaceholder placeholder,
      StacExpressionException error,
    );

/// One `{{ expression }}` occurrence inside a [StacTemplate].
class StacTemplatePlaceholder {
  StacTemplatePlaceholder._(
    this.raw,
    this.source,
    this.offset,
    this.expression,
    this.error,
    this.legacyPath,
  );

  factory StacTemplatePlaceholder._parse(String raw, int offset) {
    final source = raw.substring(2, raw.length - 2).trim();
    StacExpressionNode? expression;
    StacExpressionException? error;
    try {
      expression = StacExpression.parse(source).node;
    } on StacExpressionException catch (e) {
      error = e;
    }
    return StacTemplatePlaceholder._(
      raw,
      source,
      offset,
      expression,
      error,
      _legacyPath(source),
    );
  }

  static final RegExp _legacySegment = RegExp(
    r'^([A-Za-z0-9_$@\-]+)((?:\[\d+\])*)$',
  );
  static final RegExp _bracketIndex = RegExp(r'\[(\d+)\]');

  /// Splits a legacy data path such as `items[0].first-name` into segments,
  /// or returns `null` when [source] is not shaped like one.
  static List<String>? _legacyPath(String source) {
    if (source.isEmpty) return null;
    final segments = <String>[];
    for (final part in source.split('.')) {
      final match = _legacySegment.firstMatch(part);
      if (match == null) return null;
      segments.add(match.group(1)!);
      for (final index in _bracketIndex.allMatches(match.group(2)!)) {
        segments.add(index.group(1)!);
      }
    }
    return segments;
  }

  /// The placeholder as written, including the braces.
  final String raw;

  /// The text between the braces, trimmed.
  final String source;

  /// Offset of the opening `{{` within the template.
  final int offset;

  /// The parsed expression, or `null` if [source] is not a valid expression.
  final StacExpressionNode? expression;

  /// Why [source] failed to parse, when [expression] is `null`.
  final StacExpressionException? error;

  /// The segments of [source] read as a legacy data path, such as
  /// `['items', '0', 'first-name']`, or `null` when it is not path shaped.
  ///
  /// Legacy paths allow characters an expression cannot, like `-` and `@`.
  final List<String>? legacyPath;
}

sealed class _Outcome {
  const _Outcome();
}

final class _Keep extends _Outcome {
  const _Keep();
}

final class _Value extends _Outcome {
  const _Value(this.value);

  final Object? value;
}

/// A string containing `{{ expression }}` placeholders.
///
/// ```dart
/// final template = StacTemplate.parse('Hello {{user.name ?? "guest"}}!');
/// template.resolve(StacMapScopeReader({'user': {'name': 'Ann'}})); // 'Hello Ann!'
/// ```
///
/// Each placeholder is resolved in this order:
///
/// 1. The whole placeholder text as a single key, so legacy keys such as
///    `user.name` set with `setValue` keep working.
/// 2. A plain path (`user.name`, `items[0].title`) read from the scope.
/// 3. A legacy data path with characters expressions do not allow
///    (`first-name`).
/// 4. The placeholder evaluated as an expression.
class StacTemplate {
  StacTemplate._(this.source, this.parts);

  static const int _maxCacheSize = 1024;
  static final Map<String, StacTemplate> _cache = {};

  /// Parses [source]. Never throws: placeholders that are not valid
  /// expressions are recorded with their [StacTemplatePlaceholder.error].
  factory StacTemplate.parse(String source) {
    final cached = _cache.remove(source);
    if (cached != null) {
      _cache[source] = cached;
      return cached;
    }
    final template = StacTemplate._(source, List.unmodifiable(_scan(source)));
    _cache[source] = template;
    if (_cache.length > _maxCacheSize) _cache.remove(_cache.keys.first);
    return template;
  }

  /// Returns whether [value] contains a placeholder opening.
  static bool hasPlaceholderSyntax(String value) => value.contains('{{');

  /// The template text.
  final String source;

  /// The literal text runs (as [String]) and placeholders (as
  /// [StacTemplatePlaceholder]) in order.
  final List<Object> parts;

  /// The placeholders in order of appearance.
  Iterable<StacTemplatePlaceholder> get placeholders =>
      parts.whereType<StacTemplatePlaceholder>();

  /// Whether the template contains at least one placeholder.
  bool get hasPlaceholders => parts.any((p) => p is StacTemplatePlaceholder);

  /// Whether the template is exactly one placeholder with no other text.
  bool get isSinglePlaceholder =>
      parts.length == 1 && parts.single is StacTemplatePlaceholder;

  static List<Object> _scan(String source) {
    final parts = <Object>[];
    var literalStart = 0;
    var searchFrom = 0;
    while (true) {
      final open = source.indexOf('{{', searchFrom);
      if (open < 0) break;
      final close = _findClose(source, open + 2);
      if (close < 0) break;
      if (open > literalStart) {
        parts.add(source.substring(literalStart, open));
      }
      parts.add(
        StacTemplatePlaceholder._parse(source.substring(open, close + 2), open),
      );
      literalStart = close + 2;
      searchFrom = literalStart;
    }
    if (literalStart < source.length) parts.add(source.substring(literalStart));
    return parts;
  }

  /// Finds the `}}` closing a placeholder, skipping braces inside quoted
  /// strings. Falls back to the first `}}` when quotes are unbalanced.
  static int _findClose(String source, int from) {
    String? quote;
    var i = from;
    while (i < source.length - 1) {
      final char = source[i];
      if (quote != null) {
        if (char == r'\') {
          i += 2;
          continue;
        }
        if (char == quote) quote = null;
        i++;
        continue;
      }
      if (char == '"' || char == "'") {
        quote = char;
      } else if (char == '}' && source[i + 1] == '}') {
        return i;
      }
      i++;
    }
    return source.indexOf('}}', from);
  }

  /// Resolves the placeholders against [scope].
  ///
  /// Returns a [String] except in [StacTemplateMode.typed] for a template
  /// that is a single placeholder, which returns the value itself.
  ///
  /// When [deferMisses] is true, any placeholder that reads a variable or
  /// member that does not exist is left as written so a later pass with more
  /// data can resolve it.
  Object? resolve(
    StacScopeReader scope, {
    StacTemplateMode mode = StacTemplateMode.text,
    bool deferMisses = false,
    StacExpressionEvaluator evaluator = const StacExpressionEvaluator(),
    StacTemplateErrorHandler? onError,
  }) {
    if (!hasPlaceholders) return source;

    if (mode == StacTemplateMode.typed && isSinglePlaceholder) {
      final placeholder = parts.single as StacTemplatePlaceholder;
      return switch (_resolvePlaceholder(
        placeholder,
        scope,
        mode,
        deferMisses,
        evaluator,
        onError,
      )) {
        _Keep() => source,
        _Value(:final value) => value,
      };
    }

    final buffer = StringBuffer();
    for (final part in parts) {
      if (part is String) {
        buffer.write(part);
        continue;
      }
      final placeholder = part as StacTemplatePlaceholder;
      switch (_resolvePlaceholder(
        placeholder,
        scope,
        mode,
        deferMisses,
        evaluator,
        onError,
      )) {
        case _Keep():
          buffer.write(placeholder.raw);
        case _Value(:final value):
          buffer.write(
            mode == StacTemplateMode.expression
                ? stacExpressionLiteral(value)
                : stacStringify(value),
          );
      }
    }
    return buffer.toString();
  }

  static _Outcome _resolvePlaceholder(
    StacTemplatePlaceholder placeholder,
    StacScopeReader scope,
    StacTemplateMode mode,
    bool deferMisses,
    StacExpressionEvaluator evaluator,
    StacTemplateErrorHandler? onError,
  ) {
    final exact = scope.lookup(placeholder.source);
    if (!identical(exact, stacUnbound)) return _Value(exact);

    final terminal = mode != StacTemplateMode.text && !deferMisses;
    final expression = placeholder.expression;
    final path = expression == null ? null : stacStaticPath(expression);

    if (path != null) {
      final value = scope.lookupPath(path);
      if (!identical(value, stacUnbound)) return _Value(value);
      return terminal ? const _Value(null) : const _Keep();
    }

    final legacyPath = placeholder.legacyPath;
    if (legacyPath != null) {
      final value = scope.lookupPath(legacyPath);
      if (!identical(value, stacUnbound)) return _Value(value);
    }

    if (expression == null) {
      onError?.call(placeholder, placeholder.error!);
      return const _Keep();
    }

    try {
      final evaluation = evaluator.evaluateDetailed(
        expression,
        scope,
        source: placeholder.source,
      );
      if (evaluation.hasMisses && deferMisses) return const _Keep();
      return _Value(evaluation.value);
    } on StacExpressionException catch (e) {
      if (deferMisses) return const _Keep();
      onError?.call(placeholder, e);
      return terminal ? const _Value(null) : const _Keep();
    }
  }
}
