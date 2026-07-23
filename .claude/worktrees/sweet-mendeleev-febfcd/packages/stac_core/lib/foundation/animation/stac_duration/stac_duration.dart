import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_duration.g.dart';

/// A Stac model representing Flutter's [Duration] class.
///
/// Represents a span of time with various time units.
///
/// ```dart
/// StacDuration(
///   days: 1,
///   hours: 2,
///   minutes: 30,
///   seconds: 45,
///   milliseconds: 500,
/// )
/// ```
///
/// ```json
/// {
///   "days": 1,
///   "hours": 2,
///   "minutes": 30,
///   "seconds": 45,
///   "milliseconds": 500,
///   "microseconds": 0
/// }
/// ```
@JsonSerializable()
class StacDuration extends StacElement {
  /// Creates a [StacDuration] with the given time components.
  const StacDuration({
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.milliseconds,
    this.microseconds,
  });

  /// The number of days in this duration.
  final int? days;

  /// The number of hours in this duration.
  final int? hours;

  /// The number of minutes in this duration.
  final int? minutes;

  /// The number of seconds in this duration.
  final int? seconds;

  /// The number of milliseconds in this duration.
  final int? milliseconds;

  /// The number of microseconds in this duration.
  final int? microseconds;

  /// Creates a [StacDuration] from JSON.
  factory StacDuration.fromJson(Map<String, dynamic> json) =>
      _$StacDurationFromJson(json);

  /// Converts this duration to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDurationToJson(this);
}
