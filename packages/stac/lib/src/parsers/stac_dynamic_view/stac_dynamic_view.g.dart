// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dynamic_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDynamicView _$StacDynamicViewFromJson(Map<String, dynamic> json) =>
    _StacDynamicView(
      request:
          StacNetworkRequest.fromJson(json['request'] as Map<String, dynamic>),
      targetPath: json['targetPath'] as String? ?? "",
      template: json['template'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StacDynamicViewToJson(_StacDynamicView instance) =>
    <String, dynamic>{
      'request': instance.request,
      'targetPath': instance.targetPath,
      'template': instance.template,
    };
