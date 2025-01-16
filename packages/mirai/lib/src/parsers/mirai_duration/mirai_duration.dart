import 'package:freezed_annotation/freezed_annotation.dart';

part 'mirai_duration.freezed.dart';
part 'mirai_duration.g.dart';

@freezed
class MiraiDuration with _$MiraiDuration {
  const factory MiraiDuration({
    @Default(0) int days,
    @Default(0) int hours,
    @Default(0) int minutes,
    @Default(0) int seconds,
    @Default(0) int milliseconds,
    @Default(0) int microseconds,
  }) = _MiraiDuration;

  factory MiraiDuration.fromJson(Map<String, dynamic> json) =>
      _$MiraiDurationFromJson(json);
}

extension MiraiDurationParser on MiraiDuration {
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
