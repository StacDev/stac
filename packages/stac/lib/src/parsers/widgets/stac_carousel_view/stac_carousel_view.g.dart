// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_carousel_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StacCarouselView _$StacCarouselViewFromJson(Map<String, dynamic> json) =>
    _StacCarouselView(
      carouselType: $enumDecodeNullable(
              _$StacCarouselViewTypeEnumMap, json['carouselType']) ??
          StacCarouselViewType.regular,
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: json['elevation'] == null
          ? null
          : StacDouble.fromJson(json['elevation']),
      overlayColor: json['overlayColor'] as String?,
      itemSnapping: json['itemSnapping'] as bool? ?? false,
      shrinkExtent: json['shrinkExtent'] == null
          ? StacDouble.zero
          : StacDouble.fromJson(json['shrinkExtent']),
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']) ??
              Axis.horizontal,
      reverse: json['reverse'] as bool? ?? false,
      onTap: json['onTap'] as Map<String, dynamic>?,
      enableSplash: json['enableSplash'] as bool? ?? true,
      itemExtent: json['itemExtent'] == null
          ? null
          : StacDouble.fromJson(json['itemExtent']),
      flexWeights: (json['flexWeights'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$StacCarouselViewToJson(_StacCarouselView instance) =>
    <String, dynamic>{
      'carouselType': _$StacCarouselViewTypeEnumMap[instance.carouselType]!,
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

const _$StacCarouselViewTypeEnumMap = {
  StacCarouselViewType.regular: 'regular',
  StacCarouselViewType.weighted: 'weighted',
};

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};
