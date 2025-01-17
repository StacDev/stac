// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_border_side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiBorderSideImpl _$$MiraiBorderSideImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiBorderSideImpl(
      color: json['color'] as String?,
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      strokeAlign: (json['strokeAlign'] as num?)?.toDouble() ?? 0.0,
      borderStyle:
          $enumDecodeNullable(_$BorderStyleEnumMap, json['borderStyle']) ??
              BorderStyle.solid,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MiraiBorderSideImplToJson(
        _$MiraiBorderSideImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'borderStyle': _$BorderStyleEnumMap[instance.borderStyle]!,
      'runtimeType': instance.$type,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};

_$MiraiBorderSideNoneImpl _$$MiraiBorderSideNoneImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiBorderSideNoneImpl(
      color: json['color'] as String? ?? "000000",
      width: (json['width'] as num?)?.toDouble() ?? 0.0,
      strokeAlign: (json['strokeAlign'] as num?)?.toDouble() ?? -1.0,
      borderStyle:
          $enumDecodeNullable(_$BorderStyleEnumMap, json['borderStyle']) ??
              BorderStyle.none,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MiraiBorderSideNoneImplToJson(
        _$MiraiBorderSideNoneImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'width': instance.width,
      'strokeAlign': instance.strokeAlign,
      'borderStyle': _$BorderStyleEnumMap[instance.borderStyle]!,
      'runtimeType': instance.$type,
    };
