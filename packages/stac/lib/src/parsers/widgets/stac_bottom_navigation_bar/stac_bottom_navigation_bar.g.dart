// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_navigation_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBottomNavigationBar _$StacBottomNavigationBarFromJson(
        Map<String, dynamic> json) =>
    _StacBottomNavigationBar(
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              StacBottomNavigationBarItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      bottomNavigationBarType: $enumDecodeNullable(
          _$BottomNavigationBarTypeEnumMap, json['bottomNavigationBarType']),
      fixedColor: json['fixedColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      iconSize: json['iconSize'] == null
          ? const StacDouble(24)
          : StacDouble.fromJson(json['iconSize']),
      selectedItemColor: json['selectedItemColor'] as String?,
      unselectedItemColor: json['unselectedItemColor'] as String?,
      selectedFontSize: json['selectedFontSize'] == null
          ? const StacDouble(14.0)
          : StacDouble.fromJson(json['selectedFontSize']),
      unselectedFontSize: json['unselectedFontSize'] == null
          ? const StacDouble(12.0)
          : StacDouble.fromJson(json['unselectedFontSize']),
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
          _$BottomNavigationBarLandscapeLayoutEnumMap, json['landscapeLayout']),
    );

Map<String, dynamic> _$StacBottomNavigationBarToJson(
        _StacBottomNavigationBar instance) =>
    <String, dynamic>{
      'items': instance.items,
      'elevation': instance.elevation,
      'bottomNavigationBarType':
          _$BottomNavigationBarTypeEnumMap[instance.bottomNavigationBarType],
      'fixedColor': instance.fixedColor,
      'backgroundColor': instance.backgroundColor,
      'iconSize': instance.iconSize,
      'selectedItemColor': instance.selectedItemColor,
      'unselectedItemColor': instance.unselectedItemColor,
      'selectedFontSize': instance.selectedFontSize,
      'unselectedFontSize': instance.unselectedFontSize,
      'selectedLabelStyle': instance.selectedLabelStyle,
      'unselectedLabelStyle': instance.unselectedLabelStyle,
      'showSelectedLabels': instance.showSelectedLabels,
      'showUnselectedLabels': instance.showUnselectedLabels,
      'enableFeedback': instance.enableFeedback,
      'landscapeLayout':
          _$BottomNavigationBarLandscapeLayoutEnumMap[instance.landscapeLayout],
    };

const _$BottomNavigationBarTypeEnumMap = {
  BottomNavigationBarType.fixed: 'fixed',
  BottomNavigationBarType.shifting: 'shifting',
};

const _$BottomNavigationBarLandscapeLayoutEnumMap = {
  BottomNavigationBarLandscapeLayout.spread: 'spread',
  BottomNavigationBarLandscapeLayout.centered: 'centered',
  BottomNavigationBarLandscapeLayout.linear: 'linear',
};
