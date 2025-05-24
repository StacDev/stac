import 'package:stac/stac.dart';

class AnimeUpcoming {
  AnimeUpcoming({required this.request});

  final StacNetworkRequest request;

  factory AnimeUpcoming.fromJson(Map<String, dynamic> json) {
    return AnimeUpcoming(request: StacNetworkRequest.fromJson(json['request']));
  }

  Map<String, dynamic> toJson() {
    return {'request': request.toJson()};
  }
}