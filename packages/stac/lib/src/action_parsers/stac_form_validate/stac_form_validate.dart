import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_form_validate_parser.dart';

part 'stac_form_validate.freezed.dart';
part 'stac_form_validate.g.dart';

@freezed
class StacFormValidate with _$StacFormValidate {
  const factory StacFormValidate({
    Map<String, dynamic>? isValid,
    Map<String, dynamic>? isNotValid,
  }) = _StacFormValidate;

  factory StacFormValidate.fromJson(Map<String, dynamic> json) =>
      _$StacFormValidateFromJson(json);
}
