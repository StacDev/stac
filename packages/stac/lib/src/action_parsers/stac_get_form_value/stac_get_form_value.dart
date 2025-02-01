import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_get_form_value_parser.dart';

part 'stac_get_form_value.freezed.dart';
part 'stac_get_form_value.g.dart';

@freezed
class StacGetFormValue with _$StacGetFormValue {
  const factory StacGetFormValue({
    required String id,
  }) = _StacGetFormValue;

  factory StacGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$StacGetFormValueFromJson(json);
}
