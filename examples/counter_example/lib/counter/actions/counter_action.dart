import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_action.freezed.dart';
part 'counter_action.g.dart';

enum CounterActionType {
  increment,
  decrement,
}

@freezed
abstract class CounterAction with _$CounterAction {
  const factory CounterAction({
    required CounterActionType counterActionType,
    @Default(1) int delta,
  }) = _CounterAction;

  factory CounterAction.fromJson(Map<String, dynamic> json) =>
      _$CounterActionFromJson(json);
}
