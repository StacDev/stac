// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_carousel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StacMovieCarousel _$StacMovieCarouselFromJson(Map<String, dynamic> json) =>
    StacMovieCarousel(
      request: StacNetworkRequest.fromJson(
        json['request'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$StacMovieCarouselToJson(StacMovieCarousel instance) =>
    <String, dynamic>{'request': instance.request, 'type': instance.type};
