/// Converts Stac DSL source text into the widget JSON the runtime renders.
///
/// The real compiler (`stac build`) runs the analyzer, executes the annotated
/// `@StacScreen` function in a Dart process and calls `toJson()` on the result.
/// None of that is possible in an AOT-compiled web app, so this is a small
/// recursive-descent parser over the *declarative subset* of the DSL: a literal
/// tree of constructor calls, named arguments, literals, lists, maps and enum
/// references. That subset covers the playground's examples and maps to JSON
/// structurally, with no Dart evaluation.
///
/// Calls to single-expression top-level helpers (`_socialRow(icon: …)`) are
/// inlined by binding the arguments and parsing the helper's returned
/// expression, since the examples lean on them heavily.
///
/// What genuinely needs a Dart runtime — variables, conditionals, loops,
/// string interpolation, methods on non-Stac values — throws
/// [DslParseException] so callers can keep showing the last good preview.
library;

import 'dart:convert';

/// Outcome of turning editor text into a preview tree.
///
/// [json] is null when the text can't be converted; [message] is set only when
/// there's something worth telling the user (Dart outside the subset). A plain
/// mid-edit syntax error leaves both null so the preview just holds silently.
class EditorParseResult {
  const EditorParseResult(this.json, this.message);

  final Map<String, dynamic>? json;
  final String? message;
}

/// Converts editor [text] to a widget tree — DSL source when [isDart], plain
/// JSON otherwise. Never throws; failures come back as an [EditorParseResult].
EditorParseResult parseEditorSource(String text, {required bool isDart}) {
  try {
    final decoded = isDart ? dslToJson(text) : jsonDecode(text);
    if (decoded is Map<String, dynamic>) {
      return EditorParseResult(decoded, null);
    }
    return const EditorParseResult(null, null);
  } on DslParseException catch (e) {
    return EditorParseResult(null, e.message);
  } catch (_) {
    // Half-typed source; keep the last good preview without nagging.
    return const EditorParseResult(null, null);
  }
}

/// Thrown when the source falls outside the declarative subset.
class DslParseException implements Exception {
  const DslParseException(this.message);

  final String message;

  @override
  String toString() => message;
}

/// Widget classes (those extending `StacWidget`) — these serialize with a
/// `"type"` discriminator. Everything else (`StacTextStyle`, `StacBoxDecoration`
/// …) is a value object and serializes as a bare map. Generated from stac_core.
const Set<String> _widgetClasses = {
  'StacAlertDialog',
  'StacAlign',
  'StacAppBar',
  'StacAspectRatio',
  'StacAutoComplete',
  'StacBackdropFilter',
  'StacBadge',
  'StacBottomNavigationBar',
  'StacBottomNavigationView',
  'StacCard',
  'StacCarouselView',
  'StacCenter',
  'StacCheckBox',
  'StacChip',
  'StacCircleAvatar',
  'StacCircularProgressIndicator',
  'StacClipOval',
  'StacClipRRect',
  'StacColoredBox',
  'StacColumn',
  'StacConditional',
  'StacContainer',
  'StacCustomScrollView',
  'StacDefaultBottomNavigationController',
  'StacDefaultNavigationController',
  'StacDefaultTabController',
  'StacDivider',
  'StacDrawer',
  'StacDropdownMenu',
  'StacDynamicView',
  'StacElevatedButton',
  'StacExpanded',
  'StacFilledButton',
  'StacFittedBox',
  'StacFlexible',
  'StacFloatingActionButton',
  'StacForm',
  'StacFractionallySizedBox',
  'StacGestureDetector',
  'StacGridView',
  'StacHero',
  'StacIcon',
  'StacIconButton',
  'StacImage',
  'StacInkWell',
  'StacLimitedBox',
  'StacLinearProgressIndicator',
  'StacListTile',
  'StacListView',
  'StacNavigationBar',
  'StacNavigationView',
  'StacNetworkWidget',
  'StacOpacity',
  'StacOutlinedButton',
  'StacPadding',
  'StacPageView',
  'StacPlaceholder',
  'StacPositioned',
  'StacRadio',
  'StacRadioGroup',
  'StacRefreshIndicator',
  'StacRow',
  'StacSafeArea',
  'StacScaffold',
  'StacSelectableText',
  'StacSetValue',
  'StacSingleChildScrollView',
  'StacSizedBox',
  'StacSlider',
  'StacSliverAppBar',
  'StacSliverFillRemaining',
  'StacSliverGrid',
  'StacSliverList',
  'StacSliverOpacity',
  'StacSliverPadding',
  'StacSliverSafeArea',
  'StacSliverToBoxAdapter',
  'StacSliverVisibility',
  'StacSpacer',
  'StacStack',
  'StacSwitch',
  'StacTab',
  'StacTabBar',
  'StacTabBarView',
  'StacTable',
  'StacTableCell',
  'StacText',
  'StacTextButton',
  'StacTextField',
  'StacTextFormField',
  'StacTooltip',
  'StacVerticalDivider',
  'StacVisibility',
  'StacWrap',
  // From the stac_webview plugin rather than stac_core, but it is a StacWidget
  // and serializes the same way.
  'StacWebView',
};

/// Classes whose `fromJson` expands a bare number into all four sides, so
/// `.all(8)` / `.circular(8)` can serialize as just `8`.
const Set<String> _scalarExpandable = {'StacEdgeInsets', 'StacBorderRadius'};

/// The one class whose JSON type isn't the lower-camel form of its name.
const Map<String, String> _typeOverrides = {'StacAutoComplete': 'autocomplete'};

String _typeForClass(String className) {
  final override = _typeOverrides[className];
  if (override != null) return override;
  final name = className.substring('Stac'.length);
  return name[0].toLowerCase() + name.substring(1);
}

/// A top-level helper function the screen can call, e.g.
/// `StacWidget _socialRow({required String icon}) { return StacRow(…); }`.
class _FunctionDef {
  const _FunctionDef(this.positional, this.named, this.body);

  /// Parameter names, in declaration order.
  final List<String> positional;
  final List<String> named;

  /// Source of the single returned expression.
  final String body;
}

/// Parses [source] (a full DSL file) and returns the widget JSON tree.
Map<String, dynamic> dslToJson(String source) {
  final stripped = _stripComments(source);
  final expression = _returnExpressionOf(stripped);
  final parser = _DslParser(expression, functions: _extractFunctions(stripped));
  final value = parser.parseValue();
  parser.skipTrivia();
  if (value is! Map<String, dynamic>) {
    throw const DslParseException('The screen must return a Stac widget.');
  }
  return value;
}

/// Pulls the expression out of the first `return …;` in [block].
String _returnExpressionOf(String block) {
  final returnIndex = block.indexOf(RegExp(r'\breturn\b'));
  if (returnIndex == -1) {
    throw const DslParseException('No `return` found in the screen function.');
  }
  final start = returnIndex + 'return'.length;
  // Walk to the `;` that closes the return, ignoring ones nested in
  // brackets or strings.
  var depth = 0;
  for (var i = start; i < block.length; i++) {
    final ch = block[i];
    if (ch == "'" || ch == '"') {
      i = _skipString(block, i);
      continue;
    }
    if (ch == '(' || ch == '[' || ch == '{') depth++;
    if (ch == ')' || ch == ']' || ch == '}') depth--;
    if (ch == ';' && depth == 0) return block.substring(start, i);
  }
  throw const DslParseException('Unterminated `return` statement.');
}

/// Collects top-level functions so calls to them can be inlined. Only
/// single-expression helpers are usable; anything else is simply not recorded
/// and calling it reports that it needs evaluation.
Map<String, _FunctionDef> _extractFunctions(String stripped) {
  final defs = <String, _FunctionDef>{};
  // Top-level declarations start at column 0 in formatted source:
  // `StacWidget _socialRow({required String icon}) {`
  final signature = RegExp(
    r'^[A-Za-z_][A-Za-z0-9_<>,\s?]*?\s+([A-Za-z_][A-Za-z0-9_]*)\s*\(',
    multiLine: true,
  );
  for (final match in signature.allMatches(stripped)) {
    final name = match.group(1)!;
    final open = match.end - 1;
    final close = _matchBracket(stripped, open, '(', ')');
    if (close == -1) continue;
    final params = stripped.substring(open + 1, close);

    var i = close + 1;
    while (i < stripped.length && stripped[i].trim().isEmpty) {
      i++;
    }
    String? body;
    if (i < stripped.length && stripped[i] == '{') {
      final end = _matchBracket(stripped, i, '{', '}');
      if (end == -1) continue;
      try {
        body = _returnExpressionOf(stripped.substring(i + 1, end));
      } catch (_) {
        continue; // not a single-return helper
      }
    } else if (stripped.startsWith('=>', i)) {
      var depth = 0;
      for (var j = i + 2; j < stripped.length; j++) {
        final ch = stripped[j];
        if (ch == "'" || ch == '"') {
          j = _skipString(stripped, j);
          continue;
        }
        if (ch == '(' || ch == '[' || ch == '{') depth++;
        if (ch == ')' || ch == ']' || ch == '}') depth--;
        if (ch == ';' && depth == 0) {
          body = stripped.substring(i + 2, j);
          break;
        }
      }
    }
    if (body == null) continue;
    final parsed = _parseParameterNames(params);
    defs[name] = _FunctionDef(parsed.$1, parsed.$2, body);
  }
  return defs;
}

/// Returns (positional, named) parameter names from a parameter list source.
(List<String>, List<String>) _parseParameterNames(String params) {
  final positional = <String>[];
  final named = <String>[];
  final braceStart = params.indexOf('{');
  final positionalSrc =
      braceStart == -1 ? params : params.substring(0, braceStart);
  final namedSrc = braceStart == -1
      ? ''
      : params.substring(
          braceStart + 1,
          params.lastIndexOf('}') == -1
              ? params.length
              : params.lastIndexOf('}'));

  void collect(String src, List<String> into) {
    for (final part in src.split(',')) {
      final trimmed = part.trim();
      if (trimmed.isEmpty) continue;
      // The parameter name is the final identifier: `required String icon`.
      final ident = RegExp(r'([A-Za-z_][A-Za-z0-9_]*)\s*$').firstMatch(trimmed);
      if (ident != null) into.add(ident.group(1)!);
    }
  }

  collect(positionalSrc, positional);
  collect(namedSrc, named);
  return (positional, named);
}

/// Index of the bracket closing the one at [start], or -1.
int _matchBracket(String s, int start, String open, String close) {
  var depth = 0;
  for (var i = start; i < s.length; i++) {
    final ch = s[i];
    if (ch == "'" || ch == '"') {
      i = _skipString(s, i);
      continue;
    }
    if (ch == open) depth++;
    if (ch == close) {
      depth--;
      if (depth == 0) return i;
    }
  }
  return -1;
}

/// Returns the index of the closing quote of the string starting at [start].
int _skipString(String s, int start) {
  final quote = s[start];
  for (var i = start + 1; i < s.length; i++) {
    if (s[i] == r'\') {
      i++;
      continue;
    }
    if (s[i] == quote) return i;
  }
  throw const DslParseException('Unterminated string literal.');
}

/// Removes `//` and `/* */` comments, preserving anything inside strings.
String _stripComments(String s) {
  final out = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    final ch = s[i];
    if (ch == "'" || ch == '"') {
      final end = _skipString(s, i);
      out.write(s.substring(i, end + 1));
      i = end;
      continue;
    }
    if (ch == '/' && i + 1 < s.length) {
      if (s[i + 1] == '/') {
        while (i < s.length && s[i] != '\n') {
          i++;
        }
        out.write('\n');
        continue;
      }
      if (s[i + 1] == '*') {
        final end = s.indexOf('*/', i + 2);
        i = end == -1 ? s.length : end + 1;
        out.write(' ');
        continue;
      }
    }
    out.write(ch);
  }
  return out.toString();
}

class _DslParser {
  _DslParser(
    this.src, {
    this.functions = const {},
    this.bindings = const {},
    this.depth = 0,
  });

  final String src;

  /// Top-level helpers available to inline.
  final Map<String, _FunctionDef> functions;

  /// Parameter values bound while inlining a helper body.
  final Map<String, dynamic> bindings;

  /// Guards against helpers that call themselves.
  final int depth;

  int pos = 0;

  bool get _atEnd => pos >= src.length;

  void skipTrivia() {
    while (!_atEnd && src[pos].trim().isEmpty) {
      pos++;
    }
  }

  bool _consume(String token) {
    skipTrivia();
    if (src.startsWith(token, pos)) {
      pos += token.length;
      return true;
    }
    return false;
  }

  void _expect(String token) {
    if (!_consume(token)) {
      throw DslParseException("Expected '$token' near: ${_context()}");
    }
  }

  String _context() {
    final end = (pos + 30).clamp(0, src.length);
    return src.substring(pos.clamp(0, src.length), end).trim();
  }

  /// Parses any DSL value: literal, list, map, enum reference or constructor.
  dynamic parseValue() {
    skipTrivia();
    if (_atEnd) throw const DslParseException('Unexpected end of expression.');
    final ch = src[pos];

    // Explicit type arguments on a collection literal: `<Map<String, dynamic>>[…]`.
    if (ch == '<') {
      _skipTypeArguments();
      return parseValue();
    }

    if (ch == "'" || ch == '"') return _parseStringLiteral();
    if (ch == '[') return _parseList();
    if (ch == '{') return _parseMap();
    if (ch == '-' || _isDigit(ch)) return _parseNumber();

    if (src.startsWith('r', pos) &&
        pos + 1 < src.length &&
        (src[pos + 1] == "'" || src[pos + 1] == '"')) {
      return _parseStringLiteral();
    }

    if (_matchKeyword('true')) return true;
    if (_matchKeyword('false')) return false;
    if (_matchKeyword('null')) return null;
    if (_matchKeyword('const') || _matchKeyword('new')) return parseValue();

    if (_isIdentifierStart(ch)) return _parseIdentifierExpression();

    throw DslParseException('Unsupported expression near: ${_context()}');
  }

  /// Skips a balanced `<…>` type-argument list.
  void _skipTypeArguments() {
    skipTrivia();
    if (_atEnd || src[pos] != '<') return;
    var depth = 0;
    while (!_atEnd) {
      if (src[pos] == '<') depth++;
      if (src[pos] == '>') {
        depth--;
        if (depth == 0) {
          pos++;
          return;
        }
      }
      pos++;
    }
    throw const DslParseException('Unterminated type arguments.');
  }

  /// Matches a bare keyword, making sure it isn't the prefix of a longer
  /// identifier (`nullable`, `constant`, …).
  bool _matchKeyword(String word) {
    skipTrivia();
    if (!src.startsWith(word, pos)) return false;
    final after = pos + word.length;
    if (after < src.length && _isIdentifierPart(src[after])) return false;
    pos = after;
    return true;
  }

  bool _isDigit(String c) => c.compareTo('0') >= 0 && c.compareTo('9') <= 0;

  bool _isIdentifierStart(String c) =>
      c == '_' ||
      (c.toLowerCase() != c.toUpperCase()) ||
      (c.compareTo('a') >= 0 && c.compareTo('z') <= 0);

  bool _isIdentifierPart(String c) => _isIdentifierStart(c) || _isDigit(c);

  String _readIdentifier() {
    skipTrivia();
    final start = pos;
    while (!_atEnd && _isIdentifierPart(src[pos])) {
      pos++;
    }
    if (start == pos) {
      throw DslParseException('Expected an identifier near: ${_context()}');
    }
    return src.substring(start, pos);
  }

  /// Dart concatenates adjacent string literals, and `dart format` splits long
  /// URLs that way, so keep reading them.
  String _parseStringLiteral() {
    final buffer = StringBuffer();
    while (true) {
      skipTrivia();
      if (_atEnd) break;
      var isRaw = false;
      if (src[pos] == 'r' &&
          pos + 1 < src.length &&
          (src[pos + 1] == "'" || src[pos + 1] == '"')) {
        isRaw = true;
        pos++;
      }
      if (src[pos] != "'" && src[pos] != '"') break;
      final quote = src[pos];
      // Triple-quoted strings.
      final triple = src.startsWith(quote * 3, pos);
      if (triple) {
        final close = src.indexOf(quote * 3, pos + 3);
        if (close == -1) {
          throw const DslParseException('Unterminated string literal.');
        }
        buffer.write(src.substring(pos + 3, close));
        pos = close + 3;
        continue;
      }
      pos++;
      while (!_atEnd && src[pos] != quote) {
        if (!isRaw && src[pos] == r'\') {
          pos++;
          if (_atEnd) break;
          buffer.write(_unescape(src[pos]));
          pos++;
          continue;
        }
        // `$` is literal inside a raw string, so only flag interpolation for
        // ordinary literals.
        if (!isRaw && src[pos] == r'$') {
          throw const DslParseException(
            'String interpolation needs evaluation and cannot be previewed.',
          );
        }
        buffer.write(src[pos]);
        pos++;
      }
      if (_atEnd) throw const DslParseException('Unterminated string literal.');
      pos++; // closing quote
      // Peek for an adjacent literal to concatenate.
      final save = pos;
      skipTrivia();
      final adjacent = !_atEnd &&
          (src[pos] == "'" ||
              src[pos] == '"' ||
              (src[pos] == 'r' &&
                  pos + 1 < src.length &&
                  (src[pos + 1] == "'" || src[pos + 1] == '"')));
      if (!adjacent) {
        pos = save;
        break;
      }
    }
    return buffer.toString();
  }

  String _unescape(String c) => switch (c) {
        'n' => '\n',
        't' => '\t',
        'r' => '\r',
        'b' => '\b',
        _ => c,
      };

  num _parseNumber() {
    skipTrivia();
    final start = pos;
    if (!_atEnd && src[pos] == '-') pos++;
    while (!_atEnd && (_isDigit(src[pos]) || src[pos] == '.')) {
      pos++;
    }
    final text = src.substring(start, pos);
    final value = num.tryParse(text);
    if (value == null) throw DslParseException('Invalid number: $text');
    return value;
  }

  List<dynamic> _parseList() {
    _expect('[');
    final items = <dynamic>[];
    while (true) {
      skipTrivia();
      if (_consume(']')) break;
      items.add(parseValue());
      skipTrivia();
      if (_consume(',')) continue;
      _expect(']');
      break;
    }
    return items;
  }

  Map<String, dynamic> _parseMap() {
    _expect('{');
    final map = <String, dynamic>{};
    while (true) {
      skipTrivia();
      if (_consume('}')) break;
      final key = parseValue();
      if (key is! String) {
        throw const DslParseException('Map keys must be string literals.');
      }
      _expect(':');
      map[key] = parseValue();
      skipTrivia();
      if (_consume(',')) continue;
      _expect('}');
      break;
    }
    return map;
  }

  /// Handles `StacText(...)`, `StacEdgeInsets.only(...)`, `Enum.value`, and a
  /// trailing `.toJson()`.
  dynamic _parseIdentifierExpression() {
    final name = _readIdentifier();

    String? memberName;
    final save = pos;
    skipTrivia();
    if (_consume('.')) {
      memberName = _readIdentifier();
    } else {
      pos = save;
    }

    skipTrivia();
    final hasArgs = !_atEnd && src[pos] == '(';
    if (!hasArgs) {
      if (memberName == null) {
        // A helper parameter bound while inlining, e.g. `icon` inside
        // `_socialRow`'s body.
        if (bindings.containsKey(name)) return bindings[name];
        throw DslParseException(
          "'$name' needs evaluation and cannot be previewed.",
        );
      }
      // Enum or static constant: `StacFontWeight.w600`, `double.maxFinite`.
      return memberName;
    }

    final helper = memberName == null ? functions[name] : null;
    if (helper != null) {
      final args = _parseArguments();
      _consumeTrailingToJson();
      return _inlineHelper(name, helper, args);
    }

    if (!name.startsWith('Stac')) {
      throw DslParseException(
        "'$name(...)' needs evaluation and cannot be previewed.",
      );
    }

    final args = _parseArguments();
    _consumeTrailingToJson();
    return _buildJson(name, memberName, args);
  }

  /// Inlines a single-expression helper by binding its parameters to the call
  /// arguments and parsing its body in that scope.
  dynamic _inlineHelper(String name, _FunctionDef def, _Arguments args) {
    if (depth > 8) {
      throw DslParseException("'$name(...)' recurses too deeply to preview.");
    }
    final scope = <String, dynamic>{};
    for (var i = 0;
        i < def.positional.length && i < args.positional.length;
        i++) {
      scope[def.positional[i]] = args.positional[i];
    }
    for (final param in def.named) {
      if (args.named.containsKey(param)) scope[param] = args.named[param];
    }
    final inner = _DslParser(
      def.body,
      functions: functions,
      bindings: scope,
      depth: depth + 1,
    );
    final value = inner.parseValue();
    return value;
  }

  void _consumeTrailingToJson() {
    final save = pos;
    skipTrivia();
    if (_consume('.')) {
      skipTrivia();
      if (src.startsWith('toJson', pos)) {
        pos += 'toJson'.length;
        _expect('(');
        _expect(')');
        return;
      }
    }
    pos = save;
  }

  _Arguments _parseArguments() {
    _expect('(');
    final positional = <dynamic>[];
    final named = <String, dynamic>{};
    while (true) {
      skipTrivia();
      if (_consume(')')) break;
      // Named argument? `name:` — but not `Enum.value` or a string key.
      final save = pos;
      var isNamed = false;
      String? label;
      if (!_atEnd && _isIdentifierStart(src[pos])) {
        final ident = _readIdentifier();
        skipTrivia();
        if (!_atEnd && src[pos] == ':') {
          pos++;
          isNamed = true;
          label = ident;
        } else {
          pos = save;
        }
      }
      final value = parseValue();
      if (isNamed) {
        named[label!] = value;
      } else {
        positional.add(value);
      }
      skipTrivia();
      if (_consume(',')) continue;
      _expect(')');
      break;
    }
    return _Arguments(positional, named);
  }

  dynamic _buildJson(String className, String? constructor, _Arguments args) {
    // `StacEdgeInsets.all(8)` / `StacBorderRadius.circular(8)` → 8, which
    // fromJson expands across all sides.
    if (_scalarExpandable.contains(className) &&
        (constructor == 'all' || constructor == 'circular') &&
        args.positional.length == 1 &&
        args.named.isEmpty) {
      return args.positional.first;
    }

    // `StacEdgeInsets.symmetric(horizontal: h, vertical: v)`.
    if (className == 'StacEdgeInsets' && constructor == 'symmetric') {
      final horizontal = args.named['horizontal'];
      final vertical = args.named['vertical'];
      return <String, dynamic>{
        if (horizontal != null) 'left': horizontal,
        if (horizontal != null) 'right': horizontal,
        if (vertical != null) 'top': vertical,
        if (vertical != null) 'bottom': vertical,
      };
    }

    // `StacAction(jsonData: {...})` is the escape hatch for a raw action map,
    // and it serializes as that map rather than as a wrapper around it.
    if (className == 'StacAction') {
      final raw = args.named['jsonData'];
      return raw is Map<String, dynamic> ? raw : <String, dynamic>{};
    }

    if (args.positional.isNotEmpty) {
      throw DslParseException(
        '$className${constructor == null ? '' : '.$constructor'}() uses '
        'positional arguments that cannot be mapped to JSON.',
      );
    }

    final json = <String, dynamic>{};
    if (_widgetClasses.contains(className)) {
      json['type'] = _typeForClass(className);
    }
    json.addAll(args.named);
    return json;
  }
}

class _Arguments {
  const _Arguments(this.positional, this.named);

  final List<dynamic> positional;
  final Map<String, dynamic> named;
}
