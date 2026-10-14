// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDataProvider _$StacDataProviderFromJson(Map<String, dynamic> json) =>
    StacDataProvider(
      id: json['id'] as String,
      request: StacNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      targetPath: json['targetPath'] as String?,
      child: StacWidget.fromJson(json['child'] as Map<String, dynamic>),
      loaderWidget: json['loaderWidget'] == null
          ? null
          : StacWidget.fromJson(json['loaderWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacDataProviderToJson(StacDataProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'request': instance.request.toJson(),
      'targetPath': instance.targetPath,
      'child': instance.child.toJson(),
      'loaderWidget': instance.loaderWidget?.toJson(),
      'errorWidget': instance.errorWidget?.toJson(),
      'type': instance.type,
    };
