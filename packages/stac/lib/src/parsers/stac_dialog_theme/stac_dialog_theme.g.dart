// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_dialog_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacDialogThemeImpl _$$StacDialogThemeImplFromJson(
        Map<String, dynamic> json) =>
    _$StacDialogThemeImpl(
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
              json['alignment'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$StacDialogThemeImplToJson(
        _$StacDialogThemeImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': instance.shape,
      'alignment': instance.alignment,
      'titleTextStyle': instance.titleTextStyle,
      'contentTextStyle': instance.contentTextStyle,
      'actionsPadding': instance.actionsPadding,
      'iconColor': instance.iconColor,
    };
