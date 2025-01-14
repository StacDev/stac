// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_stroke_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiStrokeTextImpl _$$MiraiStrokeTextImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiStrokeTextImpl(
      data: json['data'] as String,
      style:
          json['style'] == null ? null : MiraiTextStyle.fromJson(json['style']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      overflow: $enumDecodeNullable(_$TextOverflowEnumMap, json['overflow']),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      strokeColor: json['strokeColor'] as String?,
      strokeWidth: (json['strokeWidth'] as num?)?.toDouble(),
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MiraiStrokeTextImplToJson(
        _$MiraiStrokeTextImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'style': instance.style,
      'textAlign': _$TextAlignEnumMap[instance.textAlign],
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'overflow': _$TextOverflowEnumMap[instance.overflow],
      'maxLines': instance.maxLines,
      'strokeColor': instance.strokeColor,
      'strokeWidth': instance.strokeWidth,
      'textScaleFactor': instance.textScaleFactor,
    };

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$TextDirectionEnumMap = {
  TextDirection.rtl: 'rtl',
  TextDirection.ltr: 'ltr',
};

const _$TextOverflowEnumMap = {
  TextOverflow.clip: 'clip',
  TextOverflow.fade: 'fade',
  TextOverflow.ellipsis: 'ellipsis',
  TextOverflow.visible: 'visible',
};
