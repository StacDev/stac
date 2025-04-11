// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_sheet_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacBottomSheetThemeData _$StacBottomSheetThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacBottomSheetThemeData(
      backgroundColor: json['backgroundColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      modalBackgroundColor: json['modalBackgroundColor'] as String?,
      modalBarrierColor: json['modalBarrierColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      modalElevation: (json['modalElevation'] as num?)?.toDouble(),
      shape: json['shape'] == null
          ? null
          : StacBorder.fromJson(json['shape'] as Map<String, dynamic>),
      showDragHandle: json['showDragHandle'] as bool?,
      dragHandleColor: json['dragHandleColor'] as String?,
      dragHandleSize: json['dragHandleSize'] == null
          ? null
          : StacSize.fromJson(json['dragHandleSize'] as Map<String, dynamic>),
      clipBehavior: $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']),
      constraints: json['constraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['constraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacBottomSheetThemeDataToJson(
        _StacBottomSheetThemeData instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'modalBackgroundColor': instance.modalBackgroundColor,
      'modalBarrierColor': instance.modalBarrierColor,
      'shadowColor': instance.shadowColor,
      'modalElevation': instance.modalElevation,
      'shape': instance.shape,
      'showDragHandle': instance.showDragHandle,
      'dragHandleColor': instance.dragHandleColor,
      'dragHandleSize': instance.dragHandleSize,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior],
      'constraints': instance.constraints,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
