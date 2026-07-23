import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'movie_carousel.g.dart';

/// A Stac model representing a movie carousel widget.
///
/// Displays a carousel of trending movies fetched from a network request.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacMovieCarousel(
///   request: StacNetworkRequest(
///     url: 'https://api.themoviedb.org/3/trending/movie/day',
///     method: Method.get,
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "movieCarousel",
///   "request": {
///     "actionType": "networkRequest",
///     "url": "https://api.themoviedb.org/3/trending/movie/day",
///     "method": "get"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacMovieCarousel extends StacWidget {
  const StacMovieCarousel({required this.request});

  /// The network request to fetch movie data for the carousel.
  final StacNetworkRequest request;

  /// Widget type identifier.
  @override
  String get type => 'movieCarousel';

  /// Creates a [StacMovieCarousel] from a JSON map.
  factory StacMovieCarousel.fromJson(Map<String, dynamic> json) =>
      _$StacMovieCarouselFromJson(json);

  /// Converts this [StacMovieCarousel] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacMovieCarouselToJson(this);
}
