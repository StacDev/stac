// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBottomNavigationBar _$StacBottomNavigationBarFromJson(
  Map<String, dynamic> json,
) => StacBottomNavigationBar(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => StacBottomNavigationBarItem.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  barType: $enumDecodeNullable(
    _$StacBottomNavigationBarTypeEnumMap,
    json['barType'],
  ),
  fixedColor: json['fixedColor'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  iconSize: const DoubleConverter().fromJson(json['iconSize']),
  selectedItemColor: json['selectedItemColor'] as String?,
  unselectedItemColor: json['unselectedItemColor'] as String?,
  selectedFontSize: const DoubleConverter().fromJson(json['selectedFontSize']),
  unselectedFontSize: const DoubleConverter().fromJson(
    json['unselectedFontSize'],
  ),
  selectedLabelStyle: json['selectedLabelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['selectedLabelStyle']),
  unselectedLabelStyle: json['unselectedLabelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['unselectedLabelStyle']),
  showSelectedLabels: json['showSelectedLabels'] as bool?,
  showUnselectedLabels: json['showUnselectedLabels'] as bool?,
  enableFeedback: json['enableFeedback'] as bool?,
  landscapeLayout: $enumDecodeNullable(
    _$StacBottomNavigationBarLandscapeLayoutEnumMap,
    json['landscapeLayout'],
  ),
);

Map<String, dynamic> _$StacBottomNavigationBarToJson(
  StacBottomNavigationBar instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'barType': _$StacBottomNavigationBarTypeEnumMap[instance.barType],
  'fixedColor': instance.fixedColor,
  'backgroundColor': instance.backgroundColor,
  'iconSize': const DoubleConverter().toJson(instance.iconSize),
  'selectedItemColor': instance.selectedItemColor,
  'unselectedItemColor': instance.unselectedItemColor,
  'selectedFontSize': const DoubleConverter().toJson(instance.selectedFontSize),
  'unselectedFontSize': const DoubleConverter().toJson(
    instance.unselectedFontSize,
  ),
  'selectedLabelStyle': instance.selectedLabelStyle?.toJson(),
  'unselectedLabelStyle': instance.unselectedLabelStyle?.toJson(),
  'showSelectedLabels': instance.showSelectedLabels,
  'showUnselectedLabels': instance.showUnselectedLabels,
  'enableFeedback': instance.enableFeedback,
  'landscapeLayout':
      _$StacBottomNavigationBarLandscapeLayoutEnumMap[instance.landscapeLayout],
  'type': instance.type,
};

const _$StacBottomNavigationBarTypeEnumMap = {
  StacBottomNavigationBarType.fixed: 'fixed',
  StacBottomNavigationBarType.shifting: 'shifting',
};

const _$StacBottomNavigationBarLandscapeLayoutEnumMap = {
  StacBottomNavigationBarLandscapeLayout.spread: 'spread',
  StacBottomNavigationBarLandscapeLayout.centered: 'centered',
  StacBottomNavigationBarLandscapeLayout.linear: 'linear',
};
