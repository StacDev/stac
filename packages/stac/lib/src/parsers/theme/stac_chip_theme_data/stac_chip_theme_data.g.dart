// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_chip_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacChipThemeData _$StacChipThemeDataFromJson(Map<String, dynamic> json) =>
    _StacChipThemeData(
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      deleteIconColor: json['deleteIconColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      selectedColor: json['selectedColor'] as String?,
      secondarySelectedColor: json['secondarySelectedColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      selectedShadowColor: json['selectedShadowColor'] as String?,
      showCheckmark: json['showCheckmark'] as bool?,
      checkmarkColor: json['checkmarkColor'] as String?,
      labelPadding: json['labelPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['labelPadding']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      labelStyle: json['labelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['labelStyle']),
      secondaryLabelStyle: json['secondaryLabelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['secondaryLabelStyle']),
      brightness: $enumDecodeNullable(_$BrightnessEnumMap, json['brightness']),
      elevation: (json['elevation'] as num?)?.toDouble(),
      pressElevation: (json['pressElevation'] as num?)?.toDouble(),
      iconTheme: json['iconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['iconTheme'] as Map<String, dynamic>),
      avatarBoxConstraints: json['avatarBoxConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['avatarBoxConstraints'] as Map<String, dynamic>),
      deleteIconBoxConstraints: json['deleteIconBoxConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['deleteIconBoxConstraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacChipThemeDataToJson(_StacChipThemeData instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'deleteIconColor': instance.deleteIconColor,
      'disabledColor': instance.disabledColor,
      'selectedColor': instance.selectedColor,
      'secondarySelectedColor': instance.secondarySelectedColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'selectedShadowColor': instance.selectedShadowColor,
      'showCheckmark': instance.showCheckmark,
      'checkmarkColor': instance.checkmarkColor,
      'labelPadding': instance.labelPadding,
      'padding': instance.padding,
      'side': instance.side,
      'shape': instance.shape,
      'labelStyle': instance.labelStyle,
      'secondaryLabelStyle': instance.secondaryLabelStyle,
      'brightness': _$BrightnessEnumMap[instance.brightness],
      'elevation': instance.elevation,
      'pressElevation': instance.pressElevation,
      'iconTheme': instance.iconTheme,
      'avatarBoxConstraints': instance.avatarBoxConstraints,
      'deleteIconBoxConstraints': instance.deleteIconBoxConstraints,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
