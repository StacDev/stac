import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_duration.freezed.dart';
part 'stac_duration.g.dart';

@freezed
class StacDuration with _$StacDuration {
  const factory StacDuration({
    @Default(0) int days,
    @Default(0) int hours,
    @Default(0) int minutes,
    @Default(0) int seconds,
    @Default(0) int milliseconds,
    @Default(0) int microseconds,
  }) = _StacDuration;

  factory StacDuration.fromJson(Map<String, dynamic> json) =>
      _$StacDurationFromJson(json);
}

extension StacDurationParser on StacDuration {
  Duration get parse {
    return Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
      microseconds: microseconds,
    );
  }
}
