// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_button_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacButtonThemeData _$StacButtonThemeDataFromJson(Map<String, dynamic> json) =>
    _StacButtonThemeData(
      textTheme:
          $enumDecodeNullable(_$ButtonTextThemeEnumMap, json['textTheme']) ??
              ButtonTextTheme.normal,
      minWidth: (json['minWidth'] as num?)?.toDouble() ?? 88.0,
      height: (json['height'] as num?)?.toDouble() ?? 36.0,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      layoutBehavior: $enumDecodeNullable(
              _$ButtonBarLayoutBehaviorEnumMap, json['layoutBehavior']) ??
          ButtonBarLayoutBehavior.padded,
      alignedDropdown: json['alignedDropdown'] as bool? ?? false,
      buttonColor: json['buttonColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      colorScheme: json['colorScheme'] == null
          ? null
          : StacColorScheme.fromJson(
              json['colorScheme'] as Map<String, dynamic>),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
    );

Map<String, dynamic> _$StacButtonThemeDataToJson(
        _StacButtonThemeData instance) =>
    <String, dynamic>{
      'textTheme': _$ButtonTextThemeEnumMap[instance.textTheme]!,
      'minWidth': instance.minWidth,
      'height': instance.height,
      'padding': instance.padding,
      'shape': instance.shape,
      'layoutBehavior':
          _$ButtonBarLayoutBehaviorEnumMap[instance.layoutBehavior]!,
      'alignedDropdown': instance.alignedDropdown,
      'buttonColor': instance.buttonColor,
      'disabledColor': instance.disabledColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'highlightColor': instance.highlightColor,
      'splashColor': instance.splashColor,
      'colorScheme': instance.colorScheme,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
    };

const _$ButtonTextThemeEnumMap = {
  ButtonTextTheme.normal: 'normal',
  ButtonTextTheme.accent: 'accent',
  ButtonTextTheme.primary: 'primary',
};

const _$ButtonBarLayoutBehaviorEnumMap = {
  ButtonBarLayoutBehavior.constrained: 'constrained',
  ButtonBarLayoutBehavior.padded: 'padded',
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
