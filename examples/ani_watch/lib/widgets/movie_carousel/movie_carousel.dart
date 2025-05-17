import 'package:stac/stac.dart';

class AnimeHomeCarousel {
  AnimeHomeCarousel({required this.request});

  final StacNetworkRequest request;

  factory AnimeHomeCarousel.fromJson(Map<String, dynamic> json) {
    return AnimeHomeCarousel(
      request: StacNetworkRequest.fromJson(json['request']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'request': request.toJson()};
  }
}
