import 'package:json_annotation/json_annotation.dart';

/// Utility functions for date and time parsing
class DateTimeUtils {
  DateTimeUtils._();

  /// Parses a dynamic date value to DateTime.
  ///
  /// Handles:
  /// - null values (returns null)
  /// - DateTime objects (returns as-is)
  /// - String values (parses ISO 8601 format)
  /// - Firestore Timestamp maps with `_seconds`/`seconds` keys
  /// - Other types (returns null)
  static DateTime? parseDateTime(dynamic dateValue) {
    if (dateValue == null) return null;
    if (dateValue is DateTime) return dateValue;
    if (dateValue is String) {
      try {
        return DateTime.parse(dateValue);
      } catch (e) {
        return null;
      }
    }
    // Handle Firestore Timestamp map format
    if (dateValue is Map<String, dynamic>) {
      final seconds = dateValue['_seconds'] ?? dateValue['seconds'];
      if (seconds is int) {
        final nanoseconds =
            (dateValue['_nanoseconds'] ?? dateValue['nanoseconds'] ?? 0) as int;
        return DateTime.fromMillisecondsSinceEpoch(
          seconds * 1000 + (nanoseconds ~/ 1000000),
        );
      }
    }
    return null;
  }
}

/// JSON converter for DateTime that handles Firestore Timestamps.
///
/// Use with `@FirestoreDateTime()` annotation on DateTime fields.
class FirestoreDateTime implements JsonConverter<DateTime, dynamic> {
  const FirestoreDateTime();

  @override
  DateTime fromJson(dynamic json) {
    final parsed = DateTimeUtils.parseDateTime(json);
    if (parsed == null) {
      throw FormatException('Cannot parse DateTime from: $json');
    }
    return parsed;
  }

  @override
  String toJson(DateTime object) => object.toIso8601String();
}

/// JSON converter for nullable DateTime that handles Firestore Timestamps.
///
/// Use with `@FirestoreDateTimeNullable()` annotation on DateTime? fields.
class FirestoreDateTimeNullable implements JsonConverter<DateTime?, dynamic> {
  const FirestoreDateTimeNullable();

  @override
  DateTime? fromJson(dynamic json) => DateTimeUtils.parseDateTime(json);

  @override
  String? toJson(DateTime? object) => object?.toIso8601String();
}
