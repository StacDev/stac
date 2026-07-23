// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_navigation_bar_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacNavigationBarThemeData _$StacNavigationBarThemeDataFromJson(
  Map<String, dynamic> json,
) => StacNavigationBarThemeData(
  height: (json['height'] as num?)?.toDouble(),
  backgroundColor: json['backgroundColor'] as String?,
  elevation: (json['elevation'] as num?)?.toDouble(),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  indicatorColor: json['indicatorColor'] as String?,
  indicatorShape: json['indicatorShape'] == null
      ? null
      : StacBorder.fromJson(json['indicatorShape'] as Map<String, dynamic>),
  labelTextStyle: json['labelTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['labelTextStyle']),
  iconTheme: json['iconTheme'] == null
      ? null
      : StacIconThemeData.fromJson(json['iconTheme'] as Map<String, dynamic>),
  labelBehavior: $enumDecodeNullable(
    _$StacNavigationDestinationLabelBehaviorEnumMap,
    json['labelBehavior'],
  ),
);

Map<String, dynamic> _$StacNavigationBarThemeDataToJson(
  StacNavigationBarThemeData instance,
) => <String, dynamic>{
  'height': instance.height,
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'indicatorColor': instance.indicatorColor,
  'indicatorShape': instance.indicatorShape?.toJson(),
  'labelTextStyle': instance.labelTextStyle?.toJson(),
  'iconTheme': instance.iconTheme?.toJson(),
  'labelBehavior':
      _$StacNavigationDestinationLabelBehaviorEnumMap[instance.labelBehavior],
};

const _$StacNavigationDestinationLabelBehaviorEnumMap = {
  StacNavigationDestinationLabelBehavior.alwaysShow: 'alwaysShow',
  StacNavigationDestinationLabelBehavior.alwaysHide: 'alwaysHide',
  StacNavigationDestinationLabelBehavior.onlyShowSelected: 'onlyShowSelected',
};
