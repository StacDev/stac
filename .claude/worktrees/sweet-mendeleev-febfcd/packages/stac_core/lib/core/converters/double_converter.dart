import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts string values to double.
///
/// Handles special cases:
/// - "infinite" -> double.infinity
/// - "-infinite" -> double.negativeInfinity
/// - "20" -> 20.0
/// - null -> null
/// - double values -> pass through
class DoubleConverter implements JsonConverter<double?, dynamic> {
  /// Creates a [DoubleConverter] that converts string values to double.
  const DoubleConverter();

  @override
  double? fromJson(dynamic json) {
    if (json == null) return null;

    if (json is double) return json;
    if (json is int) return json.toDouble();

    if (json is String) {
      switch (json.toLowerCase()) {
        case 'nan':
          return double.nan;
        case 'infinity':
          return double.infinity;
        case 'negativeInfinity':
          return double.negativeInfinity;
        case 'maxfinite':
          return double.maxFinite;
        case 'minpositive':
          return double.minPositive;
        default:
          return double.tryParse(json);
      }
    }

    return null;
  }

  @override
  dynamic toJson(double? object) => object;
}
