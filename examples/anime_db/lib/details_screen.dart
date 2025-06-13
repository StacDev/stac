
import 'package:movie_app/ani_list_api_utils.dart';
import 'package:stac/stac.dart';

Map<String, dynamic> getAnimeDetailsScreen() {
  return {
    "type": "scaffold",
    "body": {
      "type": "safeArea",
      "top": false,
      "child": {
        "type": "dynamicView",
        "request": AniListAPIUtils.getAniListAPIRequest(
          AniListAPIUtils.getQueryForAnimeById(
            int.parse(StacRegistry.instance.getValue("anime_id")),
          ),
        ),
        "targetPath": "data.Media",
        "template": {
          "type": "singleChildScrollView",
          "child": {
            "type": "column",
            "children": [
              topPanel,
              descriptionSection,
              getDetailsTabs(),
            ],
          },
        },
      }
    }
  };
}

final Map<String, dynamic> topPanel = {
  "type": "stack",
  "children": [
    {
      "type": "image",
      "src": "{{coverImage.extraLarge}}",
      "width": 10000,
      "height": 400,
      "fit": "cover",
    },
    {
      "type": "positioned",
      "left": 0,
      "right": 0,
      "bottom": 0,
      "child": {
        "type": "container",
        "height": 100,
        "decoration": {
          "gradient": {
            "colors": ["surface@0", "surface@80", "surface"],
            "begin": "topCenter",
            "end": "bottomCenter",
            "stops": [0.0, 0.5, 1.0],
          },
        },
      },
    },
    {
      "type": "positioned",
      "left": 16,
      "right": 16,
      "bottom": 0,
      "child": {
        "type": "text",
        "data": "{{title.romaji}}",
        "style": "titleMedium",
        "copyWithStyle": {"fontWeight": "w600", "letterSpacing": -0.1},
        "textAlign": "start",
        "maxLines": 3,
      },
    },
    {
      "type": "safeArea",
      "child": {
        "type": "padding",
        "padding": {"left": 16, "top": 8},
        "child": {
          "type": "gestureDetector",
          "onTap": {"actionType": "navigate", "navigationStyle": "pop"},
          "child": {
            "type": "container",
            "height": 36,
            "width": 36,
            "decoration": {"borderRadius": 18, "color": "surface@50"},
            "child": {
              "type": "center",
              "child": {
                "type": "image",
                "imageType": "asset",
                "src": "assets/images/caret-left.svg",
                "color": "onSurface",
                "height": 20,
                "width": 20,
              },
            },
          },
        },
      },
    },
  ],
};

final Map<String, dynamic> descriptionSection = {
  "type": "padding",
  "padding": {"left": 16, "right": 16},
  "child": {
    "type": "column",
    "crossAxisAlignment": "stretch",
    "mainAxisSize": "min",
    "children": [
      {"type": "sizedBox", "height": 4},
      {
        "type": "conditional",
        "condition": "{{format}} == MOVIE",
        "ifTrue": {
          "type": "text",
          "textAlign": "start",
          "data": "{{format}}",
          "style": "bodyMedium",
          "copyWithStyle": {"color": "onSurfaceVariant@65"},
        },
        "ifFalse": {
          "type": "conditional",
          "condition": "{{episodes}} == null",
          "ifTrue": {
            "type": "text",
            "textAlign": "start",
            "data": "{{format}}",
            "style": "bodyMedium",
            "copyWithStyle": {"color": "onSurfaceVariant@65"},
          },
          "ifFalse": {
            "type": "text",
            "textAlign": "start",
            "data": "{{format}} · {{episodes}} Episodes",
            "style": "bodyMedium",
            "copyWithStyle": {"color": "onSurfaceVariant@65"},
          },
        },
      },
      {"type": "sizedBox", "height": 8},
      {
        "type": "row",
        "children": [
          {
            "type": "conditional",
            "condition": "{{averageScore}} == null",
            "ifTrue": getPill("assets/images/star.svg", "pending"),
            "ifFalse": getPill("assets/images/star.svg", "{{averageScore}}%"),
          },
          {"type": "sizedBox", "width": 6},
          {
            "type": "conditional",
            "condition": "{{season}} == FALL",
            "ifTrue": getPill(getSeasonAssetPath("FALL"), "Fall {{seasonYear}}",),
            "ifFalse": {
              "type": "conditional",
              "condition": "{{season}} == WINTER",
              "ifTrue": getPill(getSeasonAssetPath("WINTER"), "Winter {{seasonYear}}",),
              "ifFalse": {
                "type": "conditional",
                "condition": "{{season}} == SUMMER",
                "ifTrue": getPill(getSeasonAssetPath("SUMMER"), "Summer {{seasonYear}}",),
                "ifFalse": {
                  "type": "conditional",
                  "condition": "{{season}} == SPRING",
                  "ifTrue": getPill(getSeasonAssetPath("SPRING"), "Spring {{seasonYear}}",
                  ),
                  "ifFalse": getPill("assets/images/calendar-dots.svg", "{{seasonYear}}",),
                },
              },
            },
          },
        ],
      },
      {"type": "sizedBox", "height": 20},
      {
        "type": "container",
        "height": 1,
        "decoration": {"color": "outline@8"},
      },
      {"type": "sizedBox", "height": 16},
      {
        "type": "row",
        "children": [
          {
            "type": "filledButton",
            "style": {
              "minimumSize": {"width": 120, "height": 40},
              "textStyle": {"color": "onPrimary", "fontSize": 15, "fontWeight": "w600", "height": 1.5, "letterSpacing": -0.1},
              "padding": {"left": 20, "right": 20, "top": 8, "bottom": 8},
              "shape": {"borderRadius": 6},
              "backgroundColor" : "primary"
            },
            "child": {
              "type": "row",
              "mainAxisAlignment": "center",
              "children": [
                {
                  "type": "image",
                  "imageType": "asset",
                  "src": "assets/images/play-circle-fill.svg",
                  "color": "onPrimary",
                  "height": 20,
                  "width": 20,
                },
                {"type": "sizedBox", "width": 8},
                {"type": "text", "data": "Watch Now"}
              ]
            },
            "onPressed": {
              "actionType": "none",
              "routeName": "details",
              "navigationStyle": "pushNamed"
            }
          },
          {"type": "sizedBox", "width": 12},
          {
            "type": "expanded",
            "child": {
              "type": "outlinedButton",
              "style": {
                "minimumSize": {"width": 120, "height": 40},
                "textStyle": {"color": "primary", "fontSize": 15, "fontWeight": "w600", "height": 1.5, "letterSpacing": -0.1},
                "padding": {"left": 20, "right": 20, "top": 8, "bottom": 8},
                "shape": {"borderRadius": 6},
                "side": {"color": "primary", "width": 1.0},
              },
              "child": {
                "type": "row",
                "mainAxisAlignment": "center",
                "children": [
                  {
                    "type": "image",
                    "imageType": "asset",
                    "src": "assets/images/list-heart.svg",
                    "color": "primary",
                    "height": 20,
                    "width": 20,
                  },
                  {"type": "sizedBox", "width": 6},
                  {"type": "text", "data": "Add to Watchlist"}
                ]
              },
              "onPressed": {
                "actionType": "none",
                "routeName": "details",
                "navigationStyle": "pushNamed"
              }
            }
          }
        ]
      },
      {"type": "sizedBox", "height": 16},
      {
        "type": "container",
        "height": 1,
        "decoration": {"color": "outline@8"},
      },
      {"type": "sizedBox", "height": 20},
      {
        "type": "aniListDescriptionText",
        "data": "{{description}}",
      },
      {"type": "sizedBox", "height": 16},
    ],
  },
};

Map<String, dynamic> getDetailsTabs() {
  return {
    "type": "defaultTabController",
    "length": 2,
    "child": {
      "type": "column",
      "children": [
        {
          "type": "container",
          "height": 48,
          "child": {
            "type": "tabBar",
            "labelColor": "onSurface",
            "unselectedLabelColor": "onSurfaceVariant@65",
            "labelStyle": {"fontFamily": "Figtree", "fontSize": 15, "fontWeight": "w600", "height": 1.5, "letterSpacing": -0.1},
            "unselectedLabelStyle": "bodyMedium",
            "dividerColor": "outline@8",
            "labelPadding": {
              "left": 16,
              "right": 16,
            },
            "isScrollable": true,
            "tabAlignment": "start",
            "tabs": [
              {
                "type": "tab",
                "text": "About"
              },
              {
                "type": "tab",
                "text": "Episodes"
              },
            ]
          }
        },
        {
          "type": "container",
          "height": 572,
          "child": {
            "type": "tabBarView",
            "children": [
              {
                "type": "container",

                "padding": {
                  "top": 20,
                  "bottom": 20
                },
                "color": "surfaceBright",
                "child": {
                  "type": "column",
                  "children": [
                    getAnimeRelationsView(),
                    {"type": "sizedBox", "height": 24,},
                    animeInfoView
                  ]
                }
              },
              {
                "type": "container",
                "padding": {
                  "top": 20,
                  "bottom": 20
                },
                "color": "surfaceBright",
                "child": getAnimeEpisodesView()
              },
            ]
          }
        },
      ]
    }
  };
}

Map<String, dynamic> getAnimeRelationsView() {
  return {
    "type": "padding",
    "padding": {
      "left": 16,
      "right": 16,
    },
    "child": {
      "type": "column",
      "mainAxisSize": "min",
      "crossAxisAlignment": "stretch",
      "children": [
        {
          "type": "text",
          "data": "Relations",
          "style": "bodyMedium",
          "copyWithStyle": {
            "fontWeight": "w600",
            "letterSpacing": -0.1,
          },
        },
        {"type": "sizedBox", "height": 8,},
        {
          "type": "container",
          "height": 1,
          "color": "outline@8",
        },
        {"type": "sizedBox", "height": 8,},
        {
          "type": "container",
          "height": 242,
          "child": {
            "type": "dynamicView",
            "request": AniListAPIUtils.getAniListAPIRequest(
              AniListAPIUtils.getQueryForAnimeByIdRelationsOnly(
                int.parse(StacRegistry.instance.getValue("anime_id")),
              ),
            ),
            "targetPath": "data.Media.relations.edges",
            "template": {
              "type": "listView",
              "padding": 0,
              "isPrimary": false,
              "scrollDirection": "vertical",
              "shrinkWrap": true,
              "separator": {"type": "sizedBox", "height": 8},
              "itemTemplate": {
                "type": "container",
                "height": 74,
                "decoration": {
                  "borderRadius": 6,
                  "color": "surface",
                  "border": {
                    "color": "outline@8",
                    "width": 1
                  },
                },
                "child": {
                  "type": "row",
                  "children": [
                    {
                      "type": "clipRRect",
                      "borderRadius": {
                        "topLeft": 6,
                        "bottomLeft": 6
                      },
                      "child": {
                        "type": "image",
                        "imageType": "network",
                        "src": "{{node.coverImage.large}}",
                        "width": 56,
                        "fit": "cover"
                      }
                    },
                    {
                      "type": "expanded",
                      "child": {
                        "type": "padding",
                        "padding": {
                          "left": 12,
                          "right": 16,
                        },
                        "child": {
                          "type": "column",
                          "crossAxisAlignment": "stretch",
                          "mainAxisSize": "min",
                          "children": [
                            {
                              "type": "text",
                              "data": "{{relationType}}",
                              "style": "labelSmall",
                              "copyWithStyle": {"color": "primary",}
                            },
                            {
                              "type": "text",
                              "data": "{{node.title.romaji}}",
                              "maxlines": 1,
                              "overflow": "ellipsis",
                              "style": "bodyMedium",
                              "copyWithStyle": {
                                "fontWeight": "w600",
                                "letterSpacing": -0.1,
                              }
                            },
                            {
                              "type": "text",
                              "data": "{{node.format}} · {{node.status}}",
                              "style": "bodySmall",
                              "copyWithStyle": {"color": "onSurfaceVariant@65",}
                            }
                          ]
                        }
                      }
                    }
                  ]
                }
              },
            }
          },
        },
      ]
    }
  };
}

Map<String, dynamic> getAnimeEpisodesView() {
  return {
    "type": "dynamicView",
    "request": AniListAPIUtils.getAniListAPIRequest(
      AniListAPIUtils.getQueryForAnimeByIdEpisodesOnly(
        int.parse(StacRegistry.instance.getValue("anime_id")),
      ),
    ),
    "targetPath": "data.Media.streamingEpisodes",
    "template": {
      "type": "listView",
      "padding": {
        "left": 16,
        "right": 16,
        "top": 0,
        "bottom": 0
      },
      "isPrimary": false,
      "reverse": true,
      "scrollDirection": "vertical",
      "shrinkWrap": true,
      "separator": {"type": "sizedBox", "height": 10},
      "itemTemplate": {
        "type": "container",
        "height": 64,
        "decoration": {
          "borderRadius": 6,
          "color": "surface",
          "border": {
            "color": "outline@8",
            "width": 1
          },
        },
        "child": {
          "type": "row",
          "children": [
            {
              "type": "clipRRect",
              "borderRadius": {
                "topLeft": 6,
                "bottomLeft": 6
              },
              "child": {
                "type": "image",
                "imageType": "network",
                "src": "{{thumbnail}}",
                "width": 114,
                "fit": "cover"
              }
            },
            {
              "type": "expanded",
              "child": {
                "type": "padding",
                "padding": {
                  "left": 12,
                  "right": 16,
                },
                "child": {
                  "type": "column",
                  "crossAxisAlignment": "stretch",
                  "mainAxisSize": "min",
                  "children": [
                    {
                      "type": "text",
                      "data": "{{episodeTitle}}",
                      "maxlines": 2,
                      "overflow": "ellipsis",
                      "style": "bodyMedium",
                      "copyWithStyle": {
                        "fontWeight": "w600",
                        "letterSpacing": -0.1,
                      }
                    },
                  ]
                }
              }
            }
          ]
        }
      },
    }
  };
}

final Map<String, dynamic> animeInfoView = {
  "type": "padding",
  "padding": {
    "left": 16,
    "right": 16,
  },
  "child": {
    "type": "column",
    "crossAxisAlignment": "stretch",
    "mainAxisSize": "min",
    "children": [
      {
        "type": "text",
        "data": "Anime Info",
        "style": "bodyMedium",
        "copyWithStyle": {
          "fontWeight": "w600",
          "letterSpacing": -0.1,
        },
      },
      {"type": "sizedBox", "height": 8,},
      {
        "type": "container",
        "height": 1,
        "color": "outline@8",
      },
      {"type": "sizedBox", "height": 8,},
      {
        "type": "column",
        "spacing": 8,
        "children": [
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "Start Date",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "text",
                  "data": "{{startDate.day}}/{{startDate.month}}/{{startDate.year}}",
                  "style": "bodyMedium"
                }
              }
            ]
          },
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "End Date",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "conditional",
                  "condition": "{{endDate.day}} == null",
                  "ifTrue": {
                    "type": "text",
                    "data": "-",
                    "style": "bodyMedium"
                  },
                  "ifFalse": {
                    "type": "text",
                    "data": "{{endDate.day}}/{{endDate.month}}/{{endDate.year}}",
                    "style": "bodyMedium"
                  }
                }
              }
            ]
          },
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "Format",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "text",
                  "data": "{{format}}",
                  "style": "bodyMedium"
                }
              }
            ]
          },
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "Episode Duration",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "conditional",
                  "condition": "{{duration}} == null",
                  "ifTrue": {
                    "type": "text",
                    "data": "-",
                    "style": "bodyMedium"
                  },
                  "ifFalse": {
                    "type": "text",
                    "data": "{{duration}} mins",
                    "style": "bodyMedium"
                  }
                }
              }
            ]
          },
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "Studio",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "text",
                  "data": "{{studios.edges[0].node.name}}",
                  "style": "bodyMedium"
                }
              }
            ]
          },
          {
            "type": "row",
            "children": [
              {
                "type": "sizedBox",
                "width": 140,
                "child": {
                  "type": "text",
                  "data": "Source",
                  "style": "bodyMedium",
                  "copyWithStyle": {"color": "onSurfaceVariant@65"}
                }
              },
              {
                "type": "sizedBox",
                "width": 10
              },
              {
                "type": "expanded",
                "child": {
                  "type": "text",
                  "data": "{{source}}",
                  "style": "bodyMedium"
                }
              }
            ]
          }
        ]
      },
      {"type": "sizedBox", "height": 8,},
    ]
  }
};

Map<String, dynamic> getPill(String imgPath, String data) {
  return {
    "type": "container",
    "height": 21,
    "decoration": {"borderRadius": 4, "color": "primary"},
    "child": {
      "type": "row",
      "mainAxisSize": "min",
      "children": [
        {"type": "sizedBox", "width": 4},
        {
          "type": "image",
          "imageType": "asset",
          "src": imgPath,
          "color": "onPrimary",
          "height": 12,
          "width": 12,
        },
        {"type": "sizedBox", "width": 4},
        {
          "type": "text",
          "data": data,
          "style": "bodySmall",
          "copyWithStyle": {
            "color": "onPrimary",
            "fontWeight": "w600",
            "letterSpacing": -0.1,
          },
        },
        {"type": "sizedBox", "width": 4},
      ],
    },
  };
}

String getSeasonAssetPath(String? season) {
  const String basePath = "assets/images/";
  const String defaultSeasonAsset = "${basePath}snowflake-bold.svg";

  if (season == null || season.isEmpty) {
    return defaultSeasonAsset;
  }

  String normalizedSeason = season.toUpperCase();

  switch (normalizedSeason) {
    case "WINTER":
      return "${basePath}snowflake-bold.svg";
    case "SPRING":
      return "${basePath}flower-tulip-bold.svg";
    case "SUMMER":
      return "${basePath}sun-bold.svg";
    case "FALL":
      return "${basePath}leaf-bold.svg";
    default:
      return defaultSeasonAsset;
  }
}
