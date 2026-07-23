// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_network_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNetworkWidget _$StacNetworkWidgetFromJson(Map<String, dynamic> json) =>
    StacNetworkWidget(
      request: StacNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
      loadingWidget: json['loadingWidget'] == null
          ? null
          : StacWidget.fromJson(json['loadingWidget'] as Map<String, dynamic>),
      errorWidget: json['errorWidget'] == null
          ? null
          : StacWidget.fromJson(json['errorWidget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacNetworkWidgetToJson(StacNetworkWidget instance) =>
    <String, dynamic>{
      'request': instance.request.toJson(),
      'loadingWidget': instance.loadingWidget?.toJson(),
      'errorWidget': instance.errorWidget?.toJson(),
      'type': instance.type,
    };
