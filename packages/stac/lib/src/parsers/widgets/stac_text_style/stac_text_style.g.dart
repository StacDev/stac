// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacTextStyle _$StacTextStyleFromJson(Map<String, dynamic> json) =>
    _StacTextStyle(
      inherit: json['inherit'] as bool? ?? true,
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      styleFromTheme: json['styleFromTheme'] as String?,
      fontSize: json['fontSize'] == null
          ? null
          : StacDouble.fromJson(json['fontSize']),
      fontWeight:
          $enumDecodeNullable(_$StacFontWeightEnumMap, json['fontWeight']),
      fontStyle: $enumDecodeNullable(_$FontStyleEnumMap, json['fontStyle']),
      fontFamily: json['fontFamily'] as String?,
      fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      letterSpacing: json['letterSpacing'] == null
          ? null
          : StacDouble.fromJson(json['letterSpacing']),
      wordSpacing: json['wordSpacing'] == null
          ? null
          : StacDouble.fromJson(json['wordSpacing']),
      textBaseline:
          $enumDecodeNullable(_$TextBaselineEnumMap, json['textBaseline']),
      height:
          json['height'] == null ? null : StacDouble.fromJson(json['height']),
    );

Map<String, dynamic> _$StacTextStyleToJson(_StacTextStyle instance) =>
    <String, dynamic>{
      'inherit': instance.inherit,
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'styleFromTheme': instance.styleFromTheme,
      'fontSize': instance.fontSize,
      'fontWeight': _$StacFontWeightEnumMap[instance.fontWeight],
      'fontStyle': _$FontStyleEnumMap[instance.fontStyle],
      'fontFamily': instance.fontFamily,
      'fontFamilyFallback': instance.fontFamilyFallback,
      'letterSpacing': instance.letterSpacing,
      'wordSpacing': instance.wordSpacing,
      'textBaseline': _$TextBaselineEnumMap[instance.textBaseline],
      'height': instance.height,
    };

const _$StacFontWeightEnumMap = {
  StacFontWeight.w100: 'w100',
  StacFontWeight.w200: 'w200',
  StacFontWeight.w300: 'w300',
  StacFontWeight.w400: 'w400',
  StacFontWeight.w500: 'w500',
  StacFontWeight.w600: 'w600',
  StacFontWeight.w700: 'w700',
  StacFontWeight.w800: 'w800',
  StacFontWeight.w900: 'w900',
};

const _$FontStyleEnumMap = {
  FontStyle.normal: 'normal',
  FontStyle.italic: 'italic',
};

const _$TextBaselineEnumMap = {
  TextBaseline.alphabetic: 'alphabetic',
  TextBaseline.ideographic: 'ideographic',
};
