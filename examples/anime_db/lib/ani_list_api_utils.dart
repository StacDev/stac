class AniListAPIUtils {
  // --- Sort Types ---

  // General & Popularity Based
  static const String SORT_ID = "ID";
  static const String SORT_ID_DESC = "ID_DESC";
  static const String SORT_POPULARITY = "POPULARITY";
  static const String SORT_POPULARITY_DESC = "POPULARITY_DESC";
  static const String SORT_TRENDING = "TRENDING";
  static const String SORT_TRENDING_DESC = "TRENDING_DESC";
  static const String SORT_FAVOURITES = "FAVOURITES";
  static const String SORT_FAVOURITES_DESC = "FAVOURITES_DESC";

  // Score & Rating Based
  static const String SORT_SCORE = "SCORE";
  static const String SORT_SCORE_DESC = "SCORE_DESC";
  static const String SORT_MEAN_SCORE = "MEAN_SCORE";
  static const String SORT_MEAN_SCORE_DESC = "MEAN_SCORE_DESC";

  // Date & Time Based
  static const String SORT_START_DATE = "START_DATE";
  static const String SORT_START_DATE_DESC = "START_DATE_DESC";
  static const String SORT_END_DATE = "END_DATE";
  static const String SORT_END_DATE_DESC = "END_DATE_DESC";

  // Alphabetical
  static const String SORT_TITLE_ROMAJI = "TITLE_ROMAJI";
  static const String SORT_TITLE_ROMAJI_DESC = "TITLE_ROMAJI_DESC";
  static const String SORT_TITLE_ENGLISH = "TITLE_ENGLISH";
  static const String SORT_TITLE_ENGLISH_DESC = "TITLE_ENGLISH_DESC";
  static const String SORT_TITLE_NATIVE = "TITLE_NATIVE";
  static const String SORT_TITLE_NATIVE_DESC = "TITLE_NATIVE_DESC";

  // Content Specific (Anime)
  static const String SORT_EPISODES = "EPISODES";
  static const String SORT_EPISODES_DESC = "EPISODES_DESC";

  // --- API Query Generation ---

  static Map<String, dynamic> getAniListAPIRequest(String query) {
    return {
      "url": "https://graphql.anilist.co",
      "method": "post",
      "headers": {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      "body": {
        "query": query
      }
    };
  }

  static String getAniListAPIQueryForAnimeList({
    required int count,
    required String sortType,
    String? genre,
    String? season,
    int? seasonYear,
  }) {
    String mediaArgs = "type: ANIME, sort: $sortType";

    if (genre != null && genre.isNotEmpty) {
      mediaArgs += ", genre: \"$genre\"";
    }

    if (season != null && season.isNotEmpty) {
      mediaArgs += ", season: $season";
    }

    if (seasonYear != null) {
      mediaArgs += ", seasonYear: $seasonYear";
    }

    return "query {"
        " Page(page: 1, perPage: $count) {"
        "   media($mediaArgs) {"
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
        "     status(version: 2)"
        "     nextAiringEpisode {"
        "       airingAt"
        "       timeUntilAiring"
        "       episode"
        "     }"
        "   }"
        " }"
        "}";
  }

  static String getAniListAPIQueryForAnimeAiringSchedule(
      {required int count, bool? notYetAired, int? airingAtStart, int? airingAtEnd}) {
    return
      "query Page {"
          " Page(page: 1, perPage: $count) {"
          "  airingSchedules(sort: TIME${notYetAired != null
          ? ", notYetAired: $notYetAired"
          : ""}${airingAtStart != null
          ? ", airingAt_greater: $airingAtStart"
          : ""}${airingAtEnd != null
          ? ", airingAt_lesser: $airingAtEnd"
          : ""}) {"
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
          "        large"
          "      }"
          "      bannerImage"
          "      duration"
          "    }"
          "  }"
          " }"
          "}";
  }


  static String getAnimeSeasonForMonth(int month) {
    if (month < 1 || month > 12) {
      throw ArgumentError("Month must be between 1 and 12. Received: $month");
    }

    if (month >= 1 && month <= 3) {
      return "WINTER";
    } else if (month >= 4 && month <= 6) {
      return "SPRING";
    } else if (month >= 7 && month <= 9) {
      return "SUMMER";
    } else {
      return "FALL";
    }
  }

  static String getAnimeSeason() {
    final now = DateTime.now();
    final currentMonth = now.month;
    return getAnimeSeasonForMonth(currentMonth);
  }

  static String getNextAnimeSeason() {
    final now = DateTime.now();
    int currentMonth = now.month;

    int currentSeasonIndex = (currentMonth - 1) ~/ 3;
    int nextSeasonIndex = (currentSeasonIndex + 1) % 4;
    int firstMonthOfNextSeason = (nextSeasonIndex * 3) + 1;

    return getAnimeSeasonForMonth(firstMonthOfNextSeason);
  }

  static int getAnimeSeasonYear() {
    final now = DateTime.now();
    return now.year;
  }

  static int getNextAnimeSeasonYear() {
    final now = DateTime.now();
    int currentYear = now.year;
    int currentMonth = now.month;

    int currentSeasonIndex = (currentMonth - 1) ~/ 3;

    if (currentSeasonIndex == 3) {
      return currentYear + 1;
    } else {
      return currentYear;
    }
  }
}

