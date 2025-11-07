// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_form_validate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacFormValidate _$StacFormValidateFromJson(Map<String, dynamic> json) =>
    StacFormValidate(
      isValid: json['isValid'] == null
          ? null
          : StacAction.fromJson(json['isValid'] as Map<String, dynamic>),
      isNotValid: json['isNotValid'] == null
          ? null
          : StacAction.fromJson(json['isNotValid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacFormValidateToJson(StacFormValidate instance) =>
    <String, dynamic>{
      'isValid': instance.isValid?.toJson(),
      'isNotValid': instance.isNotValid?.toJson(),
      'actionType': instance.actionType,
    };
