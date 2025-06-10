import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_multi_action_parser.dart';

part 'stac_multi_action.freezed.dart';
part 'stac_multi_action.g.dart';

@freezed
abstract class StacMultiAction with _$StacMultiAction {
  const factory StacMultiAction({
    required List<Map<String, dynamic>?>? actions,
  }) = _StacMultiAction;

  factory StacMultiAction.fromJson(Map<String, dynamic> json) =>
      _$StacMultiActionFromJson(json);
}
