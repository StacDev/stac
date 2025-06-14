import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_delay_action_parser.dart';

part 'stac_delay_action.freezed.dart';
part 'stac_delay_action.g.dart';

@freezed
abstract class StacDelayAction with _$StacDelayAction {
  const factory StacDelayAction({
    @Default(1000) int milliseconds,
  }) = _StacDelayAction;

  factory StacDelayAction.fromJson(Map<String, dynamic> json) =>
      _$StacDelayActionFromJson(json);
}
