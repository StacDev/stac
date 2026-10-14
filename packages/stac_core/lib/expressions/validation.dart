import 'ast.dart';
import 'expression_exception.dart';
import 'parser.dart';
import 'template.dart';

/// A problem found by [validateStacExpressions].
class StacExpressionIssue {
  /// Creates an issue.
  const StacExpressionIssue({
    required this.path,
    required this.expression,
    required this.message,
    this.offset,
  });

  /// Where the problem is, as a JSON path such as `body.children[2].data`.
  final String path;

  /// The offending text: a placeholder including its braces, or a condition.
  final String expression;

  /// What is wrong.
  final String message;

  /// Offset of the problem within [expression], when known.
  final int? offset;

  @override
  String toString() {
    final at = offset == null ? '' : ' at offset $offset';
    return '$path: $message$at in $expression';
  }
}

/// Checks every `{{ }}` placeholder and every `conditional` condition in
/// [json] for syntax errors, and every state path: input `bind` paths,
/// `setValue` paths, a network request's `saveTo` and `targetPath`, a
/// data provider's `targetPath`, and the `keyPath` of lists. Data provider
/// and `refetch` ids must be plain names.
///
/// Placeholders that are legacy data paths, such as `{{first-name}}`, are
/// accepted even though they are not valid expressions.
List<StacExpressionIssue> validateStacExpressions(Object? json) {
  final issues = <StacExpressionIssue>[];
  _visit(json, '', null, null, issues);
  return issues;
}

void _visit(
  Object? value,
  String path,
  String? ownerType,
  String? key,
  List<StacExpressionIssue> issues,
) {
  if (value is String) {
    final isCondition = ownerType == 'conditional' && key == 'condition';
    if (!isCondition && !StacTemplate.hasPlaceholderSyntax(value)) return;
    final template = StacTemplate.parse(value);
    for (final placeholder in template.placeholders) {
      final error = placeholder.error;
      if (error != null && placeholder.legacyPath == null) {
        issues.add(
          StacExpressionIssue(
            path: path,
            expression: placeholder.raw,
            message: error.message,
            offset: error.offset == null
                ? null
                : placeholder.raw.indexOf(placeholder.source) + error.offset!,
          ),
        );
      }
    }
    if (isCondition) _checkCondition(template, path, issues);
    return;
  }
  if (value is Map) {
    _checkPaths(value, path, issues);
    final type = value['type'];
    final ownType = type is String ? type : null;
    value.forEach((rawKey, child) {
      final childKey = rawKey.toString();
      _visit(
        child,
        path.isEmpty ? childKey : '$path.$childKey',
        ownType,
        childKey,
        issues,
      );
    });
    return;
  }
  if (value is List) {
    for (var i = 0; i < value.length; i++) {
      _visit(value[i], '$path[$i]', null, null, issues);
    }
  }
}

void _checkCondition(
  StacTemplate template,
  String path,
  List<StacExpressionIssue> issues,
) {
  // Stand in for each placeholder with a literal so the surrounding
  // expression can be checked on its own.
  final text = template.parts
      .map((part) => part is StacTemplatePlaceholder ? 'null' : part)
      .join();
  try {
    StacExpressionParser(text).parse();
  } on StacExpressionException catch (e) {
    issues.add(
      StacExpressionIssue(
        path: path,
        expression: template.source,
        message: e.message,
        offset: template.hasPlaceholders ? null : e.offset,
      ),
    );
  }
}

const Set<String> _readOnlyRoots = {
  r'$args',
  r'$device',
  r'$value',
  r'$result',
};
const Set<String> _levelRoots = {r'$app', r'$screen', r'$form'};

void _checkPaths(Map value, String path, List<StacExpressionIssue> issues) {
  String at(String key) => path.isEmpty ? key : '$path.$key';

  final bind = value['bind'];
  if (bind is String) _checkPath(bind, at('bind'), writable: true, issues);

  final actionType = value['actionType'];
  if (actionType == 'networkRequest') {
    final saveTo = value['saveTo'];
    if (saveTo is String) {
      _checkPath(saveTo, at('saveTo'), writable: true, issues);
    }
    final targetPath = value['targetPath'];
    if (targetPath is String) {
      _checkPath(targetPath, at('targetPath'), writable: false, issues);
    }
  }

  final type = value['type'];
  if (type == 'dataProvider') {
    _checkName(value['id'], at('id'), issues);
    final targetPath = value['targetPath'];
    if (targetPath is String) {
      _checkPath(targetPath, at('targetPath'), writable: false, issues);
    }
  }
  if (actionType == 'refetch') _checkName(value['id'], at('id'), issues);

  final keyPath = value['keyPath'];
  if (type is String && keyPath is String) {
    if (keyPath.trim().startsWith(r'$')) {
      issues.add(
        StacExpressionIssue(
          path: at('keyPath'),
          expression: keyPath,
          message:
              'keyPath is read inside each item; write it without '
              r'$item, such as "id"',
        ),
      );
    } else {
      _checkPath(keyPath, at('keyPath'), writable: false, issues);
    }
  }

  if (actionType == 'setValue' || type == 'setValue') {
    final entries = value['values'];
    if (entries is List) {
      for (var i = 0; i < entries.length; i++) {
        final entry = entries[i];
        if (entry is Map && entry['path'] is String) {
          _checkPath(
            entry['path'] as String,
            at('values[$i].path'),
            writable: true,
            issues,
          );
        }
      }
    }
  }
}

final RegExp _name = RegExp(r'^[A-Za-z_][A-Za-z0-9_]*$');

/// Checks that [value] can name a variable: letters, digits and `_`, not
/// starting with a digit.
void _checkName(Object? value, String path, List<StacExpressionIssue> issues) {
  if (value is! String || StacTemplate.hasPlaceholderSyntax(value)) return;
  if (_name.hasMatch(value)) return;
  issues.add(
    StacExpressionIssue(
      path: path,
      expression: value,
      message:
          'Use a plain name made of letters, digits and _, such as '
          '"movies"',
    ),
  );
}

void _checkPath(
  String value,
  String path,
  List<StacExpressionIssue> issues, {
  required bool writable,
}) {
  // Placeholders are filled in at runtime; their syntax is checked with the
  // other placeholders.
  if (StacTemplate.hasPlaceholderSyntax(value)) return;
  void report(String message, [int? offset]) {
    issues.add(
      StacExpressionIssue(
        path: path,
        expression: value,
        message: message,
        offset: offset,
      ),
    );
  }

  final List<String>? segments;
  try {
    segments = stacStaticPath(StacExpressionParser(value.trim()).parse());
  } on StacExpressionException catch (e) {
    report('Not a valid state path: ${e.message}', e.offset);
    return;
  }
  if (segments == null) {
    report('Not a state path; use names, dots and [indexes] only');
    return;
  }
  if (!writable) return;
  final root = segments.first;
  if (_readOnlyRoots.contains(root)) {
    report('$root is read-only');
  } else if (_levelRoots.contains(root) && segments.length == 1) {
    report('Needs a name after $root');
  }
}
