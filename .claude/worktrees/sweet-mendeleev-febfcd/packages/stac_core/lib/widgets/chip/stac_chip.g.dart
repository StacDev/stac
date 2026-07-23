// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_chip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacChip _$StacChipFromJson(Map<String, dynamic> json) => StacChip(
  avatar: json['avatar'] == null
      ? null
      : StacWidget.fromJson(json['avatar'] as Map<String, dynamic>),
  label: StacWidget.fromJson(json['label'] as Map<String, dynamic>),
  labelStyle: json['labelStyle'] == null
      ? null
      : StacTextStyle.fromJson(json['labelStyle']),
  labelPadding: json['labelPadding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['labelPadding']),
  deleteIcon: json['deleteIcon'] == null
      ? null
      : StacWidget.fromJson(json['deleteIcon'] as Map<String, dynamic>),
  onDeleted: json['onDeleted'] == null
      ? null
      : StacAction.fromJson(json['onDeleted'] as Map<String, dynamic>),
  deleteIconColor: json['deleteIconColor'] as String?,
  deleteButtonTooltipMessage: json['deleteButtonTooltipMessage'] as String?,
  side: json['side'] == null
      ? null
      : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  shape: json['shape'] == null
      ? null
      : StacShapeBorder.fromJson(json['shape'] as Map<String, dynamic>),
  clipBehavior: $enumDecodeNullable(_$StacClipEnumMap, json['clipBehavior']),
  autofocus: json['autofocus'] as bool?,
  color: json['color'] as String?,
  backgroundColor: json['backgroundColor'] as String?,
  padding: json['padding'] == null
      ? null
      : StacEdgeInsets.fromJson(json['padding']),
  visualDensity: json['visualDensity'] == null
      ? null
      : StacVisualDensity.fromJson(
          json['visualDensity'] as Map<String, dynamic>,
        ),
  materialTapTargetSize: $enumDecodeNullable(
    _$StacMaterialTapTargetSizeEnumMap,
    json['materialTapTargetSize'],
  ),
  elevation: const DoubleConverter().fromJson(json['elevation']),
  shadowColor: json['shadowColor'] as String?,
  surfaceTintColor: json['surfaceTintColor'] as String?,
  avatarBoxConstraints: json['avatarBoxConstraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['avatarBoxConstraints'] as Map<String, dynamic>,
        ),
  deleteIconBoxConstraints: json['deleteIconBoxConstraints'] == null
      ? null
      : StacBoxConstraints.fromJson(
          json['deleteIconBoxConstraints'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$StacChipToJson(StacChip instance) => <String, dynamic>{
  'avatar': instance.avatar?.toJson(),
  'label': instance.label.toJson(),
  'labelStyle': instance.labelStyle?.toJson(),
  'labelPadding': instance.labelPadding?.toJson(),
  'deleteIcon': instance.deleteIcon?.toJson(),
  'onDeleted': instance.onDeleted?.toJson(),
  'deleteIconColor': instance.deleteIconColor,
  'deleteButtonTooltipMessage': instance.deleteButtonTooltipMessage,
  'side': instance.side?.toJson(),
  'shape': instance.shape?.toJson(),
  'clipBehavior': _$StacClipEnumMap[instance.clipBehavior],
  'autofocus': instance.autofocus,
  'color': instance.color,
  'backgroundColor': instance.backgroundColor,
  'padding': instance.padding?.toJson(),
  'visualDensity': instance.visualDensity?.toJson(),
  'materialTapTargetSize':
      _$StacMaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
  'elevation': const DoubleConverter().toJson(instance.elevation),
  'shadowColor': instance.shadowColor,
  'surfaceTintColor': instance.surfaceTintColor,
  'avatarBoxConstraints': instance.avatarBoxConstraints?.toJson(),
  'deleteIconBoxConstraints': instance.deleteIconBoxConstraints?.toJson(),
  'type': instance.type,
};

const _$StacClipEnumMap = {
  StacClip.none: 'none',
  StacClip.hardEdge: 'hardEdge',
  StacClip.antiAlias: 'antiAlias',
  StacClip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$StacMaterialTapTargetSizeEnumMap = {
  StacMaterialTapTargetSize.padded: 'padded',
  StacMaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
