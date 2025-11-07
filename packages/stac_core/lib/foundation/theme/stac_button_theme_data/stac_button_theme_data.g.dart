// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_button_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacButtonThemeData _$StacButtonThemeDataFromJson(Map<String, dynamic> json) =>
    StacButtonThemeData(
      textTheme: $enumDecodeNullable(
        _$StacButtonTextThemeEnumMap,
        json['textTheme'],
      ),
      minWidth: (json['minWidth'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      layoutBehavior: $enumDecodeNullable(
        _$StacButtonBarLayoutBehaviorEnumMap,
        json['layoutBehavior'],
      ),
      alignedDropdown: json['alignedDropdown'] as bool?,
      buttonColor: json['buttonColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      splashColor: json['splashColor'] as String?,
      colorScheme: json['colorScheme'] == null
          ? null
          : StacColorScheme.fromJson(
              json['colorScheme'] as Map<String, dynamic>,
            ),
      materialTapTargetSize: $enumDecodeNullable(
        _$StacMaterialTapTargetSizeEnumMap,
        json['materialTapTargetSize'],
      ),
    );

Map<String, dynamic> _$StacButtonThemeDataToJson(
  StacButtonThemeData instance,
) => <String, dynamic>{
  'textTheme': _$StacButtonTextThemeEnumMap[instance.textTheme],
  'minWidth': instance.minWidth,
  'height': instance.height,
  'padding': instance.padding?.toJson(),
  'shape': instance.shape?.toJson(),
  'layoutBehavior':
      _$StacButtonBarLayoutBehaviorEnumMap[instance.layoutBehavior],
  'alignedDropdown': instance.alignedDropdown,
  'buttonColor': instance.buttonColor,
  'disabledColor': instance.disabledColor,
  'focusColor': instance.focusColor,
  'hoverColor': instance.hoverColor,
  'highlightColor': instance.highlightColor,
  'splashColor': instance.splashColor,
  'colorScheme': instance.colorScheme?.toJson(),
  'materialTapTargetSize':
      _$StacMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
};

const _$StacButtonTextThemeEnumMap = {
  StacButtonTextTheme.normal: 'normal',
  StacButtonTextTheme.accent: 'accent',
  StacButtonTextTheme.primary: 'primary',
};

const _$StacButtonBarLayoutBehaviorEnumMap = {
  StacButtonBarLayoutBehavior.constrained: 'constrained',
  StacButtonBarLayoutBehavior.padded: 'padded',
};

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
