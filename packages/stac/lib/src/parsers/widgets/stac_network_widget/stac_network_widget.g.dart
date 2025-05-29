// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_network_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacNetworkWidget _$StacNetworkWidgetFromJson(Map<String, dynamic> json) =>
    _StacNetworkWidget(
      request:
          StacNetworkRequest.fromJson(json['request'] as Map<String, dynamic>),
      loading: json['loading'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacNetworkWidgetToJson(_StacNetworkWidget instance) =>
    <String, dynamic>{
      'request': instance.request,
      'loading': instance.loading,
    };
