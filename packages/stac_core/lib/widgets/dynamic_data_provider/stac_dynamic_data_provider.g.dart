// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dynamic_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDynamicDataProvider _$StacDynamicDataProviderFromJson(
  Map<String, dynamic> json,
) => StacDynamicDataProvider(
  id: json['id'] as String,
  request: StacNetworkRequest.fromJson(json['request'] as Map<String, dynamic>),
  child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
  targetPath: json['targetPath'] as String?,
  loaderWidget: json['loaderWidget'] == null
      ? null
      : StacWidget.fromJson(json['loaderWidget'] as Map<String, dynamic>),
  errorWidget: json['errorWidget'] == null
      ? null
      : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StacDynamicDataProviderToJson(
  StacDynamicDataProvider instance,
) => <String, dynamic>{
  'id': instance.id,
  'request': instance.request.toJson(),
  'targetPath': instance.targetPath,
  'child': instance.child.toJson(),
  'loaderWidget': instance.loaderWidget?.toJson(),
  'errorWidget': instance.errorWidget?.toJson(),
  'type': instance.type,
};
