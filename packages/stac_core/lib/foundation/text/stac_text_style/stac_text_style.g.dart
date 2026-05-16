// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCustomTextStyle _$StacCustomTextStyleFromJson(
  Map<String, dynamic> json,
) => StacCustomTextStyle(
  inherit: json['inherit'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  fontWeight: $enumDecodeNullable(_$StacFontWeightEnumMap, json['fontWeight']),
  fontStyle: $enumDecodeNullable(_$StacFontStyleEnumMap, json['fontStyle']),
  letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
  wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
  textBaseline: $enumDecodeNullable(
    _$StacTextBaselineEnumMap,
    json['textBaseline'],
  ),
  height: (json['height'] as num?)?.toDouble(),
  leadingDistribution: $enumDecodeNullable(
    _$StacTextLeadingDistributionEnumMap,
    json['leadingDistribution'],
  ),
  decoration: $enumDecodeNullable(
    _$StacTextDecorationLineEnumMap,
    json['decoration'],
  ),
  decorationColor: json['decorationColor'] as String?,
  decorationStyle: $enumDecodeNullable(
    _$StacTextDecorationStyleEnumMap,
    json['decorationStyle'],
  ),
  decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
  debugLabel: json['debugLabel'] as String?,
  fontFamily: json['fontFamily'] as String?,
  fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  package: json['package'] as String?,
  overflow: $enumDecodeNullable(_$StacTextOverflowEnumMap, json['overflow']),
);

Map<String, dynamic> _$StacCustomTextStyleToJson(
  StacCustomTextStyle instance,
) => <String, dynamic>{
  'type': _$StacTextStyleTypeEnumMap[instance.type]!,
  'inherit': instance.inherit,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'fontSize': instance.fontSize,
  'fontWeight': _$StacFontWeightEnumMap[instance.fontWeight],
  'fontStyle': _$StacFontStyleEnumMap[instance.fontStyle],
  'letterSpacing': instance.letterSpacing,
  'wordSpacing': instance.wordSpacing,
  'textBaseline': _$StacTextBaselineEnumMap[instance.textBaseline],
  'height': instance.height,
  'leadingDistribution':
      _$StacTextLeadingDistributionEnumMap[instance.leadingDistribution],
  'decoration': _$StacTextDecorationLineEnumMap[instance.decoration],
  'decorationColor': instance.decorationColor,
  'decorationStyle': _$StacTextDecorationStyleEnumMap[instance.decorationStyle],
  'decorationThickness': instance.decorationThickness,
  'debugLabel': instance.debugLabel,
  'fontFamily': instance.fontFamily,
  'fontFamilyFallback': instance.fontFamilyFallback,
  'package': instance.package,
  'overflow': _$StacTextOverflowEnumMap[instance.overflow],
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
  StacFontWeight.normal: 'normal',
  StacFontWeight.bold: 'bold',
};

const _$StacFontStyleEnumMap = {
  StacFontStyle.normal: 'normal',
  StacFontStyle.italic: 'italic',
};

const _$StacTextBaselineEnumMap = {
  StacTextBaseline.alphabetic: 'alphabetic',
  StacTextBaseline.ideographic: 'ideographic',
};

const _$StacTextLeadingDistributionEnumMap = {
  StacTextLeadingDistribution.proportional: 'proportional',
  StacTextLeadingDistribution.even: 'even',
};

const _$StacTextDecorationLineEnumMap = {
  StacTextDecorationLine.none: 'none',
  StacTextDecorationLine.underline: 'underline',
  StacTextDecorationLine.overline: 'overline',
  StacTextDecorationLine.lineThrough: 'lineThrough',
};

const _$StacTextDecorationStyleEnumMap = {
  StacTextDecorationStyle.solid: 'solid',
  StacTextDecorationStyle.double: 'double',
  StacTextDecorationStyle.dotted: 'dotted',
  StacTextDecorationStyle.dashed: 'dashed',
  StacTextDecorationStyle.wavy: 'wavy',
};

const _$StacTextOverflowEnumMap = {
  StacTextOverflow.clip: 'clip',
  StacTextOverflow.fade: 'fade',
  StacTextOverflow.ellipsis: 'ellipsis',
  StacTextOverflow.visible: 'visible',
};

const _$StacTextStyleTypeEnumMap = {
  StacTextStyleType.custom: 'custom',
  StacTextStyleType.theme: 'theme',
};

StacThemeTextStyle _$StacThemeTextStyleFromJson(
  Map<String, dynamic> json,
) => StacThemeTextStyle(
  textTheme: $enumDecode(_$StacMaterialTextStyleEnumMap, json['textTheme']),
  inherit: json['inherit'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  fontSize: (json['fontSize'] as num?)?.toDouble(),
  fontWeight: $enumDecodeNullable(_$StacFontWeightEnumMap, json['fontWeight']),
  fontStyle: $enumDecodeNullable(_$StacFontStyleEnumMap, json['fontStyle']),
  letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
  wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
  textBaseline: $enumDecodeNullable(
    _$StacTextBaselineEnumMap,
    json['textBaseline'],
  ),
  height: (json['height'] as num?)?.toDouble(),
  leadingDistribution: $enumDecodeNullable(
    _$StacTextLeadingDistributionEnumMap,
    json['leadingDistribution'],
  ),
  decorationColor: json['decorationColor'] as String?,
  decorationStyle: $enumDecodeNullable(
    _$StacTextDecorationStyleEnumMap,
    json['decorationStyle'],
  ),
  decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
  debugLabel: json['debugLabel'] as String?,
  fontFamily: json['fontFamily'] as String?,
  fontFamilyFallback: (json['fontFamilyFallback'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  package: json['package'] as String?,
  overflow: $enumDecodeNullable(_$StacTextOverflowEnumMap, json['overflow']),
);

Map<String, dynamic> _$StacThemeTextStyleToJson(
  StacThemeTextStyle instance,
) => <String, dynamic>{
  'type': _$StacTextStyleTypeEnumMap[instance.type]!,
  'textTheme': _$StacMaterialTextStyleEnumMap[instance.textTheme]!,
  'inherit': instance.inherit,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'fontSize': instance.fontSize,
  'fontWeight': _$StacFontWeightEnumMap[instance.fontWeight],
  'fontStyle': _$StacFontStyleEnumMap[instance.fontStyle],
  'letterSpacing': instance.letterSpacing,
  'wordSpacing': instance.wordSpacing,
  'textBaseline': _$StacTextBaselineEnumMap[instance.textBaseline],
  'height': instance.height,
  'leadingDistribution':
      _$StacTextLeadingDistributionEnumMap[instance.leadingDistribution],
  'decorationColor': instance.decorationColor,
  'decorationStyle': _$StacTextDecorationStyleEnumMap[instance.decorationStyle],
  'decorationThickness': instance.decorationThickness,
  'debugLabel': instance.debugLabel,
  'fontFamily': instance.fontFamily,
  'fontFamilyFallback': instance.fontFamilyFallback,
  'package': instance.package,
  'overflow': _$StacTextOverflowEnumMap[instance.overflow],
};

const _$StacMaterialTextStyleEnumMap = {
  StacMaterialTextStyle.displayLarge: 'displayLarge',
  StacMaterialTextStyle.displayMedium: 'displayMedium',
  StacMaterialTextStyle.displaySmall: 'displaySmall',
  StacMaterialTextStyle.headlineLarge: 'headlineLarge',
  StacMaterialTextStyle.headlineMedium: 'headlineMedium',
  StacMaterialTextStyle.headlineSmall: 'headlineSmall',
  StacMaterialTextStyle.titleLarge: 'titleLarge',
  StacMaterialTextStyle.titleMedium: 'titleMedium',
  StacMaterialTextStyle.titleSmall: 'titleSmall',
  StacMaterialTextStyle.bodyLarge: 'bodyLarge',
  StacMaterialTextStyle.bodyMedium: 'bodyMedium',
  StacMaterialTextStyle.bodySmall: 'bodySmall',
  StacMaterialTextStyle.labelLarge: 'labelLarge',
  StacMaterialTextStyle.labelMedium: 'labelMedium',
  StacMaterialTextStyle.labelSmall: 'labelSmall',
};
