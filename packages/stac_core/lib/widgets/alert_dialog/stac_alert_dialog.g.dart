// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_alert_dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacAlertDialog _$StacAlertDialogFromJson(Map<String, dynamic> json) =>
    StacAlertDialog(
      icon: json['icon'] == null
          ? null
          : StacWidget.fromJson(json['icon'] as Map<String, dynamic>),
      iconPadding: json['iconPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['iconPadding']),
      iconColor: json['iconColor'] as String?,
      title: json['title'] == null
          ? null
          : StacWidget.fromJson(json['title'] as Map<String, dynamic>),
      titlePadding: json['titlePadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['titlePadding']),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['titleTextStyle']),
      content: json['content'] == null
          ? null
          : StacWidget.fromJson(json['content'] as Map<String, dynamic>),
      contentPadding: json['contentPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['contentPadding']),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['contentTextStyle']),
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['actionsPadding']),
      actionsAlignment: $enumDecodeNullable(
        _$StacMainAxisAlignmentEnumMap,
        json['actionsAlignment'],
      ),
      actionsOverflowAlignment: $enumDecodeNullable(
        _$StacOverflowBarAlignmentEnumMap,
        json['actionsOverflowAlignment'],
      ),
      actionsOverflowDirection: $enumDecodeNullable(
        _$StacVerticalDirectionEnumMap,
        json['actionsOverflowDirection'],
      ),
      actionsOverflowButtonSpacing: const DoubleConverter().fromJson(
        json['actionsOverflowButtonSpacing'],
      ),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['buttonPadding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: const DoubleConverter().fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      insetPadding: json['insetPadding'] == null
          ? const StacEdgeInsets(left: 40, right: 40, top: 24, bottom: 24)
          : StacEdgeInsets.fromJson(json['insetPadding']),
      clipBehavior: $enumDecodeNullable(
        _$StacClipEnumMap,
        json['clipBehavior'],
      ),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      scrollable: json['scrollable'] as bool?,
    );

Map<String, dynamic> _$StacAlertDialogToJson(
  StacAlertDialog instance,
) => <String, dynamic>{
  'icon': instance.icon?.toJson(),
  'iconPadding': instance.iconPadding?.toJson(),
  'iconColor': instance.iconColor,
  'title': instance.title?.toJson(),
  'titlePadding': instance.titlePadding?.toJson(),
  'titleTextStyle': instance.titleTextStyle?.toJson(),
  'content': instance.content?.toJson(),
  'contentPadding': instance.contentPadding?.toJson(),
  'contentTextStyle': instance.contentTextStyle?.toJson(),
  'actions': instance.actions?.map((e) => e.toJson()).toList(),
  'actionsPadding': instance.actionsPadding?.toJson(),
  'actionsAlignment': _$StacMainAxisAlignmentEnumMap[instance.actionsAlignment],
  'actionsOverflowAlignment':
      _$StacOverflowBarAlignmentEnumMap[instance.actionsOverflowAlignment],
  'actionsOverflowDirection':
      _$StacVerticalDirectionEnumMap[instance.actionsOverflowDirection],
  'actionsOverflowButtonSpacing': const DoubleConverter().toJson(
    instance.actionsOverflowButtonSpacing,
  ),
  'buttonPadding': instance.buttonPadding?.toJson(),
  'backgroundColor': instance.backgroundColor,
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'semanticLabel': instance.semanticLabel,
  'insetPadding': instance.insetPadding?.toJson(),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'shape': instance.shape?.toJson(),
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'scrollable': instance.scrollable,
  'type': instance.type,
};

const _$StacMainAxisAlignmentEnumMap = {
  StacMainAxisAlignment.start: 'start',
  StacMainAxisAlignment.end: 'end',
  StacMainAxisAlignment.center: 'center',
  StacMainAxisAlignment.spaceBetween: 'spaceBetween',
  StacMainAxisAlignment.spaceAround: 'spaceAround',
  StacMainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$StacOverflowBarAlignmentEnumMap = {
  StacOverflowBarAlignment.start: 'start',
  StacOverflowBarAlignment.end: 'end',
  StacOverflowBarAlignment.center: 'center',
};

const _$StacVerticalDirectionEnumMap = {
  StacVerticalDirection.up: 'up',
  StacVerticalDirection.down: 'down',
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$StacAlignmentEnumMap = {
  StacAlignment.topLeft: 'topLeft',
  StacAlignment.topCenter: 'topCenter',
  StacAlignment.topRight: 'topRight',
  StacAlignment.centerLeft: 'centerLeft',
  StacAlignment.center: 'center',
  StacAlignment.centerRight: 'centerRight',
  StacAlignment.bottomLeft: 'bottomLeft',
  StacAlignment.bottomCenter: 'bottomCenter',
  StacAlignment.bottomRight: 'bottomRight',
};
