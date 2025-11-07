// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dialog_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDialogThemeData _$StacDialogThemeDataFromJson(Map<String, dynamic> json) =>
    StacDialogThemeData(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: json['shape'] == null
          ? null
          : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : StacAlignmentGeometry.fromJson(
              json['alignment'] as Map<String, dynamic>,
            ),
      iconColor: json['iconColor'] as String?,
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['contentTextStyle']),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['actionsPadding']),
      barrierColor: json['barrierColor'] as String?,
      insetPadding: json['insetPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['insetPadding']),
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StacDialogThemeDataToJson(
  StacDialogThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'elevation': instance.elevation,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'shape': instance.shape?.toJson(),
  'alignment': instance.alignment?.toJson(),
  'iconColor': instance.iconColor,
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actionsPadding': instance.actionsPadding?.toJson(),
  'barrierColor': instance.barrierColor,
  'insetPadding': instance.insetPadding?.toJson(),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'constraints': instance.constraints?.toJson(),
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
