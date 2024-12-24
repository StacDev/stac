// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiTextImpl _$$MiraiTextImplFromJson(Map<String, dynamic> json) =>
    _$MiraiTextImpl(
      data: json['data'] as String,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => MiraiTextSpan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      style:
          json['style'] == null ? null : MiraiTextStyle.fromJson(json['style']),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']),
      textDirection:
          $enumDecodeNullable(_$TextDirectionEnumMap, json['textDirection']),
      softWrap: json['softWrap'] as bool?,
      overflow: $enumDecodeNullable(_$TextOverflowEnumMap, json['overflow']),
      textScaleFactor: (json['textScaleFactor'] as num?)?.toDouble(),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      semanticsLabel: json['semanticsLabel'] as String?,
      textWidthBasis:
          $enumDecodeNullable(_$TextWidthBasisEnumMap, json['textWidthBasis']),
      selectionColor: json['selectionColor'] as String?,
    );

Map<String, dynamic> _$$MiraiTextImplToJson(_$MiraiTextImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'children': instance.children,
      'style': instance.style,
      'textAlign': _$TextAlignEnumMap[instance.textAlign],
      'textDirection': _$TextDirectionEnumMap[instance.textDirection],
      'softWrap': instance.softWrap,
      'overflow': _$TextOverflowEnumMap[instance.overflow],
      'textScaleFactor': instance.textScaleFactor,
      'maxLines': instance.maxLines,
      'semanticsLabel': instance.semanticsLabel,
      'textWidthBasis': _$TextWidthBasisEnumMap[instance.textWidthBasis],
      'selectionColor': instance.selectionColor,
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

const _$TextWidthBasisEnumMap = {
  TextWidthBasis.parent: 'parent',
  TextWidthBasis.longestLine: 'longestLine',
};

_$MiraiTextSpanImpl _$$MiraiTextSpanImplFromJson(Map<String, dynamic> json) =>
    _$MiraiTextSpanImpl(
      data: json['data'] as String?,
      style:
          json['style'] == null ? null : MiraiTextStyle.fromJson(json['style']),
      onTap: json['onTap'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MiraiTextSpanImplToJson(_$MiraiTextSpanImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'style': instance.style,
      'onTap': instance.onTap,
    };
