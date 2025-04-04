// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dynamic_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDynamicViewImpl _$$StacDynamicViewImplFromJson(
        Map<String, dynamic> json) =>
    _$StacDynamicViewImpl(
      request:
          StacNetworkRequest.fromJson(json['request'] as Map<String, dynamic>),
      targetPath: json['targetPath'] as String? ?? '',
      template: json['template'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$StacDynamicViewImplToJson(
        _$StacDynamicViewImpl instance) =>
    <String, dynamic>{
      'request': instance.request,
      'targetPath': instance.targetPath,
      'template': instance.template,
    };
