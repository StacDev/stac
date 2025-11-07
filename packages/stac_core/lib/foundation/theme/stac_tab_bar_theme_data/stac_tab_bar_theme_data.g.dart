// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_tab_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacTabBarThemeData _$StacTabBarThemeDataFromJson(Map<String, dynamic> json) =>
    StacTabBarThemeData(
      indicator: json['indicator'] == null
          ? null
          : StacBoxDecoration.fromJson(
              json['indicator'] as Map<String, dynamic>,
            ),
      indicatorColor: json['indicatorColor'] as String?,
      indicatorSize: $enumDecodeNullable(
        _$StacTabBarIndicatorSizeEnumMap,
        json['indicatorSize'],
      ),
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
  StacTabBarThemeData instance,
) => <String, dynamic>{
  'indicator': instance.indicator?.toJson(),
  'indicatorColor': instance.indicatorColor,
  'indicatorSize': _$StacTabBarIndicatorSizeEnumMap[instance.indicatorSize],
  'dividerColor': instance.dividerColor,
  'labelColor': instance.labelColor,
  'labelPadding': instance.labelPadding?.toJson(),
  'labelStyle': instance.labelStyle?.toJson(),
  'unselectedLabelColor': instance.unselectedLabelColor,
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'overlayColor': instance.overlayColor,
};

const _$StacTabBarIndicatorSizeEnumMap = {
  StacTabBarIndicatorSize.tab: 'tab',
  StacTabBarIndicatorSize.label: 'label',
};
