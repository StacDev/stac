class AniListAPIUtils {
  static const String SORT_TRENDING_DESC = "TRENDING_DESC";

  static Map<String, dynamic> getAniListAPIRequest(String query) {
    return {
      "url": "https://graphql.anilist.co",
      "method": "post",
      "headers" : {
        "Content-Type" : "application/json",
        "Accept" : "application/json"
      },
      "body" : {
        "query" : query
      }
    };
  }

  static String getAniListAPIQueryForAnimeList({required int count, required String sortType, String? genre}) {
    return
        "query {"
        " Page(page: 1, perPage: $count) {"
        "   media(type: ANIME, sort: $sortType${genre != null && genre.isNotEmpty ? ", genre : \"$genre\"" : ""}) {"
        "     id"
        "     title {"
        "       romaji"
        "       english"
        "       native"
        "     }"
        "     coverImage {"
        "       extraLarge"
        "     }"
        "     bannerImage"
        "     season"
        "     episodes"
        "     genres"
        "     averageScore"
        "     seasonYear"
        "   }"
        " }"
        "}";
  }

  static String getAniListAPIQueryForAnimeAiringSchedule({required int count, bool? notYetAired, int? airingAtStart, int? airingAtEnd}) {
    return
      "query Page {"
      " Page(page: 1, perPage: $count) {"
      "  airingSchedules(sort: TIME${notYetAired != null ? ", notYetAired: $notYetAired" : ""}${airingAtStart != null ? ", airingAt_greater: $airingAtStart" : ""}${airingAtEnd != null ? ", airingAt_lesser: $airingAtEnd" : ""}) {"
      "    airingAt"
      "    episode"
      "    timeUntilAiring"
      "    media {"
      "      id"
      "      title {"
      "        romaji"
      "        english"
      "        native"
      "      }"
      "      coverImage {"
      "        extraLarge"
      "      }"
      "      bannerImage"
      "      duration"
      "    }"
      "  }"
      " }"
      "}";
  }
}