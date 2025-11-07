// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_beveled_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacBeveledRectangleBorder _$StacBeveledRectangleBorderFromJson(
  Map<String, dynamic> json,
) => StacBeveledRectangleBorder(
  side: json['side'] == null
      ? null
      : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  borderRadius: json['borderRadius'] == null
      ? null
      : StacBorderRadius.fromJson(json['borderRadius']),
);

Map<String, dynamic> _$StacBeveledRectangleBorderToJson(
  StacBeveledRectangleBorder instance,
) => <String, dynamic>{
  'side': instance.side?.toJson(),
  'type': _$StacShapeBorderTypeEnumMap[instance.type]!,
  'borderRadius': instance.borderRadius?.toJson(),
};

const _$StacShapeBorderTypeEnumMap = {
  StacShapeBorderType.circleBorder: 'circleBorder',
  StacShapeBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  StacShapeBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  StacShapeBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
};
