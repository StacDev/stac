// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacText _$StacTextFromJson(Map<String, dynamic> json) => StacText(
  data: json['data'] as String,
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => StacTextSpan.fromJson(e as Map<String, dynamic>))
      .toList(),
  style: json['style'] == null ? null : StacTextStyle.fromJson(json['style']),
  copyWithStyle: json['copyWithStyle'] == null
      ? null
      : StacCustomTextStyle.fromJson(
          json['copyWithStyle'] as Map<String, dynamic>,
        ),
  textAlign: $enumDecodeNullable(_$StacTextAlignEnumMap, json['textAlign']),
  textDirection: $enumDecodeNullable(
    _$StacTextDirectionEnumMap,
    json['textDirection'],
  ),
  softWrap: json['softWrap'] as bool?,
  overflow: $enumDecodeNullable(_$StacTextOverflowEnumMap, json['overflow']),
  textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble(),
  maxLines: (json['maxLines'] as num?)?.toInt(),
  semanticsLabel: json['semanticsLabel'] as String?,
  textWidthBasis: $enumDecodeNullable(
    _$StacTextWidthBasisEnumMap,
    json['textWidthBasis'],
  ),
  selectionColor: json['selectionColor'] as String?,
);

Map<String, dynamic> _$StacTextToJson(StacText instance) => <String, dynamic>{
  'data': instance.data,
  'children': instance.children?.map((e) => e.toJson()).toList(),
  'style': instance.style?.toJson(),
  'copyWithStyle': instance.copyWithStyle?.toJson(),
  'textAlign': _$StacTextAlignEnumMap[instance.textAlign],
  'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
  'softWrap': instance.softWrap,
  'overflow': _$StacTextOverflowEnumMap[instance.overflow],
  'textScaleFactor': instance.textScaleFactor,
  'maxLines': instance.maxLines,
  'semanticsLabel': instance.semanticsLabel,
  'textWidthBasis': _$StacTextWidthBasisEnumMap[instance.textWidthBasis],
  'selectionColor': instance.selectionColor,
  'type': instance.type,
};

const _$StacTextAlignEnumMap = {
  StacTextAlign.left: 'left',
  StacTextAlign.right: 'right',
  StacTextAlign.center: 'center',
  StacTextAlign.justify: 'justify',
  StacTextAlign.start: 'start',
  StacTextAlign.end: 'end',
};

const _$StacTextDirectionEnumMap = {
  StacTextDirection.rtl: 'rtl',
  StacTextDirection.ltr: 'ltr',
};

const _$StacTextOverflowEnumMap = {
  StacTextOverflow.clip: 'clip',
  StacTextOverflow.fade: 'fade',
  StacTextOverflow.ellipsis: 'ellipsis',
  StacTextOverflow.visible: 'visible',
};

const _$StacTextWidthBasisEnumMap = {
  StacTextWidthBasis.parent: 'parent',
  StacTextWidthBasis.longestLine: 'longestLine',
};
