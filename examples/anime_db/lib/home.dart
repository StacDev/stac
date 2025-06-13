import 'package:movie_app/ani_list_api_utils.dart';
import 'package:movie_app/details_screen.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';

final Map<String, dynamic> homeScreenJson = {
  "type": "scaffold",
  "body": {
    "type": "safeArea",
    "bottom": false,
    "child": homeBodyJson,
  }
};

final double defaultCategoryViewSpacing = 24.0;
final Map<String, dynamic> homeBodyJson = {
  "type": "singleChildScrollView",
  "child": {
    "type": "column",
    "children": [
      getAppBar(isMainAppBar: true),
      {
        "type": "movieCarousel",
        "request": AniListAPIUtils.getAniListAPIRequest(
          AniListAPIUtils.getAniListAPIQueryForAnimeList(
              count : 5,
              sortType : AniListAPIUtils.SORT_TRENDING_DESC
          ),
        )
      },
      {
        "type": "sizedBox",
        "height": 20,
      },
      {
        "type": "row",
        "children": [
          {
            "type": "sizedBox",
            "width": 16,
          },
          {
            "type": "text",
            "data": "",
            "textAlign": "start",
            "style": "bodyMedium",
            "copyWithStyle" : {"fontWeight" : "w600", "letterSpacing": -0.1},
            "overflow": "ellipsis",
            "children": [
              {
                "data": "Upcoming",
                "style": {
                  "color": "onSurfaceVariant@65"
                }
              }
            ]
          }
        ]
      },
      {
        "type": "sizedBox",
        "height": 20,
      },
      {
        "type": "animeUpcoming",
        "request": AniListAPIUtils.getAniListAPIRequest(
          AniListAPIUtils.getAniListAPIQueryForAnimeAiringSchedule(count : 10, notYetAired: true),
        )
      },
      {
        "type": "sizedBox",
        "height": defaultCategoryViewSpacing,
      },
      getAnimeCategoryView(
        categoryTitle: "Popular This Season",
        season: AniListAPIUtils.getAnimeSeason(),
        seasonYear: AniListAPIUtils.getAnimeSeasonYear(),
        sortType: AniListAPIUtils.SORT_POPULARITY_DESC,
      ),
      {
        "type": "sizedBox",
        "height": defaultCategoryViewSpacing,
      },
      getAnimeCategoryView(
        categoryTitle: "Upcoming Next Season",
        season: AniListAPIUtils.getNextAnimeSeason(),
        seasonYear: AniListAPIUtils.getNextAnimeSeasonYear(),
        sortType: AniListAPIUtils.SORT_POPULARITY_DESC,
      ),
      {
        "type": "sizedBox",
        "height": defaultCategoryViewSpacing,
      },
      getAnimeCategoryView(
        categoryTitle: "All-Time Popular",
        sortType: AniListAPIUtils.SORT_POPULARITY_DESC,
      ),
      {
        "type": "sizedBox",
        "height": defaultCategoryViewSpacing,
      },
      getAnimeCategoryView(
        categoryTitle: "Action",
        genre: "Action",
        sortType: AniListAPIUtils.SORT_TRENDING_DESC,
      ),
      // {
      //   "type": "sizedBox",
      //   "height": defaultCategoryViewSpacing,
      // },
      // getAnimeCategoryView(
      //   categoryTitle: "Slice of Life",
      //   genre: "Slice of Life",
      //   sortType: AniListAPIUtils.SORT_TRENDING_DESC,
      // ),
      // {
      //   "type": "sizedBox",
      //   "height": defaultCategoryViewSpacing,
      // },
      // getAnimeCategoryView(
      //   categoryTitle: "Fantasy",
      //   genre: "Fantasy",
      //   sortType: AniListAPIUtils.SORT_TRENDING_DESC,
      // ),
      // {
      //   "type": "sizedBox",
      //   "height": defaultCategoryViewSpacing,
      // },
      // getAnimeCategoryView(
      //   categoryTitle: "Sci-Fi",
      //   genre: "Sci-Fi",
      //   sortType: AniListAPIUtils.SORT_TRENDING_DESC,
      // ),
      {
        "type": "sizedBox",
        "height": 80,
      },
    ]
  }
};



Map<String, dynamic> getAnimeCategoryView({
  required String categoryTitle,
  String? genre,
  String? season,
  int? seasonYear,
  String sortType = AniListAPIUtils.SORT_TRENDING_DESC,
}) {
  return {
    "type": "column",
    "mainAxisSize": "min",
    "crossAxisAlignment": "stretch",
    "children": [
      {
        "type": "row",
        "children": [
          {
            "type": "sizedBox",
            "width": 16,
          },
          {
            "type": "text",
            "data": "",
            "textAlign": "start",
            "style": "bodyMedium",
            "copyWithStyle" : {"fontWeight" : "w600", "letterSpacing": -0.1},
            "overflow": "ellipsis",
            "children": [
              {
                "data": categoryTitle,
                "style": {"color": "onSurfaceVariant@65"}
              }
            ]
          }
        ]
      },
      {
        "type": "sizedBox",
        "height": 10,
      },
      {
        "type": "sizedBox",
        "height": 245,
        "child": {
          "type": "dynamicView",
          "request": AniListAPIUtils.getAniListAPIRequest(
            AniListAPIUtils.getAniListAPIQueryForAnimeList(
              count: 10,
              sortType: sortType,
              genre: genre,
              season: season,
              seasonYear: seasonYear,
            ),
          ),
          "targetPath": "data.Page.media",
          "template": {
            "type": "listView",
            "scrollDirection": "horizontal",
            "shrinkWrap": true,
            "separator": {"type": "sizedBox", "width": 12},
            "padding": {"left": 16, "right": 16},
            "itemTemplate": {
              "type": "gestureDetector",
              "onTap": {
                "actionType": "setValue",
                "values": [
                  {"key": "anime_id", "value": "{{id}}"}
                ],
                "action": {
                  "actionType": "navigate",
                  "routeName": "details",
                  "navigationStyle": "pushNamed"
                }
              },
              "child": {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "column",
                  "mainAxisSize": "min",
                  "crossAxisAlignment": "stretch",
                  "children": [
                    {
                      "type": "clipRRect",
                      "borderRadius": 6,
                      "child": {
                        "type": "image",
                        "imageType": "network",
                        "src": "{{coverImage.extraLarge}}",
                        "width": 132,
                        "height": 196,
                        "fit": "cover"
                      }
                    },
                    {"type": "sizedBox", "height": 6},
                    {
                      "type": "text",
                      "data": "{{title.romaji}}",
                      "style": "bodyMedium",
                      "copyWithStyle" : {"fontWeight" : "w600", "letterSpacing": -0.1},
                      "overflow": "ellipsis",
                    },
                    {
                      "type": "conditional",
                      "condition": "{{format}} == MOVIE",
                      "ifTrue": getYearEpsText("{{seasonYear}} · Movie"),
                      "ifFalse": {
                        "type" : "conditional",
                        "condition" : "{{episodes}} == null",
                        "ifTrue": getYearEpsText("{{seasonYear}}"),
                        "ifFalse" : getYearEpsText("{{seasonYear}} · {{episodes}} Eps"),
                      },
                    }
                  ],
                }
              }
            }
          }
        }
      }
    ]
  };
}

Map<String, dynamic> getYearEpsText(String data) {
  return {
    "type": "text",
    "data": "",
    "style": "bodySmall",
    "overflow": "ellipsis",
    "children": [
      {
        "data": data,
        "style": {"color": "onSurfaceVariant@65"}
      }
    ]
  };
}


Map<String, dynamic> getAppBar({
  String? title1,
  String? title2,
  bool isMainAppBar = false,
}) {
  Map<String, dynamic> titleWidget;

  if (isMainAppBar) {
    titleWidget = {
      "type": "text",
      "data": "Ani",
      "style": {"fontSize": 24, "fontWeight": "w700", "height": 1.3, "letterSpacing": -0.4},
      "children": [
        {"data": "Watch", "style": {"color": "primary"}}
      ]
    };
  } else {
    titleWidget = {
      "type": "text",
      "data": title1 ?? "Title",
      "style": "titleSmall",
      "copyWithStyle" : {"fontWeight" : "w600", "letterSpacing": -0.1},
      "children": [
        if (title2 != null && title2.isNotEmpty)
          {"data": title2, "style": {"color": "primary"}}
      ]
    };
  }

  return {
    "type": "container",
    "height": 56,
    "width": 1000,
    "child": {
      "type": "padding",
      "padding": {
        "left": 16,
        "right": 16,
      },
      "child": {
        "type": "row",
        "children": [
          titleWidget,
          {"type": "expanded"},
          {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/bell-simple.svg",
            "color": "onSurfaceVariant@65",
            "height": 22,
            "width": 22
          },
          {"type": "sizedBox", "width": 14},
          {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/user.svg",
            "color": "onSurfaceVariant@65",
            "height": 22,
            "width": 22
          },
        ]
      }
    }
  };
}