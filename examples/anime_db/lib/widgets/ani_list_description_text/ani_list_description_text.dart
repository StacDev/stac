
class AniListDescriptionText {
  AniListDescriptionText({required this.data});
  final String data;

  factory AniListDescriptionText.fromJson(Map<String, dynamic> json) {
    return AniListDescriptionText(data: json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
    };
  }
}