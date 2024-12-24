// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiColumnImpl _$$MiraiColumnImplFromJson(Map<String, dynamic> json) =>
    _$MiraiColumnImpl(
      mainAxisAlignment: $enumDecodeNullable(
              _$MainAxisAlignmentEnumMap, json['mainAxisAlignment']) ??
          MainAxisAlignment.start,
      crossAxisAlignment: $enumDecodeNullable(
              _$CrossAxisAlignmentEnumMap, json['crossAxisAlignment']) ??
          CrossAxisAlignment.center,
      mainAxisSize:
          $enumDecodeNullable(_$MainAxisSizeEnumMap, json['mainAxisSize']) ??
              MainAxisSize.max,
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      verticalDirection: $enumDecodeNullable(
              _$VerticalDirectionEnumMap, json['verticalDirection']) ??
          VerticalDirection.down,
      spacing: (json['spacing'] as num?)?.toDouble() ?? 0,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MiraiColumnImplToJson(_$MiraiColumnImpl instance) =>
    <String, dynamic>{
      'mainAxisAlignment':
          _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]!,
      'crossAxisAlignment':
          _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]!,
      'mainAxisSize': _$MainAxisSizeEnumMap[instance.mainAxisSize]!,
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'verticalDirection':
          _$VerticalDirectionEnumMap[instance.verticalDirection]!,
      'spacing': instance.spacing,
      'children': instance.children,
    };

const _$MainAxisAlignmentEnumMap = {
  MainAxisAlignment.start: 'start',
  MainAxisAlignment.end: 'end',
  MainAxisAlignment.center: 'center',
  MainAxisAlignment.spaceBetween: 'spaceBetween',
  MainAxisAlignment.spaceAround: 'spaceAround',
  MainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};

const _$MainAxisSizeEnumMap = {
  MainAxisSize.min: 'min',
  MainAxisSize.max: 'max',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};

const _$VerticalDirectionEnumMap = {
  VerticalDirection.up: 'up',
  VerticalDirection.down: 'down',
};
