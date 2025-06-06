// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacRow _$StacRowFromJson(Map<String, dynamic> json) => _StacRow(
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
      spacing: json['spacing'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['spacing']),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StacRowToJson(_StacRow instance) => <String, dynamic>{
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
