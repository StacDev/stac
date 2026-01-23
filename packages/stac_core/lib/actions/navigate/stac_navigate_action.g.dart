// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_navigate_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNavigateAction _$StacNavigateActionFromJson(Map<String, dynamic> json) =>
    StacNavigateAction(
      path: json['path'] as String?,
      routeName: json['routeName'] as String?,
      stacRoute: json['stacRoute'] as String?,
      widgetJson: json['widgetJson'] as Map<String, dynamic>?,
      assetPath: json['assetPath'] as String?,
      request:
          json['request'] == null
              ? null
              : StacNetworkRequest.fromJson(
                json['request'] as Map<String, dynamic>,
              ),
      navigationStyle: $enumDecodeNullable(
        _$NavigationStyleEnumMap,
        json['navigationStyle'],
      ),
      pathParameters: (json['pathParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      queryParameters: (json['queryParameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      extra: json['extra'] as Map<String, dynamic>?,
      result: json['result'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacNavigateActionToJson(StacNavigateAction instance) =>
    <String, dynamic>{
      'path': instance.path,
      'routeName': instance.routeName,
      'pathParameters': instance.pathParameters,
      'queryParameters': instance.queryParameters,
      'stacRoute': instance.stacRoute,
      'widgetJson': instance.widgetJson,
      'assetPath': instance.assetPath,
      'request': instance.request?.toJson(),
      'navigationStyle': _$NavigationStyleEnumMap[instance.navigationStyle],
      'extra': instance.extra,
      'result': instance.result,
      'actionType': instance.actionType,
    };

const _$NavigationStyleEnumMap = {
  NavigationStyle.go: 'go',
  NavigationStyle.push: 'push',
  NavigationStyle.pushReplacement: 'pushReplacement',
  NavigationStyle.pop: 'pop',
  NavigationStyle.goNamed: 'goNamed',
  NavigationStyle.pushNamed: 'pushNamed',
  NavigationStyle.goStac: 'goStac',
  NavigationStyle.pushStac: 'pushStac',
  NavigationStyle.pushJson: 'pushJson',
  NavigationStyle.pushAsset: 'pushAsset',
  NavigationStyle.pushNetwork: 'pushNetwork',
};
