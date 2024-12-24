// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_network_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiNetworkRequestImpl _$$MiraiNetworkRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiNetworkRequestImpl(
      url: json['url'] as String,
      method:
          $enumDecodeNullable(_$MethodEnumMap, json['method']) ?? Method.get,
      queryParameters: json['queryParameters'] as Map<String, dynamic>?,
      headers: json['headers'] as Map<String, dynamic>?,
      contentType: json['contentType'] as String?,
      body: json['body'],
      results: (json['results'] as List<dynamic>?)
              ?.map(
                  (e) => MiraiNetworkResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MiraiNetworkRequestImplToJson(
        _$MiraiNetworkRequestImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'method': _$MethodEnumMap[instance.method]!,
      'queryParameters': instance.queryParameters,
      'headers': instance.headers,
      'contentType': instance.contentType,
      'body': instance.body,
      'results': instance.results,
    };

const _$MethodEnumMap = {
  Method.get: 'get',
  Method.post: 'post',
  Method.put: 'put',
  Method.delete: 'delete',
};

_$MiraiNetworkResultImpl _$$MiraiNetworkResultImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiNetworkResultImpl(
      statusCode: (json['statusCode'] as num).toInt(),
      action: json['action'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$MiraiNetworkResultImplToJson(
        _$MiraiNetworkResultImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'action': instance.action,
    };
