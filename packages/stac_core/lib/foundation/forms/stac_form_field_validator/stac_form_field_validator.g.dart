// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form_field_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFormFieldValidator _$StacFormFieldValidatorFromJson(
  Map<String, dynamic> json,
) => StacFormFieldValidator(
  rule: json['rule'] as String,
  message: json['message'] as String?,
  options: json['options'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$StacFormFieldValidatorToJson(
  StacFormFieldValidator instance,
) => <String, dynamic>{
  'rule': instance.rule,
  'message': instance.message,
  'options': instance.options,
};
