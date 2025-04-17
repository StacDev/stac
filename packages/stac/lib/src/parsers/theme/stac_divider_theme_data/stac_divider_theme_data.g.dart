// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_divider_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacDividerThemeData _$StacDividerThemeDataFromJson(
        Map<String, dynamic> json) =>
    _StacDividerThemeData(
      color: json['color'] as String?,
      space: (json['space'] as num?)?.toDouble(),
      thickness: (json['thickness'] as num?)?.toDouble(),
      indent: (json['indent'] as num?)?.toDouble(),
      endIndent: (json['endIndent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StacDividerThemeDataToJson(
        _StacDividerThemeData instance) =>
    <String, dynamic>{
      'color': instance.color,
      'space': instance.space,
      'thickness': instance.thickness,
      'indent': instance.indent,
      'endIndent': instance.endIndent,
    };
