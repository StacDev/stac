import 'dart:math' as math;

/// A utility class to evaluate expressions in Stac templates.
///
/// This resolver can handle basic mathematical operations, boolean logic,
/// and string operations within template expressions like {{1+1}}.
class ExpressionResolver {
  /// Evaluates a string expression and returns the result.
  ///
  /// Supports basic arithmetic operations (+, -, *, /, %),
  /// comparisons (==, !=, >, <, >=, <=), and logical operations (&&, ||).
  ///
  /// Example:
  /// ```dart
  /// ExpressionResolver.evaluate('1+1'); // Returns 2
  /// ExpressionResolver.evaluate('5 > 3'); // Returns true
  /// ExpressionResolver.evaluate('"hello" + " world"'); // Returns 'hello world'
  /// ```
  static dynamic evaluate(String expression) {
    try {
      // Trim whitespace and check if empty
      expression = expression.trim();
      if (expression.isEmpty) return null;

      // Handle string concatenation
      if (expression.contains('"') || expression.contains("'")) {
        return _evaluateStringExpression(expression);
      }

      // Handle boolean expressions
      if (expression.contains('==') ||
          expression.contains('!=') ||
          expression.contains('>') ||
          expression.contains('<') ||
          expression.contains('>=') ||
          expression.contains('<=') ||
          expression.contains('&&') ||
          expression.contains('||')) {
        return _evaluateBooleanExpression(expression);
      }

      // Handle mathematical expressions
      return _evaluateMathExpression(expression);
    } catch (e) {
      // If evaluation fails, return the original expression
      return expression;
    }
  }

  /// Evaluates a mathematical expression.
  static dynamic _evaluateMathExpression(String expression) {
    // Replace common math functions
    expression = _replaceMathFunctions(expression);

    // Parse and evaluate the expression
    return _parseExpression(expression);
  }

  /// Evaluates a boolean expression.
  static bool _evaluateBooleanExpression(String expression) {
    // Handle AND operator
    if (expression.contains('&&')) {
      List<String> parts = expression.split('&&');
      return parts.every((part) => _evaluateBooleanExpression(part.trim()));
    }

    // Handle OR operator
    if (expression.contains('||')) {
      List<String> parts = expression.split('||');
      return parts.any((part) => _evaluateBooleanExpression(part.trim()));
    }

    // Handle equality with null
    if (expression.contains('==')) {
      List<String> parts = expression.split('==');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      // Null checks
      if (parts[1].trim() == 'null') {
        return left == null;
      }
      if (parts[0].trim() == 'null') {
        return right == null;
      }
      return left == right;
    }

    // Handle inequality with null
    if (expression.contains('!=')) {
      List<String> parts = expression.split('!=');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      // Null checks
      if (parts[1].trim() == 'null') {
        return left != null;
      }
      if (parts[0].trim() == 'null') {
        return right != null;
      }
      return left != right;
    }

    // Handle greater than or equal
    if (expression.contains('>=')) {
      List<String> parts = expression.split('>=');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      return (left is num && right is num) ? left >= right : false;
    }

    // Handle less than or equal
    if (expression.contains('<=')) {
      List<String> parts = expression.split('<=');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      return (left is num && right is num) ? left <= right : false;
    }

    // Handle greater than
    if (expression.contains('>')) {
      List<String> parts = expression.split('>');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      return (left is num && right is num) ? left > right : false;
    }

    // Handle less than
    if (expression.contains('<')) {
      List<String> parts = expression.split('<');
      var left = _parseExpression(parts[0].trim());
      var right = _parseExpression(parts[1].trim());
      return (left is num && right is num) ? left < right : false;
    }

    // If it's not a boolean expression, try to evaluate it as a value
    var result = _parseExpression(expression);
    return result is bool ? result : false;
  }

  /// Evaluates a string expression.
  static String _evaluateStringExpression(String expression) {
    // Simple string concatenation
    if (expression.contains('+')) {
      List<String> parts = _splitStringExpression(expression, '+');
      return parts.map((part) {
        part = part.trim();
        // Remove quotes from string literals
        if ((part.startsWith('"') && part.endsWith('"')) ||
            (part.startsWith("'") && part.endsWith("'"))) {
          return part.substring(1, part.length - 1);
        }
        return part;
      }).join('');
    }

    // If no operation, just return the string without quotes
    expression = expression.trim();
    if ((expression.startsWith('"') && expression.endsWith('"')) ||
        (expression.startsWith("'") && expression.endsWith("'"))) {
      return expression.substring(1, expression.length - 1);
    }

    return expression;
  }

  /// Splits a string expression while respecting string literals.
  static List<String> _splitStringExpression(
      String expression, String delimiter) {
    List<String> result = [];
    bool inString = false;
    String currentQuote = '';
    String current = '';

    for (int i = 0; i < expression.length; i++) {
      String char = expression[i];

      // Toggle string mode when encountering quotes
      if ((char == '"' || char == "'") &&
          (i == 0 || expression[i - 1] != '\\')) {
        if (!inString) {
          inString = true;
          currentQuote = char;
        } else if (char == currentQuote) {
          inString = false;
        }
      }

      // Check for delimiter when not in a string
      if (!inString && char == delimiter) {
        result.add(current);
        current = '';
      } else {
        current += char;
      }
    }

    if (current.isNotEmpty) {
      result.add(current);
    }

    return result;
  }

  /// Replaces math function names with their values.
  static String _replaceMathFunctions(String expression) {
    // Replace PI constant
    expression = expression.replaceAll('PI', math.pi.toString());

    // Replace math functions
    final mathFunctions = <String, dynamic>{
      'sin': math.sin,
      'cos': math.cos,
      'tan': math.tan,
      'sqrt': math.sqrt,
      'abs': (num x) => x.abs(),
      'pow': math.pow,
      'max': math.max,
      'min': math.min,
      'round': (num x) => x.round(),
      'floor': (num x) => x.floor(),
      'ceil': (num x) => x.ceil(),
    };

    // This is a simplified implementation
    // A more robust solution would use a proper parser
    for (var func in mathFunctions.keys) {
      final regex = RegExp('$func\\(([^\\)]+)\\)');
      expression = expression.replaceAllMapped(regex, (match) {
        final args = match.group(1)!.split(',').map((arg) {
          final parsed = _parseExpression(arg.trim());
          return parsed is num ? parsed : 0;
        }).toList();

        if (func == 'pow' && args.length == 2) {
          return (mathFunctions[func] as Function)(args[0], args[1]).toString();
        } else if (func == 'max' && args.length == 2) {
          return (mathFunctions[func] as Function)(args[0], args[1]).toString();
        } else if (func == 'min' && args.length == 2) {
          return (mathFunctions[func] as Function)(args[0], args[1]).toString();
        } else if (args.isNotEmpty) {
          return (mathFunctions[func] as Function)(args[0]).toString();
        }
        return match.group(0)!;
      });
    }

    return expression;
  }

  /// Parses and evaluates a simple mathematical expression.
  static dynamic _parseExpression(String expression) {
    expression = expression.trim();

    // Try to parse as number first
    try {
      if (expression.contains('.')) {
        return double.parse(expression);
      } else {
        return int.parse(expression);
      }
    } catch (_) {
      // Not a simple number, continue with expression parsing
    }

    // Handle addition
    if (expression.contains('+')) {
      List<String> parts = expression.split('+');
      return parts.fold<num>(0, (sum, part) {
        var value = _parseExpression(part.trim());
        return value is num ? sum + value : sum;
      });
    }

    // Handle subtraction
    if (expression.contains('-')) {
      List<String> parts = expression.split('-');
      var first = _parseExpression(parts.first.trim());
      if (first is! num) first = 0;

      return parts.skip(1).fold<num>(first, (result, part) {
        var value = _parseExpression(part.trim());
        return value is num ? result - value : result;
      });
    }

    // Handle multiplication
    if (expression.contains('*')) {
      List<String> parts = expression.split('*');
      return parts.fold<num>(1, (product, part) {
        var value = _parseExpression(part.trim());
        return value is num ? product * value : product;
      });
    }

    // Handle division
    if (expression.contains('/')) {
      List<String> parts = expression.split('/');
      var first = _parseExpression(parts.first.trim());
      if (first is! num) first = 0;

      return parts.skip(1).fold<num>(first, (result, part) {
        var value = _parseExpression(part.trim());
        return value is num && value != 0 ? result / value : result;
      });
    }

    // Handle modulo
    if (expression.contains('%')) {
      List<String> parts = expression.split('%');
      var first = _parseExpression(parts.first.trim());
      if (first is! num) first = 0;

      return parts.skip(1).fold<num>(first, (result, part) {
        var value = _parseExpression(part.trim());
        return value is num && value != 0 ? result % value : result;
      });
    }

    // Handle boolean literals
    if (expression == 'true') return true;
    if (expression == 'false') return false;

    // Handle null literal
    if (expression == 'null') return null;

    // If we can't parse it, return the original expression
    return expression;
  }
}
