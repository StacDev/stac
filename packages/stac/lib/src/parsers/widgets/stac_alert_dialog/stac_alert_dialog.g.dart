// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_alert_dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacAlertDialog _$StacAlertDialogFromJson(Map<String, dynamic> json) =>
    _StacAlertDialog(
      icon: json['icon'] as Map<String, dynamic>?,
      iconPadding: json['iconPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['iconPadding']),
      iconColor: json['iconColor'] as String?,
      title: json['title'] as Map<String, dynamic>?,
      titlePadding: json['titlePadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['titlePadding']),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      content: json['content'] as Map<String, dynamic>?,
      contentPadding: json['contentPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['contentPadding']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['contentTextStyle']),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['actionsPadding']),
      actionsAlignment: $enumDecodeNullable(
          _$MainAxisAlignmentEnumMap, json['actionsAlignment']),
      actionsOverflowAlignment: $enumDecodeNullable(
          _$OverflowBarAlignmentEnumMap, json['actionsOverflowAlignment']),
      actionsOverflowDirection: $enumDecodeNullable(
          _$VerticalDirectionEnumMap, json['actionsOverflowDirection']),
      actionsOverflowButtonSpacing: json['actionsOverflowButtonSpacing'] == null
          ? null
          : StacDouble.fromJson(json['actionsOverflowButtonSpacing']),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['buttonPadding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      insetPadding: json['insetPadding'] == null
          ? const StacEdgeInsets(
              left: StacDouble(40),
              right: StacDouble(40),
              top: StacDouble(24),
              bottom: StacDouble(24))
          : StacEdgeInsets.fromJson(json['insetPadding']),
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : StacAlignmentGeometry.fromJson(
              json['alignment'] as Map<String, dynamic>),
      scrollable: json['scrollable'] as bool? ?? false,
    );

Map<String, dynamic> _$StacAlertDialogToJson(_StacAlertDialog instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'iconPadding': instance.iconPadding,
      'iconColor': instance.iconColor,
      'title': instance.title,
      'titlePadding': instance.titlePadding,
      'titleTextStyle': instance.titleTextStyle,
      'content': instance.content,
      'contentPadding': instance.contentPadding,
      'contentTextStyle': instance.contentTextStyle,
      'actions': instance.actions,
      'actionsPadding': instance.actionsPadding,
      'actionsAlignment': _$MainAxisAlignmentEnumMap[instance.actionsAlignment],
      'actionsOverflowAlignment':
          _$OverflowBarAlignmentEnumMap[instance.actionsOverflowAlignment],
      'actionsOverflowDirection':
          _$VerticalDirectionEnumMap[instance.actionsOverflowDirection],
      'actionsOverflowButtonSpacing': instance.actionsOverflowButtonSpacing,
      'buttonPadding': instance.buttonPadding,
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'semanticLabel': instance.semanticLabel,
      'insetPadding': instance.insetPadding,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'shape': instance.shape,
      'alignment': instance.alignment,
      'scrollable': instance.scrollable,
    };

const _$MainAxisAlignmentEnumMap = {
  MainAxisAlignment.start: 'start',
  MainAxisAlignment.end: 'end',
  MainAxisAlignment.center: 'center',
  MainAxisAlignment.spaceBetween: 'spaceBetween',
  MainAxisAlignment.spaceAround: 'spaceAround',
  MainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$OverflowBarAlignmentEnumMap = {
  OverflowBarAlignment.start: 'start',
  OverflowBarAlignment.end: 'end',
  OverflowBarAlignment.center: 'center',
};

const _$VerticalDirectionEnumMap = {
  VerticalDirection.up: 'up',
  VerticalDirection.down: 'down',
};

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
