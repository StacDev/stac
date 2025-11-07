// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_button_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacButtonStyle _$StacButtonStyleFromJson(Map<String, dynamic> json) =>
    StacButtonStyle(
      foregroundColor: json['foregroundColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      disabledForegroundColor: json['disabledForegroundColor'] as String?,
      disabledBackgroundColor: json['disabledBackgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      iconColor: json['iconColor'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      iconAlignment: $enumDecodeNullable(
        _$StacIconAlignmentEnumMap,
        json['iconAlignment'],
      ),
      disabledIconColor: json['disabledIconColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      textStyle: json['textStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['textStyle']),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      minimumSize: json['minimumSize'] == null
          ? null
          : StacSize.fromJson(json['minimumSize'] as Map<String, dynamic>),
      fixedSize: json['fixedSize'] == null
          ? null
          : StacSize.fromJson(json['fixedSize'] as Map<String, dynamic>),
      maximumSize: json['maximumSize'] == null
          ? null
          : StacSize.fromJson(json['maximumSize'] as Map<String, dynamic>),
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
      enableFeedback: json['enableFeedback'] as bool?,
      alignment: $enumDecodeNullable(_$StacAlignmentEnumMap, json['alignment']),
      tapTargetSize: $enumDecodeNullable(
        _$StacMaterialTapTargetSizeEnumMap,
        json['tapTargetSize'],
      ),
      animationDuration: json['animationDuration'] == null
          ? null
          : StacDuration.fromJson(
              json['animationDuration'] as Map<String, dynamic>,
            ),
      enabledMouseCursor: $enumDecodeNullable(
        _$StacMouseCursorEnumMap,
        json['enabledMouseCursor'],
      ),
      disabledMouseCursor: $enumDecodeNullable(
        _$StacMouseCursorEnumMap,
        json['disabledMouseCursor'],
      ),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$StacButtonStyleToJson(
  StacButtonStyle instance,
) => <String, dynamic>{
  'foregroundColor': instance.foregroundColor,
  'backgroundColor': instance.backgroundColor,
  'disabledForegroundColor': instance.disabledForegroundColor,
  'disabledBackgroundColor': instance.disabledBackgroundColor,
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'iconColor': instance.iconColor,
  'iconSize': instance.iconSize,
  'iconAlignment': _$StacIconAlignmentEnumMap[instance.iconAlignment],
  'disabledIconColor': instance.disabledIconColor,
  'overlayColor': instance.overlayColor,
  'elevation': instance.elevation,
  'textStyle': instance.textStyle?.toJson(),
  'padding': instance.padding?.toJson(),
  'minimumSize': instance.minimumSize?.toJson(),
  'fixedSize': instance.fixedSize?.toJson(),
  'maximumSize': instance.maximumSize?.toJson(),
  'side': instance.side?.toJson(),
  'shape': instance.shape?.toJson(),
  'enableFeedback': instance.enableFeedback,
  'alignment': _$StacAlignmentEnumMap[instance.alignment],
  'tapTargetSize': _$StacMaterialTapTargetSizeEnumMap[instance.tapTargetSize],
  'animationDuration': instance.animationDuration?.toJson(),
  'enabledMouseCursor': _$StacMouseCursorEnumMap[instance.enabledMouseCursor],
  'disabledMouseCursor': _$StacMouseCursorEnumMap[instance.disabledMouseCursor],
  'visualDensity': instance.visualDensity?.toJson(),
};

const _$StacIconAlignmentEnumMap = {
  StacIconAlignment.start: 'start',
  StacIconAlignment.end: 'end',
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

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};

const _$StacMouseCursorEnumMap = {
  StacMouseCursor.none: 'none',
  StacMouseCursor.basic: 'basic',
  StacMouseCursor.click: 'click',
  StacMouseCursor.forbidden: 'forbidden',
  StacMouseCursor.wait: 'wait',
  StacMouseCursor.progress: 'progress',
  StacMouseCursor.contextMenu: 'contextMenu',
  StacMouseCursor.help: 'help',
  StacMouseCursor.text: 'text',
  StacMouseCursor.verticalText: 'verticalText',
  StacMouseCursor.cell: 'cell',
  StacMouseCursor.precise: 'precise',
  StacMouseCursor.move: 'move',
  StacMouseCursor.grab: 'grab',
  StacMouseCursor.grabbing: 'grabbing',
  StacMouseCursor.noDrop: 'noDrop',
  StacMouseCursor.alias: 'alias',
  StacMouseCursor.copy: 'copy',
  StacMouseCursor.disappearing: 'disappearing',
  StacMouseCursor.allScroll: 'allScroll',
  StacMouseCursor.resizeLeftRight: 'resizeLeftRight',
  StacMouseCursor.resizeUpDown: 'resizeUpDown',
  StacMouseCursor.resizeUpLeftDownRight: 'resizeUpLeftDownRight',
  StacMouseCursor.resizeUpRightDownLeft: 'resizeUpRightDownLeft',
  StacMouseCursor.resizeUp: 'resizeUp',
  StacMouseCursor.resizeDown: 'resizeDown',
  StacMouseCursor.resizeLeft: 'resizeLeft',
  StacMouseCursor.resizeRight: 'resizeRight',
  StacMouseCursor.resizeUpLeft: 'resizeUpLeft',
  StacMouseCursor.resizeUpRight: 'resizeUpRight',
  StacMouseCursor.resizeDownLeft: 'resizeDownLeft',
  StacMouseCursor.resizeDownRight: 'resizeDownRight',
  StacMouseCursor.resizeColumn: 'resizeColumn',
  StacMouseCursor.resizeRow: 'resizeRow',
  StacMouseCursor.zoomIn: 'zoomIn',
  StacMouseCursor.zoomOut: 'zoomOut',
};
