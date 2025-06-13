import 'dart:ffi';

class AnimeScheduleItem {
  AnimeScheduleItem({
    required this.id,
    required this.coverImgUrl,
    required this.bannerImgUrl,
    required this.title,
    required this.airingTime,
    required this.episode,
    required this.duration,
  });

  final int id;
  final String coverImgUrl;
  final String? bannerImgUrl;
  final String title;
  final String airingTime;
  final String episode;
  final String? duration;

  factory AnimeScheduleItem.fromJson(Map<String, dynamic> json) {
    return AnimeScheduleItem(
      id: int.parse(json["id"] as String),
      coverImgUrl: json["coverImgUrl"] as String,
      bannerImgUrl: json["bannerImgUrl"] as String?,
      title: json["title"] as String,
      airingTime: json["airingTime"] as String,
      episode: json["episode"] as String,
      duration: json["duration"] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'coverImgUrl': coverImgUrl,
      'bannerImgUrl': bannerImgUrl,
      'title': title,
      'airingTime': airingTime,
      'episode': episode,
      'duration': duration,
    };
  }
}