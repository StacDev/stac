// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTabBarThemeData _$StacTabBarThemeDataFromJson(Map<String, dynamic> json) =>
    _StacTabBarThemeData(
      indicator: json['indicator'] == null
          ? null
          : StacBoxDecoration.fromJson(
              json['indicator'] as Map<String, dynamic>),
      indicatorColor: json['indicatorColor'] as String?,
      indicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap, json['indicatorSize']),
      dividerColor: json['dividerColor'] as String?,
      labelColor: json['labelColor'] as String?,
      labelPadding: json['labelPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['labelPadding']),
      labelStyle: json['labelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['labelStyle']),
      unselectedLabelColor: json['unselectedLabelColor'] as String?,
      unselectedLabelStyle: json['unselectedLabelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['unselectedLabelStyle']),
      overlayColor: json['overlayColor'] as String?,
    );

Map<String, dynamic> _$StacTabBarThemeDataToJson(
        _StacTabBarThemeData instance) =>
    <String, dynamic>{
      'indicator': instance.indicator,
      'indicatorColor': instance.indicatorColor,
      'indicatorSize': _$TabBarIndicatorSizeEnumMap[instance.indicatorSize],
      'dividerColor': instance.dividerColor,
      'labelColor': instance.labelColor,
      'labelPadding': instance.labelPadding,
      'labelStyle': instance.labelStyle,
      'unselectedLabelColor': instance.unselectedLabelColor,
      'unselectedLabelStyle': instance.unselectedLabelStyle,
      'overlayColor': instance.overlayColor,
    };

const _$TabBarIndicatorSizeEnumMap = {
  TabBarIndicatorSize.tab: 'tab',
  TabBarIndicatorSize.label: 'label',
};
