// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mirai_carousel_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiraiCarouselViewImpl _$$MiraiCarouselViewImplFromJson(
        Map<String, dynamic> json) =>
    _$MiraiCarouselViewImpl(
      carouselType: $enumDecodeNullable(
              _$MiraiCarouselViewTypeEnumMap, json['carouselType']) ??
          MiraiCarouselViewType.regular,
      padding: json['padding'] == null
          ? null
          : MiraiEdgeInsets.fromJson(json['padding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      overlayColor: json['overlayColor'] as String?,
      itemSnapping: json['itemSnapping'] as bool? ?? false,
      shrinkExtent: (json['shrinkExtent'] as num?)?.toDouble() ?? 0.0,
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.horizontal,
      reverse: json['reverse'] as bool? ?? false,
      onTap: json['onTap'] as Map<String, dynamic>?,
      enableSplash: json['enableSplash'] as bool? ?? true,
      itemExtent: (json['itemExtent'] as num?)?.toDouble(),
      flexWeights: (json['flexWeights'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$$MiraiCarouselViewImplToJson(
        _$MiraiCarouselViewImpl instance) =>
    <String, dynamic>{
      'carouselType': _$MiraiCarouselViewTypeEnumMap[instance.carouselType]!,
      'padding': instance.padding,
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'overlayColor': instance.overlayColor,
      'itemSnapping': instance.itemSnapping,
      'shrinkExtent': instance.shrinkExtent,
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'reverse': instance.reverse,
      'onTap': instance.onTap,
      'enableSplash': instance.enableSplash,
      'itemExtent': instance.itemExtent,
      'flexWeights': instance.flexWeights,
      'children': instance.children,
    };

const _$MiraiCarouselViewTypeEnumMap = {
  MiraiCarouselViewType.regular: 'regular',
  MiraiCarouselViewType.weighted: 'weighted',
};

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};
