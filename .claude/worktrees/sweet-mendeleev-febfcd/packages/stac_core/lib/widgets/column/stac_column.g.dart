// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacColumn _$StacColumnFromJson(Map<String, dynamic> json) => StacColumn(
  mainAxisAlignment: $enumDecodeNullable(
    _$StacMainAxisAlignmentEnumMap,
    json['mainAxisAlignment'],
  ),
  mainAxisSize: $enumDecodeNullable(
    _$StacMainAxisSizeEnumMap,
    json['mainAxisSize'],
  ),
  crossAxisAlignment: $enumDecodeNullable(
    _$StacCrossAxisAlignmentEnumMap,
    json['crossAxisAlignment'],
  ),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  verticalDirection: $enumDecodeNullable(
    _$StacVerticalDirectionEnumMap,
    json['verticalDirection'],
  ),
  textBaseline: $enumDecodeNullable(
    _$StacTextBaselineEnumMap,
    json['textBaseline'],
  ),
  spacing: const DoubleConverter().fromJson(json['spacing']),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$StacColumnToJson(StacColumn instance) =>
    <String, dynamic>{
      'mainAxisAlignment':
          _$StacMainAxisAlignmentEnumMap[instance.mainAxisAlignment],
      'mainAxisSize': _$StacMainAxisSizeEnumMap[instance.mainAxisSize],
      'crossAxisAlignment':
          _$StacCrossAxisAlignmentEnumMap[instance.crossAxisAlignment],
      'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
      'verticalDirection':
          _$StacVerticalDirectionEnumMap[instance.verticalDirection],
      'textBaseline': _$StacTextBaselineEnumMap[instance.textBaseline],
      'spacing': const DoubleConverter().toJson(instance.spacing),
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };

const _$StacMainAxisAlignmentEnumMap = {
  StacMainAxisAlignment.start: 'start',
  StacMainAxisAlignment.end: 'end',
  StacMainAxisAlignment.center: 'center',
  StacMainAxisAlignment.spaceBetween: 'spaceBetween',
  StacMainAxisAlignment.spaceAround: 'spaceAround',
  StacMainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$StacMainAxisSizeEnumMap = {
  StacMainAxisSize.min: 'min',
  StacMainAxisSize.max: 'max',
};

const _$StacCrossAxisAlignmentEnumMap = {
  StacCrossAxisAlignment.start: 'start',
  StacCrossAxisAlignment.end: 'end',
  StacCrossAxisAlignment.center: 'center',
  StacCrossAxisAlignment.stretch: 'stretch',
  StacCrossAxisAlignment.baseline: 'baseline',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacVerticalDirectionEnumMap = {
  StacVerticalDirection.up: 'up',
  StacVerticalDirection.down: 'down',
};

const _$StacTextBaselineEnumMap = {
  StacTextBaseline.alphabetic: 'alphabetic',
  StacTextBaseline.ideographic: 'ideographic',
};
