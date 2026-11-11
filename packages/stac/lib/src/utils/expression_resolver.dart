import 'dart:math' as math;

import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/utils/placeholders.dart';
import 'package:stac/src/utils/variable_resolver.dart';
import 'package:stac_logger/stac_logger.dart';

/// Looks up the value of a name such as `cart` or `user.name`.
typedef ExpressionLookup = Object? Function(String path);

/// Evaluates the expressions in `conditional` conditions, derived state
/// values and `setValue` expressions.
///
/// An expression has numbers, quoted strings, `true`, `false` and `null`,
/// names that read state (`count`, `user.name`, `items[0].price`), the
/// operators `+ - * / %`, `== != < <= > >=`, `&& || !` and `a ? b : c`,
/// parentheses, and these functions:
///
/// - `length(x)` of a list, map or string;
/// - `sum(list, expr)`, `avg(list, expr)`, `min(list, expr)` and
///   `max(list, expr)`, where `expr` is evaluated once per entry with the
///   entry as `item`, as in `sum(cart, item.price * item.quantity)`; without
///   `expr`, the entries themselves are used;
/// - `filter(list, expr)`, the entries for which `expr` is true, and
///   `sort(list, expr)`, the entries ordered by `expr`, both with the entry
///   as `item`; `reverse(list)` and `take(list, n)`;
/// - `contains(list, value)`, `contains(text, part)` and
///   `contains(map, key)`;
/// - `round(x, digits)`, `abs(x)`, `floor(x)`, `ceil(x)`, `sqrt(x)`,
///   `pow(x, y)`, `sin(x)`, `cos(x)` and `tan(x)`, and `min` and `max` of
///   two numbers.
///
/// A name that has no value is text, so `status == active` compares the
/// value of `status` with the text `active`, and `status == null` is true.
/// Quote text to be explicit. Numbers in text, such as form values, count as
/// numbers. `- * / %` only calculate with numbers, so `a-1` stays text, but
/// text made of numbers and dashes, such as a date, is calculated unless it's
/// quoted: `"{{date}}" == "2026-10-22"`.
class ExpressionResolver {
  ExpressionResolver._();

  /// Evaluates [expression], reading names with [lookup] or, by default,
  /// from the registry. Returns null when the expression can't be parsed.
  static dynamic evaluate(String expression, {ExpressionLookup? lookup}) {
    try {
      return _parse(expression).eval(_Scope(lookup ?? _fromRegistry, const {}));
    } catch (e) {
      Log.w('Could not evaluate "$expression": $e');
      return null;
    }
  }

  /// The state keys [expression] reads: the first segment of each name in
  /// it, such as `cart` for `sum(cart, item.price)`.
  static List<String> dependencies(String expression) {
    try {
      final roots = <String>{};
      _parse(expression).collect(roots, const {});
      return roots.toList();
    } catch (_) {
      return const [];
    }
  }

  static Object? _fromRegistry(String path) =>
      registryValue(StacRegistry.instance, path);

  static _Node _parse(String expression) {
    final parser = _Parser(_Lexer(expression).tokens());
    final node = parser.expression();
    parser.end();
    return node;
  }
}

// Values

bool _isNum(Object? v) =>
    v is num || (v is String && num.tryParse(v.trim()) != null);

num _num(Object? v) {
  if (v is num) return v;
  if (v is String) return num.tryParse(v.trim()) ?? 0;
  if (v is bool) return v ? 1 : 0;
  return 0;
}

bool _truthy(Object? v) {
  if (v is bool) return v;
  if (v is num) return v != 0;
  if (v is String) return v == 'true';
  if (v is List) return v.isNotEmpty;
  if (v is Map) return v.isNotEmpty;
  return false;
}

bool _equal(Object? l, Object? r) {
  if (_isNum(l) && _isNum(r)) return _num(l) == _num(r);
  return '$l' == '$r';
}

String _text(Object? v) => v == null ? '' : '$v';

// Scope

class _Scope {
  const _Scope(this.lookup, this.locals);

  final ExpressionLookup lookup;
  final Map<String, Object?> locals;

  Object? get(String path) {
    final separator = path.indexOf(RegExp(r'[.\[]'));
    final root = separator > 0 ? path.substring(0, separator) : path;
    if (locals.containsKey(root)) {
      final local = locals[root];
      return separator > 0 ? readPath(local, path.substring(separator)) : local;
    }
    return lookup(path);
  }

  _Scope bind(String name, Object? value) =>
      _Scope(lookup, {...locals, name: value});
}

// Nodes

abstract class _Node {
  Object? eval(_Scope scope);

  // The value without a name's fallback to its own text, for `x == null`.
  Object? valueOrNull(_Scope scope) => eval(scope);

  void collect(Set<String> roots, Set<String> bound);
}

class _Literal extends _Node {
  _Literal(this.value);

  final Object? value;

  @override
  Object? eval(_Scope scope) => value;

  @override
  void collect(Set<String> roots, Set<String> bound) {}
}

class _Ref extends _Node {
  _Ref(this.path, this.raw);

  final String path;

  // What the name evaluates to when it has no value: itself as text.
  final String raw;

  String get root {
    final separator = path.indexOf(RegExp(r'[.\[]'));
    return separator > 0 ? path.substring(0, separator) : path;
  }

  @override
  Object? eval(_Scope scope) => valueOrNull(scope) ?? raw;

  @override
  Object? valueOrNull(_Scope scope) =>
      scope.get(path) ?? (path == 'PI' ? math.pi : null);

  @override
  void collect(Set<String> roots, Set<String> bound) {
    if (!bound.contains(root)) roots.add(root);
  }
}

class _Unary extends _Node {
  _Unary(this.op, this.operand);

  final String op;
  final _Node operand;

  @override
  Object? eval(_Scope scope) {
    final value = operand.eval(scope);
    if (op == '!') return !_truthy(value);
    return _isNum(value) ? -_num(value) : '-${_text(value)}';
  }

  @override
  void collect(Set<String> roots, Set<String> bound) =>
      operand.collect(roots, bound);
}

class _Binary extends _Node {
  _Binary(this.op, this.left, this.right);

  final String op;
  final _Node left;
  final _Node right;

  @override
  Object? eval(_Scope scope) {
    // `x == null` asks whether x has a value.
    if ((op == '==' || op == '!=') && (_isNull(left) || _isNull(right))) {
      final missing = (_isNull(left) ? right : left).valueOrNull(scope) == null;
      return op == '==' ? missing : !missing;
    }
    final l = left.eval(scope);
    final r = right.eval(scope);
    switch (op) {
      case '+':
        if (_isNum(l) && _isNum(r)) return _num(l) + _num(r);
        return '${_text(l)}${_text(r)}';
      case '-':
        return _arithmetic(l, r, (a, b) => a - b);
      case '*':
        return _arithmetic(l, r, (a, b) => a * b);
      case '/':
        return _arithmetic(l, r, (a, b) => b == 0 ? 0 : a / b);
      case '%':
        return _arithmetic(l, r, (a, b) => b == 0 ? 0 : a % b);
      case '==':
        return _equal(l, r);
      case '!=':
        return !_equal(l, r);
      case '<':
        return _isNum(l) && _isNum(r) && _num(l) < _num(r);
      case '<=':
        return _isNum(l) && _isNum(r) && _num(l) <= _num(r);
      case '>':
        return _isNum(l) && _isNum(r) && _num(l) > _num(r);
      case '>=':
        return _isNum(l) && _isNum(r) && _num(l) >= _num(r);
      case '&&':
        return _truthy(l) && _truthy(r);
      case '||':
        return _truthy(l) || _truthy(r);
    }
    throw FormatException('Unknown operator $op');
  }

  // Only numbers are calculated. Anything else, such as `a-1` or an id with
  // dashes, stays text, so different values can't compare equal.
  Object? _arithmetic(Object? l, Object? r, num Function(num, num) apply) {
    if (!_isNum(l) || !_isNum(r)) return '${_text(l)}$op${_text(r)}';
    return apply(_num(l), _num(r));
  }

  static bool _isNull(_Node node) => node is _Literal && node.value == null;

  @override
  void collect(Set<String> roots, Set<String> bound) {
    left.collect(roots, bound);
    right.collect(roots, bound);
  }
}

class _Ternary extends _Node {
  _Ternary(this.condition, this.ifTrue, this.ifFalse);

  final _Node condition;
  final _Node ifTrue;
  final _Node ifFalse;

  @override
  Object? eval(_Scope scope) =>
      _truthy(condition.eval(scope)) ? ifTrue.eval(scope) : ifFalse.eval(scope);

  @override
  void collect(Set<String> roots, Set<String> bound) {
    condition.collect(roots, bound);
    ifTrue.collect(roots, bound);
    ifFalse.collect(roots, bound);
  }
}

class _Call extends _Node {
  _Call(this.name, this.args);

  final String name;
  final List<_Node> args;

  static const _aggregates = {'sum', 'avg', 'min', 'max'};

  // Functions whose second argument runs once per entry, with `item` bound.
  static const _perItem = {..._aggregates, 'filter', 'sort'};

  @override
  Object? eval(_Scope scope) {
    Object? arg(int i) => i < args.length ? args[i].eval(scope) : null;
    Object? perItem(dynamic item) => args[1].eval(scope.bind('item', item));
    switch (name) {
      case 'filter':
        final list = arg(0);
        if (list is! List || args.length < 2) return const [];
        return [
          for (final item in list)
            if (_truthy(perItem(item))) item,
        ];
      case 'sort':
        final list = arg(0);
        if (list is! List) return const [];
        final keyed = [
          for (final item in list)
            (key: args.length > 1 ? perItem(item) : item, item: item),
        ];
        keyed.sort((a, b) {
          if (_isNum(a.key) && _isNum(b.key)) {
            return _num(a.key).compareTo(_num(b.key));
          }
          return _text(a.key).compareTo(_text(b.key));
        });
        return [for (final entry in keyed) entry.item];
      case 'reverse':
        final list = arg(0);
        return list is List ? list.reversed.toList() : const [];
      case 'take':
        final list = arg(0);
        return list is List
            ? list.take(_num(arg(1)).toInt()).toList()
            : const [];
      case 'length':
      case 'count':
        final value = arg(0);
        if (value is List) return value.length;
        if (value is Map) return value.length;
        if (value is String) return value.length;
        return 0;
      case 'contains':
        final value = arg(0);
        final part = arg(1);
        if (value is List) return value.any((entry) => _equal(entry, part));
        if (value is Map) return value.containsKey('$part');
        if (value is String) return value.contains(_text(part));
        return false;
      case 'round':
        final digits = args.length > 1 ? _num(arg(1)).toInt() : 0;
        final factor = math.pow(10, digits);
        return (_num(arg(0)) * factor).round() / factor;
      case 'abs':
        return _num(arg(0)).abs();
      case 'floor':
        return _num(arg(0)).floor();
      case 'ceil':
        return _num(arg(0)).ceil();
      case 'sqrt':
        return math.sqrt(_num(arg(0)));
      case 'pow':
        return math.pow(_num(arg(0)), _num(arg(1)));
      case 'sin':
        return math.sin(_num(arg(0)));
      case 'cos':
        return math.cos(_num(arg(0)));
      case 'tan':
        return math.tan(_num(arg(0)));
    }
    if (_aggregates.contains(name)) {
      final first = arg(0);
      if (first is List) {
        final values = [
          for (final item in first)
            _num(
              args.length > 1 ? args[1].eval(scope.bind('item', item)) : item,
            ),
        ];
        if (values.isEmpty) return 0;
        switch (name) {
          case 'sum':
            return values.reduce((a, b) => a + b);
          case 'avg':
            return values.reduce((a, b) => a + b) / values.length;
          case 'min':
            return values.reduce(math.min);
          case 'max':
            return values.reduce(math.max);
        }
      }
      final values = [for (var i = 0; i < args.length; i++) _num(arg(i))];
      if (values.isEmpty) return 0;
      switch (name) {
        case 'sum':
          return values.reduce((a, b) => a + b);
        case 'avg':
          return values.reduce((a, b) => a + b) / values.length;
        case 'min':
          return values.reduce(math.min);
        case 'max':
          return values.reduce(math.max);
      }
    }
    throw FormatException('Unknown function $name');
  }

  @override
  void collect(Set<String> roots, Set<String> bound) {
    for (var i = 0; i < args.length; i++) {
      final inner = i == 1 && _perItem.contains(name)
          ? {...bound, 'item'}
          : bound;
      args[i].collect(roots, inner);
    }
  }
}

// Lexer

enum _TokenType { number, string, name, placeholder, op, end }

class _Token {
  const _Token(this.type, this.text);

  final _TokenType type;
  final String text;
}

class _Lexer {
  _Lexer(this.source);

  final String source;
  int _i = 0;

  static final _name = RegExp(r'[A-Za-z_][A-Za-z0-9_]*');
  static final _number = RegExp(r'\d+(\.\d+)?');
  static final _segment = RegExp(r'^(\.[A-Za-z_][A-Za-z0-9_]*|\.\d+|\[\d+\])');
  static const _twoChar = ['==', '!=', '<=', '>=', '&&', '||'];
  static const _oneChar = '+-*/%<>!(),?:';

  List<_Token> tokens() {
    final result = <_Token>[];
    while (_i < source.length) {
      final char = source[_i];
      if (char.trim().isEmpty) {
        _i++;
        continue;
      }
      if (source.startsWith('{{', _i)) {
        final close = source.indexOf('}}', _i);
        if (close < 0) throw FormatException('Unclosed {{ at $_i');
        result.add(
          _Token(
            _TokenType.placeholder,
            source.substring(_i + 2, close).trim(),
          ),
        );
        _i = close + 2;
        continue;
      }
      if (char == '"' || char == "'") {
        result.add(_Token(_TokenType.string, _string(char)));
        continue;
      }
      final number = _number.matchAsPrefix(source, _i);
      if (number != null) {
        result.add(_Token(_TokenType.number, number.group(0)!));
        _i = number.end;
        continue;
      }
      final name = _name.matchAsPrefix(source, _i);
      if (name != null) {
        _i = name.end;
        var path = name.group(0)!;
        // user.name, items[0].title
        while (true) {
          final segment = _segment.firstMatch(source.substring(_i));
          if (segment == null) break;
          path += segment.group(0)!;
          _i += segment.end;
        }
        result.add(_Token(_TokenType.name, path));
        continue;
      }
      final two = _i + 2 <= source.length ? source.substring(_i, _i + 2) : '';
      if (_twoChar.contains(two)) {
        result.add(_Token(_TokenType.op, two));
        _i += 2;
        continue;
      }
      if (_oneChar.contains(char)) {
        result.add(_Token(_TokenType.op, char));
        _i++;
        continue;
      }
      throw FormatException('Unexpected "$char" at $_i');
    }
    result.add(const _Token(_TokenType.end, ''));
    return result;
  }

  String _string(String quote) {
    final buffer = StringBuffer();
    _i++;
    while (_i < source.length && source[_i] != quote) {
      if (source[_i] == r'\' && _i + 1 < source.length) _i++;
      buffer.write(source[_i]);
      _i++;
    }
    if (_i >= source.length) throw const FormatException('Unclosed string');
    _i++;
    return buffer.toString();
  }
}

// Parser

class _Parser {
  _Parser(this._tokens);

  final List<_Token> _tokens;
  int _i = 0;

  _Token get _current => _tokens[_i];

  bool _match(String op) {
    if (_current.type == _TokenType.op && _current.text == op) {
      _i++;
      return true;
    }
    return false;
  }

  void _expect(String op) {
    if (!_match(op)) throw FormatException('Expected "$op"');
  }

  void end() {
    if (_current.type != _TokenType.end) {
      throw FormatException('Unexpected "${_current.text}"');
    }
  }

  _Node expression() {
    final condition = _or();
    if (_match('?')) {
      final ifTrue = expression();
      _expect(':');
      return _Ternary(condition, ifTrue, expression());
    }
    return condition;
  }

  _Node _or() => _binary(['||'], _and);

  _Node _and() => _binary(['&&'], _equality);

  _Node _equality() => _binary(['==', '!='], _comparison);

  _Node _comparison() => _binary(['<', '<=', '>', '>='], _additive);

  _Node _additive() => _binary(['+', '-'], _multiplicative);

  _Node _multiplicative() => _binary(['*', '/', '%'], _unary);

  _Node _binary(List<String> ops, _Node Function() next) {
    var left = next();
    while (true) {
      final op = ops.firstWhere(_match, orElse: () => '');
      if (op.isEmpty) return left;
      left = _Binary(op, left, next());
    }
  }

  _Node _unary() {
    if (_match('!')) return _Unary('!', _unary());
    if (_match('-')) return _Unary('-', _unary());
    return _primary();
  }

  _Node _primary() {
    final token = _current;
    switch (token.type) {
      case _TokenType.number:
        _i++;
        return _Literal(num.parse(token.text));
      case _TokenType.string:
        _i++;
        return _Literal(token.text);
      case _TokenType.placeholder:
        _i++;
        return _Ref(token.text, '{{${token.text}}}');
      case _TokenType.name:
        _i++;
        switch (token.text) {
          case 'true':
            return _Literal(true);
          case 'false':
            return _Literal(false);
          case 'null':
            return _Literal(null);
        }
        if (_match('(')) {
          final args = <_Node>[];
          if (!_match(')')) {
            do {
              args.add(expression());
            } while (_match(','));
            _expect(')');
          }
          return _Call(token.text, args);
        }
        return _Ref(token.text, token.text);
      case _TokenType.op:
        if (_match('(')) {
          final inner = expression();
          _expect(')');
          return inner;
        }
        throw FormatException('Unexpected "${token.text}"');
      case _TokenType.end:
        throw const FormatException('Unexpected end');
    }
  }
}
