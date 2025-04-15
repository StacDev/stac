// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_list_tile_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacListTileThemeData _$StacListTileThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacListTileThemeData(
      dense: json['dense'] as bool?,
      shape: json['shape'] == null
          ? null
          : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
      style: $enumDecodeNullable(_$ListTileStyleEnumMap, json['style']),
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
              json['visualDensity'] as Map<String, dynamic>),
      titleAlignment: $enumDecodeNullable(
          _$ListTileTitleAlignmentEnumMap, json['titleAlignment']),
      shadows: (json['shadows'] as List<dynamic>?)
          ?.map((e) => StacShadow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StacListTileThemeDataToJson(
        _StacListTileThemeData instance) =>
    <String, dynamic>{
      'dense': instance.dense,
      'shape': instance.shape,
      'style': _$ListTileStyleEnumMap[instance.style],
      'selectedColor': instance.selectedColor,
      'iconColor': instance.iconColor,
      'textColor': instance.textColor,
      'titleTextStyle': instance.titleTextStyle,
      'subtitleTextStyle': instance.subtitleTextStyle,
      'leadingAndTrailingTextStyle': instance.leadingAndTrailingTextStyle,
      'contentPadding': instance.contentPadding,
      'tileColor': instance.tileColor,
      'selectedTileColor': instance.selectedTileColor,
      'horizontalTitleGap': instance.horizontalTitleGap,
      'minVerticalPadding': instance.minVerticalPadding,
      'minLeadingWidth': instance.minLeadingWidth,
      'enableFeedback': instance.enableFeedback,
      'visualDensity': instance.visualDensity,
      'titleAlignment':
          _$ListTileTitleAlignmentEnumMap[instance.titleAlignment],
      'shadows': instance.shadows,
    };

const _$ListTileStyleEnumMap = {
  ListTileStyle.list: 'list',
  ListTileStyle.drawer: 'drawer',
};

const _$ListTileTitleAlignmentEnumMap = {
  ListTileTitleAlignment.threeLine: 'threeLine',
  ListTileTitleAlignment.titleHeight: 'titleHeight',
  ListTileTitleAlignment.top: 'top',
  ListTileTitleAlignment.center: 'center',
  ListTileTitleAlignment.bottom: 'bottom',
};
