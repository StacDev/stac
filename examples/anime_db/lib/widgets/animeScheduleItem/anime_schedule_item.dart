
class AnimeScheduleItem {
  AnimeScheduleItem(
      {
        required this.coverImgUrl,
        required this.bannerImgUrl,
        required this.title,
        required this.airingTime,
        required this.episode,
        required this.duration,
      });
  final String coverImgUrl;
  final String? bannerImgUrl;
  final String title;
  final String airingTime;
  final String episode;
  final String? duration;

  factory AnimeScheduleItem.fromJson(Map<String, dynamic> json) {
    return AnimeScheduleItem(
        coverImgUrl : json["coverImgUrl"],
        bannerImgUrl : json["bannerImgUrl"],
        title : json["title"],
        airingTime : json["airingTime"],
        episode : json["episode"],
        duration : json["duration"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'coverImgUrl' : coverImgUrl,
      'bannerImgUrl' : bannerImgUrl,
      'title' : title,
      'airingTime' : airingTime,
      'episode' : episode,
      'duration' : duration,
    };
  }
}