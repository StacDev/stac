// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stac_carousel_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacCarouselView _$StacCarouselViewFromJson(Map<String, dynamic> json) =>
    StacCarouselView(
      carouselType: $enumDecodeNullable(
        _$StacCarouselViewTypeEnumMap,
        json['carouselType'],
      ),
      padding: json['padding'] == null
          ? null
          : StacEdgeInsets.fromJson(json['padding']),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: const DoubleConverter().fromJson(json['elevation']),
      overlayColor: json['overlayColor'] as String?,
      itemSnapping: json['itemSnapping'] as bool?,
      shrinkExtent: const DoubleConverter().fromJson(json['shrinkExtent']),
      scrollDirection: $enumDecodeNullable(
        _$StacAxisEnumMap,
        json['scrollDirection'],
      ),
      reverse: json['reverse'] as bool?,
      onTap: json['onTap'] == null
          ? null
          : StacAction.fromJson(json['onTap'] as Map<String, dynamic>),
      enableSplash: json['enableSplash'] as bool?,
      itemExtent: const DoubleConverter().fromJson(json['itemExtent']),
      flexWeights: (json['flexWeights'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => StacWidget.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StacCarouselViewToJson(StacCarouselView instance) =>
    <String, dynamic>{
      'carouselType': _$StacCarouselViewTypeEnumMap[instance.carouselType],
      'padding': instance.padding?.toJson(),
      'backgroundColor': instance.backgroundColor,
      'elevation': const DoubleConverter().toJson(instance.elevation),
      'overlayColor': instance.overlayColor,
      'itemSnapping': instance.itemSnapping,
      'shrinkExtent': const DoubleConverter().toJson(instance.shrinkExtent),
      'scrollDirection': _$StacAxisEnumMap[instance.scrollDirection],
      'reverse': instance.reverse,
      'onTap': instance.onTap?.toJson(),
      'enableSplash': instance.enableSplash,
      'itemExtent': const DoubleConverter().toJson(instance.itemExtent),
      'flexWeights': instance.flexWeights,
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'type': instance.type,
    };

const _$StacCarouselViewTypeEnumMap = {
  StacCarouselViewType.regular: 'regular',
  StacCarouselViewType.weighted: 'weighted',
};

const _$StacAxisEnumMap = {
  StacAxis.horizontal: 'horizontal',
  StacAxis.vertical: 'vertical',
};
