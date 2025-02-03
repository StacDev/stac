import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_form_validator.freezed.dart';
part 'stac_form_validator.g.dart';

@freezed
class StacFormFieldValidator with _$StacFormFieldValidator {
  const factory StacFormFieldValidator({
    required String rule,
    String? message,
  }) = _StacFormFieldValidator;

  factory StacFormFieldValidator.fromJson(Map<String, dynamic> json) =>
      _$StacFormFieldValidatorFromJson(json);
}
