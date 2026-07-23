// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_bottom_sheet_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBottomSheetThemeData _$StacBottomSheetThemeDataFromJson(
  Map<String, dynamic> json,
) => StacBottomSheetThemeData(
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
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  constraints: json['constraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['constraints'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StacBottomSheetThemeDataToJson(
  StacBottomSheetThemeData instance,
) => <String, dynamic>{
  'backgroundColor': instance.backgroundColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'elevation': instance.elevation,
  'modalBackgroundColor': instance.modalBackgroundColor,
  'modalBarrierColor': instance.modalBarrierColor,
  'shadowColor': instance.shadowColor,
  'modalElevation': instance.modalElevation,
  'shape': instance.shape?.toJson(),
  'showDragHandle': instance.showDragHandle,
  'dragHandleColor': instance.dragHandleColor,
  'dragHandleSize': instance.dragHandleSize?.toJson(),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'constraints': instance.constraints?.toJson(),
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
