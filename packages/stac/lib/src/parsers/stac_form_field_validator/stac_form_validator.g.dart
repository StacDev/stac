// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form_validator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacFormFieldValidator _$StacFormFieldValidatorFromJson(
        Map<String, dynamic> json) =>
    _StacFormFieldValidator(
      rule: json['rule'] as String,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$StacFormFieldValidatorToJson(
        _StacFormFieldValidator instance) =>
    <String, dynamic>{
      'rule': instance.rule,
      'message': instance.message,
    };
