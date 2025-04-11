// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_navigate_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacNavigateAction _$StacNavigateActionFromJson(Map<String, dynamic> json) =>
    _StacNavigateAction(
      request: json['request'] == null
          ? null
          : StacNetworkRequest.fromJson(
              json['request'] as Map<String, dynamic>),
      widgetJson: json['widgetJson'] as Map<String, dynamic>?,
      assetPath: json['assetPath'] as String?,
      routeName: json['routeName'] as String?,
      navigationStyle: $enumDecodeNullable(
          _$NavigationStyleEnumMap, json['navigationStyle']),
      result: json['result'] as Map<String, dynamic>?,
      arguments: json['arguments'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StacNavigateActionToJson(_StacNavigateAction instance) =>
    <String, dynamic>{
      'request': instance.request,
      'widgetJson': instance.widgetJson,
      'assetPath': instance.assetPath,
      'routeName': instance.routeName,
      'navigationStyle': _$NavigationStyleEnumMap[instance.navigationStyle],
      'result': instance.result,
      'arguments': instance.arguments,
    };

const _$NavigationStyleEnumMap = {
  NavigationStyle.push: 'push',
  NavigationStyle.pop: 'pop',
  NavigationStyle.pushReplacement: 'pushReplacement',
  NavigationStyle.pushAndRemoveAll: 'pushAndRemoveAll',
  NavigationStyle.popAll: 'popAll',
  NavigationStyle.pushNamed: 'pushNamed',
  NavigationStyle.pushNamedAndRemoveAll: 'pushNamedAndRemoveAll',
  NavigationStyle.pushReplacementNamed: 'pushReplacementNamed',
};
