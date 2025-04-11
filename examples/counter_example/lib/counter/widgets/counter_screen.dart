import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_screen.freezed.dart';
part 'counter_screen.g.dart';

@freezed
abstract class CounterScreen with _$CounterScreen {
  const factory CounterScreen({
    required String title,
    required String description,
    @Default(0) int initialCount,
    Map<String, dynamic>? onIncrement,
    Map<String, dynamic>? onDecrement,
  }) = _CounterScreen;

  factory CounterScreen.fromJson(Map<String, dynamic> json) =>
      _$CounterScreenFromJson(json);
}
