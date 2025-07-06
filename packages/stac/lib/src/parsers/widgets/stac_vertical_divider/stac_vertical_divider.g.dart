// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_vertical_divider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacVerticalDivider _$StacVerticalDividerFromJson(Map<String, dynamic> json) =>
    _StacVerticalDivider(
      width: json['width'] == null ? null : StacDouble.fromJson(json['width']),
      thickness: json['thickness'] == null
          ? null
          : StacDouble.fromJson(json['thickness']),
      indent:
          json['indent'] == null ? null : StacDouble.fromJson(json['indent']),
      endIndent: json['endIndent'] == null
          ? null
          : StacDouble.fromJson(json['endIndent']),
      color: json['color'] as String?,
    );

Map<String, dynamic> _$StacVerticalDividerToJson(
        _StacVerticalDivider instance) =>
    <String, dynamic>{
      'width': instance.width,
      'thickness': instance.thickness,
      'indent': instance.indent,
      'endIndent': instance.endIndent,
      'color': instance.color,
    };
