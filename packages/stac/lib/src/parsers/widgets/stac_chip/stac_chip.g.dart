// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_chip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacChip _$StacChipFromJson(Map<String, dynamic> json) => _StacChip(
      avatar: json['avatar'] as Map<String, dynamic>?,
      label: json['label'] as Map<String, dynamic>,
      labelStyle: json['labelStyle'] == null
          ? null
          : StacTextStyle.fromJson(json['labelStyle']),
      labelPadding: json['labelPadding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['labelPadding']),
      deleteIcon: json['deleteIcon'] as Map<String, dynamic>?,
      onDeleted: json['onDeleted'] as Map<String, dynamic>?,
      deleteIconColor: json['deleteIconColor'] as String?,
      deleteButtonTooltipMessage: json['deleteButtonTooltipMessage'] as String?,
      side: json['side'] == null
          ? null
          : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : StacRoundedRectangleBorder.fromJson(
              json['shape'] as Map<String, dynamic>),
      clipBehavior:
          $enumDecodeNullable(_$ClipEnumMap, json['clipBehavior']) ?? Clip.none,
      autofocus: json['autofocus'] as bool? ?? false,
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      visualDensity: json['visualDensity'] == null
          ? null
          : StacVisualDensity.fromJson(
              json['visualDensity'] as Map<String, dynamic>),
      materialTapTargetSize: $enumDecodeNullable(
          _$MaterialTapTargetSizeEnumMap, json['materialTapTargetSize']),
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      iconTheme: json['iconTheme'] == null
          ? null
          : StacIconThemeData.fromJson(
              json['iconTheme'] as Map<String, dynamic>),
      avatarBoxConstraints: json['avatarBoxConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['avatarBoxConstraints'] as Map<String, dynamic>),
      deleteIconBoxConstraints: json['deleteIconBoxConstraints'] == null
          ? null
          : StacBoxConstraints.fromJson(
              json['deleteIconBoxConstraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StacChipToJson(_StacChip instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'label': instance.label,
      'labelStyle': instance.labelStyle,
      'labelPadding': instance.labelPadding,
      'deleteIcon': instance.deleteIcon,
      'onDeleted': instance.onDeleted,
      'deleteIconColor': instance.deleteIconColor,
      'deleteButtonTooltipMessage': instance.deleteButtonTooltipMessage,
      'side': instance.side,
      'shape': instance.shape,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'autofocus': instance.autofocus,
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'padding': instance.padding,
      'visualDensity': instance.visualDensity,
      'materialTapTargetSize':
          _$MaterialTapTargetSizeEnumMap[instance.materialTapTargetSize],
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'iconTheme': instance.iconTheme,
      'avatarBoxConstraints': instance.avatarBoxConstraints,
      'deleteIconBoxConstraints': instance.deleteIconBoxConstraints,
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};

const _$MaterialTapTargetSizeEnumMap = {
  MaterialTapTargetSize.padded: 'padded',
  MaterialTapTargetSize.shrinkWrap: 'shrinkWrap',
};
