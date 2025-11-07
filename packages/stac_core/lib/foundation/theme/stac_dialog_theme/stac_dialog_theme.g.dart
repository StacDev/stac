// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dialog_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDialogTheme _$StacDialogThemeFromJson(Map<String, dynamic> json) =>
    StacDialogTheme(
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
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['contentTextStyle']),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['actionsPadding']),
      iconColor: json['iconColor'] as String?,
    );

Map<String, dynamic> _$StacDialogThemeToJson(StacDialogTheme instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape?.toJson(),
      'alignment': instance.alignment?.toJson(),
      'titleTextStyle': instance.titleTextStyle?.toJson(),
      'contentTextStyle': instance.contentTextStyle?.toJson(),
      'actionsPadding': instance.actionsPadding?.toJson(),
      'iconColor': instance.iconColor,
    };
