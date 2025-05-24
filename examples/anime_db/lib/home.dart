import 'package:movie_app/ani_list_api_utils.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';

final Map<String, dynamic> homeScreenJson = {
  "type": "scaffold",
  "body": {
    "type": "safeArea",
    "bottom": false,
    "child": homeBodyJson,
  }
};

final Map<String, dynamic> homeBodyJson = {
  "type": "singleChildScrollView",
  "child": {
    "type": "column",
    "children": [
      getAppBar("Anime ", "Db"),
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
        "height": 24,
      },
      {
        "type": "row",
        "children": [
          {
            "type": "sizedBox",
            "width": 20,
          },
          {
            "type": "text",
            "data": "",
            "textAlign": "start",
            "style": "labelMedium",
            "overflow": "ellipsis",
            "children": [
              {
                "data": "Upcoming",
                "style": {
                  "color": "onSurfaceVariant"
                }
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
        "type": "animeUpcoming",
        "request": AniListAPIUtils.getAniListAPIRequest(
          AniListAPIUtils.getAniListAPIQueryForAnimeAiringSchedule(count : 10, notYetAired: true),
        )
      },
      {
        "type": "sizedBox",
        "height": 24,
      },
      getAnimeCategoryView("action"),
      {
        "type": "sizedBox",
        "height": 24,
      },
      getAnimeCategoryView("slice of life"),
      {
        "type": "sizedBox",
        "height": 24,
      },
      getAnimeCategoryView("fantasy"),
      {
        "type": "sizedBox",
        "height": 24,
      },
      getAnimeCategoryView("Sci-Fi")
    ]
  }
};

Map<String, dynamic> getAnimeCategoryView(String genre) {
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
            "width": 20,
          },
          {
            "type": "text",
            "data": "",
            "textAlign": "start",
            "style": "labelMedium",
            "overflow": "ellipsis",
            "children": [
              {
                "data": genre.toCapitalized,
                "style": {
                  "color": "onSurfaceVariant"
                }
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
        "height": 232,
        "child": {
          "type": "dynamicView",
          "request": AniListAPIUtils.getAniListAPIRequest(
            AniListAPIUtils.getAniListAPIQueryForAnimeList(
                count: 10,
                sortType: AniListAPIUtils.SORT_TRENDING_DESC,
                genre: genre
            ),
          ),
          "targetPath": "data.Page.media",
          "template": {
            "type": "listView",
            "scrollDirection": "horizontal",
            "shrinkWrap": true,
            "separator": {
              "type": "sizedBox",
              "width": 12
            },
            "padding": {
              "left": 20,
              "right": 20
            },
            "itemTemplate": {
              "type": "gestureDetector",
              "onTap": {
                "actionType": "setValue",
                "values": [
                  {
                    "key": "anime_id",
                    "value": "{{id}}"
                  }
                ],
                "action": {
                  "actionType": "none",
                  "assetPath": "assets/jsons/screens/detail_screen.json"
                }
              },
              "child": {
                "type": "sizedBox",
                "width": 132,
                "child": {
                  "type" : "column",
                  "mainAxisSize" : "min",
                  "crossAxisAlignment": "stretch",
                  "children" : [
                    {
                      "type": "clipRRect",
                      "borderRadius": 6,
                      "child": {
                        "type": "image",
                        "imageType": "network",
                        "src": "{{coverImage.extraLarge}}",
                        "width": 132,
                        "height": 180,
                        "fit": "cover"
                      }
                    },
                    {
                      "type" : "sizedBox",
                      "height" : 8
                    },
                    {
                      "type": "text",
                      "data": "{{title.romaji}}",
                      "style": "titleSmall",
                      "overflow": "ellipsis",
                    },
                    {
                      "type" : "sizedBox",
                      "height" : 2
                    },
                    {
                      "type": "text",
                      "data": "",
                      "style": "bodySmall",
                      "overflow": "ellipsis",
                      "children": [
                        {
                          "data": "{{seasonYear}} · {{episodes}} Eps",
                          "style": {
                            "color": "onSurfaceVariant"
                          }
                        }
                      ]
                    },
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

Map<String, dynamic> getAppBar(String title1, String title2) {
  Map<String, dynamic> homeAppBar = {
    "type" : "container",
    "height" : 56,
    "width": 1000,
    "child" : {
      "type" : "padding",
      "padding": {
        "left": 20,
        "right": 17,
      },
      "child" : {
        "type" : "row",
        "children" : [
          {
            "type": "text",
            "data": title1,
            "style": "titleLarge",
            "children": [
              {
                "data": title2,
                "style": {
                  "color": "primary"
                }
              }
            ]
          },
          {
            "type" : "expanded"
          },
          {
            "type": "iconButton",
            "icon": {
              "type": "icon",
              "icon": "notifications_none",
              "color": "onSurfaceVariant"
            },
            "style": {
              "fixedSize": {
                "width": 31,
                "height": 31
              }
            },
            "onPressed": {
              "actionType": "none",
            }
          },
          {
            "type": "iconButton",
            "icon": {
              "type": "icon",
              "icon": "person",
              "color": "onSurfaceVariant"
            },
            "style": {
              "fixedSize": {
                "width": 31,
                "height": 31
              }
            },
            "onPressed": {
              "actionType": "none",
            }
          }
        ]
      }
    }
  };
  return homeAppBar;
}