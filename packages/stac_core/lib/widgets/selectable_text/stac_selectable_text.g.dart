// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_selectable_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacSelectableText _$StacSelectableTextFromJson(Map<String, dynamic> json) =>
    StacSelectableText(
      data: json['data'] as String,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => StacTextSpan.fromJson(e as Map<String, dynamic>))
          .toList(),
      style: json['style'] == null
          ? null
          : StacTextStyle.fromJson(json['style']),
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
      textScaler: (json['textScaler'] as num?)?.toDouble(),
      showCursor: json['showCursor'] as bool?,
      autofocus: json['autofocus'] as bool?,
      minLines: (json['minLines'] as num?)?.toInt(),
      maxLines: (json['maxLines'] as num?)?.toInt(),
      cursorWidth: (json['cursorWidth'] as num?)?.toDouble(),
      cursorHeight: (json['cursorHeight'] as num?)?.toDouble(),
      cursorRadius: (json['cursorRadius'] as num?)?.toDouble(),
      cursorColor: json['cursorColor'] as String?,
      enableInteractiveSelection: json['enableInteractiveSelection'] as bool?,
      onTap: json['onTap'] == null
          ? null
          : StacAction.fromJson(json['onTap'] as Map<String, dynamic>),
      semanticsLabel: json['semanticsLabel'] as String?,
      textWidthBasis: $enumDecodeNullable(
        _$StacTextWidthBasisEnumMap,
        json['textWidthBasis'],
      ),
      selectionColor: json['selectionColor'] as String?,
    );

Map<String, dynamic> _$StacSelectableTextToJson(StacSelectableText instance) =>
    <String, dynamic>{
      'data': instance.data,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'style': instance.style?.toJson(),
      'copyWithStyle': instance.copyWithStyle?.toJson(),
      'textAlign': _$StacTextAlignEnumMap[instance.textAlign],
      'textDirection': _$StacTextDirectionEnumMap[instance.textDirection],
      'textScaler': instance.textScaler,
      'showCursor': instance.showCursor,
      'autofocus': instance.autofocus,
      'minLines': instance.minLines,
      'maxLines': instance.maxLines,
      'cursorWidth': instance.cursorWidth,
      'cursorHeight': instance.cursorHeight,
      'cursorRadius': instance.cursorRadius,
      'cursorColor': instance.cursorColor,
      'enableInteractiveSelection': instance.enableInteractiveSelection,
      'onTap': instance.onTap?.toJson(),
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

const _$StacTextWidthBasisEnumMap = {
  StacTextWidthBasis.parent: 'parent',
  StacTextWidthBasis.longestLine: 'longestLine',
};
