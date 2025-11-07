// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_list_tile_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacListTileThemeData _$StacListTileThemeDataFromJson(
  Map<String, dynamic> json,
) => StacListTileThemeData(
  dense: json['dense'] as bool?,
  shape: json['shape'] == null
      ? null
      : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
  style: $enumDecodeNullable(_$StacListTileStyleEnumMap, json['style']),
  selectedColor: json['selectedColor'] as String?,
  iconColor: json['iconColor'] as String?,
  textColor: json['textColor'] as String?,
  titleTextStyle: json['titleTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['titleTextStyle']),
  subtitleTextStyle: json['subtitleTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['subtitleTextStyle']),
  leadingAndTrailingTextStyle: json['leadingAndTrailingTextStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['leadingAndTrailingTextStyle']),
  contentPadding: json['contentPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['contentPadding']),
  tileColor: json['tileColor'] as String?,
  selectedTileColor: json['selectedTileColor'] as String?,
  horizontalTitleGap: (json['horizontalTitleGap'] as num?)?.toDouble(),
  minVerticalPadding: (json['minVerticalPadding'] as num?)?.toDouble(),
  minLeadingWidth: (json['minLeadingWidth'] as num?)?.toDouble(),
  enableFeedback: json['enableFeedback'] as bool?,
  visualDensity: json['visualDensity'] == null
      ? null
      : StacVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  titleAlignment: $enumDecodeNullable(
    _$StacListTileTitleAlignmentEnumMap,
    json['titleAlignment'],
  ),
  shadows: (json['shadows'] as List<dynamic>?)
      ?.map((e) => StacShadow.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacListTileThemeDataToJson(
  StacListTileThemeData instance,
) => <String, dynamic>{
  'dense': instance.dense,
  'shape': instance.shape?.toJson(),
  'style': _$StacListTileStyleEnumMap[instance.style],
  'selectedColor': instance.selectedColor,
  'iconColor': instance.iconColor,
  'textColor': instance.textColor,
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'subtitleTextStyle': instance.subtitleTextStyle?.toJson(),
  'leadingAndTrailingTextStyle': instance.leadingAndTrailingTextStyle?.toJson(),
  'contentPadding': instance.contentPadding?.toJson(),
  'tileColor': instance.tileColor,
  'selectedTileColor': instance.selectedTileColor,
  'horizontalTitleGap': instance.horizontalTitleGap,
  'minVerticalPadding': instance.minVerticalPadding,
  'minLeadingWidth': instance.minLeadingWidth,
  'enableFeedback': instance.enableFeedback,
  'visualDensity': instance.visualDensity?.toJson(),
  'titleAlignment':
      _$StacListTileTitleAlignmentEnumMap[instance.titleAlignment],
  'shadows': instance.shadows?.map((e) => e.toJson()).toList(),
};

const _$StacListTileStyleEnumMap = {
  StacListTileStyle.list: 'list',
  StacListTileStyle.drawer: 'drawer',
};

const _$StacListTileTitleAlignmentEnumMap = {
  StacListTileTitleAlignment.titleHeight: 'titleHeight',
  StacListTileTitleAlignment.threeLine: 'threeLine',
  StacListTileTitleAlignment.bottom: 'bottom',
  StacListTileTitleAlignment.center: 'center',
};
