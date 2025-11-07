// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dynamic_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDynamicView _$StacDynamicViewFromJson(Map<String, dynamic> json) =>
    StacDynamicView(
      request: StacNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      template: json['template'] == null
          ? null
          : StacWidget.fromJson(json['template'] as Map<String, dynamic>),
      targetPath: json['targetPath'] as String?,
      resultTarget: json['resultTarget'] as String?,
      emptyTemplate: json['emptyTemplate'] == null
          ? null
          : StacWidget.fromJson(json['emptyTemplate'] as Map<String, dynamic>),
      loaderWidget: json['loaderWidget'] == null
          ? null
          : StacWidget.fromJson(json['loaderWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacDynamicViewToJson(StacDynamicView instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'targetPath': instance.targetPath,
      'template': instance.template?.toJson(),
      'resultTarget': instance.resultTarget,
      'emptyTemplate': instance.emptyTemplate?.toJson(),
      'loaderWidget': instance.loaderWidget?.toJson(),
      'errorWidget': instance.errorWidget?.toJson(),
      'type': instance.type,
    };
