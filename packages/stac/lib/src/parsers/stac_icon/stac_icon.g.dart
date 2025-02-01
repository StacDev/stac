// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StacIconImpl _$$StacIconImplFromJson(Map<String, dynamic> json) =>
    _$StacIconImpl(
      icon: json['icon'] as String,
      iconType: $enumDecodeNullable(_$IconTypeEnumMap, json['iconType']) ??
          IconType.material,
      size: (json['size'] as num?)?.toDouble(),
      color: json['color'] as String?,
      semanticLabel: json['semanticLabel'] as String?,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
    );

Map<String, dynamic> _$$StacIconImplToJson(_$StacIconImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'iconType': _$IconTypeEnumMap[instance.iconType]!,
      'size': instance.size,
      'color': instance.color,
      'semanticLabel': instance.semanticLabel,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
    };

const _$IconTypeEnumMap = {
  IconType.material: 'material',
  IconType.cupertino: 'cupertino',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};
