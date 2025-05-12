import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac_framework/stac_framework.dart';

part 'stac_set_value_action.freezed.dart';
part 'stac_set_value_action.g.dart';

@freezed
abstract class StacSetValueAction with _$StacSetValueAction {
  const factory StacSetValueAction({
    @Default([]) List<Map<String, dynamic>> values,
    StacAction? action,
  }) = _StacSetValueAction;

  factory StacSetValueAction.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueActionFromJson(json);
}
