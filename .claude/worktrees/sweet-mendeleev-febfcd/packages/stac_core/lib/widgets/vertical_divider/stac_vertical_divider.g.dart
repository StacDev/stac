// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_vertical_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacVerticalDivider _$StacVerticalDividerFromJson(Map<String, dynamic> json) =>
    StacVerticalDivider(
      width: const DoubleConverter().fromJson(json['width']),
      thickness: const DoubleConverter().fromJson(json['thickness']),
      indent: const DoubleConverter().fromJson(json['indent']),
      endIndent: const DoubleConverter().fromJson(json['endIndent']),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$StacVerticalDividerToJson(
  StacVerticalDivider instance,
) => <String, dynamic>{
  'width': const DoubleConverter().toJson(instance.width),
  'thickness': const DoubleConverter().toJson(instance.thickness),
  'indent': const DoubleConverter().toJson(instance.indent),
  'endIndent': const DoubleConverter().toJson(instance.endIndent),
  'color': instance.color,
  'type': instance.type,
};
