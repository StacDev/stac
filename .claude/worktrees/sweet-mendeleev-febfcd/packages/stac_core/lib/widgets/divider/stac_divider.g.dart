// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacDivider _$StacDividerFromJson(Map<String, dynamic> json) => StacDivider(
  height: const DoubleConverter().fromJson(json['height']),
  thickness: const DoubleConverter().fromJson(json['thickness']),
  indent: const DoubleConverter().fromJson(json['indent']),
  endIndent: const DoubleConverter().fromJson(json['endIndent']),
  color: json['color'] as String?,
);

Map<String, dynamic> _$StacDividerToJson(StacDivider instance) =>
    <String, dynamic>{
      'height': const DoubleConverter().toJson(instance.height),
      'thickness': const DoubleConverter().toJson(instance.thickness),
      'indent': const DoubleConverter().toJson(instance.indent),
      'endIndent': const DoubleConverter().toJson(instance.endIndent),
      'color': instance.color,
      'type': instance.type,
    };
