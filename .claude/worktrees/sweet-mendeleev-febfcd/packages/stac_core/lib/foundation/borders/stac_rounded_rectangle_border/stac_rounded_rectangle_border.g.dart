// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_rounded_rectangle_border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacRoundedRectangleBorder _$StacRoundedRectangleBorderFromJson(
  Map<String, dynamic> json,
) => StacRoundedRectangleBorder(
  side: json['side'] == null
      ? null
      : StacBorderSide.fromJson(json['side'] as Map<String, dynamic>),
  borderRadius: json['borderRadius'] == null
      ? null
      : StacBorderRadius.fromJson(json['borderRadius']),
);

Map<String, dynamic> _$StacRoundedRectangleBorderToJson(
  StacRoundedRectangleBorder instance,
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
