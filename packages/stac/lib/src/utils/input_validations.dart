import 'package:flutter_validators/flutter_validators.dart';

typedef _RuleValidator =
    bool Function(String value, Map<String, dynamic>? options);

/// Maps Stac `validatorRules` rule strings to `flutter_validators` functions.
///
/// Every rule delegates to the `flutter_validators` package — Stac keeps no
/// homegrown validation logic. Parameterized validators read their arguments
/// from the rule's `options` map.
class InputValidators {
  InputValidators._();

  static final Map<String, _RuleValidator> _rules = {
    'isAlpha': (v, o) => isAlpha(v),
    'isAlphanumeric': (v, o) => isAlphanumeric(v),
    'isAscii': (v, o) => isAscii(v),
    'isBase32': (v, o) => isBase32(v),
    'isBase58': (v, o) => isBase58(v),
    'isBase64': (v, o) => isBase64(v, urlSafe: o?['urlSafe'] == true),
    'isBoolean': (v, o) => isBoolean(v),
    'isCreditCard': (v, o) => isCreditCard(v),
    'isDate': (v, o) => isDate(v),
    'isDecimal': (v, o) => isDecimal(v),
    'isEmail': (v, o) => isEmail(v),
    'isFQDN': (v, o) => isFQDN(v),
    'isFloat': (v, o) =>
        isFloat(v, min: _toDouble(o?['min']), max: _toDouble(o?['max'])),
    'isHexColor': (v, o) => isHexColor(v),
    'isHexadecimal': (v, o) => isHexadecimal(v),
    'isInt': (v, o) => isInt(v),
    'isIP': (v, o) => isIP(v, _toInt(o?['version'])),
    'isJson': (v, o) => isJson(v),
    'isJWT': (v, o) => isJWT(v),
    'isLatLong': (v, o) => isLatLong(v),
    'isLowercase': (v, o) => isLowercase(v),
    'isMACAddress': (v, o) => isMACAddress(v),
    'isMD5': (v, o) => isMD5(v),
    'isMongoId': (v, o) => isMongoId(v),
    'isNumeric': (v, o) => isNumeric(v),
    'isOctal': (v, o) => isOctal(v),
    'isPhone': (v, o) => isPhone(v),
    'isPort': (v, o) => isPort(v),
    'isSemVer': (v, o) => isSemVer(v),
    'isSlug': (v, o) => isSlug(v),
    'isUppercase': (v, o) => isUppercase(v),
    'isURL': (v, o) => isURL(v),
    'isUUID': (v, o) => isUUID(v),
    'isByteLength': (v, o) =>
        isByteLength(v, _toInt(o?['min']) ?? 0, _toInt(o?['max'])),
    'isLength': (v, o) =>
        isLength(v, _toInt(o?['min']) ?? 0, _toInt(o?['max'])),
    'isIn': (v, o) => isIn(v, _toStringList(o?['values'])),
    'contains': (v, o) => contains(
      v,
      o?['seed']?.toString() ?? '',
      ignoreCase: o?['ignoreCase'] == true,
      minOccurrences: _toInt(o?['minOccurrences']) ?? 1,
    ),
    'equals': (v, o) => equals(v, o?['comparison']?.toString() ?? ''),
    'matches': (v, o) {
      final pattern = o?['pattern']?.toString();
      if (pattern == null || pattern.isEmpty) return false;
      try {
        return matches(v, RegExp(pattern));
      } catch (_) {
        return false;
      }
    },
    'isStrongPassword': (v, o) => isStrongPassword(
      v,
      minLength: _toInt(o?['minLength']) ?? 8,
      minLowercase: _toInt(o?['minLowercase']) ?? 1,
      minUppercase: _toInt(o?['minUppercase']) ?? 1,
      minNumbers: _toInt(o?['minNumbers']) ?? 1,
      minSymbols: _toInt(o?['minSymbols']) ?? 1,
    ),
  };

  /// Validates [value] against [rule], reading any arguments from [options].
  ///
  /// Unknown rules pass (return `true`) — the rule set is owned upstream by
  /// the `flutter_validators` package.
  static bool validate(
    String rule,
    String value, {
    Map<String, dynamic>? options,
  }) {
    final validator = _rules[rule];
    if (validator == null) return true;
    return validator(value, options);
  }

  /// Whether [rule] is a known `flutter_validators` rule.
  static bool hasRule(String rule) => _rules.containsKey(rule);

  static int? _toInt(Object? value) =>
      value is int ? value : (value is num ? value.toInt() : null);

  static double? _toDouble(Object? value) =>
      value is num ? value.toDouble() : null;

  static Iterable<String> _toStringList(Object? value) =>
      value is Iterable ? value.map((e) => e.toString()) : const <String>[];
}
