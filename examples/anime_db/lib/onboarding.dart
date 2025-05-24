import 'package:movie_app/navigation_view.dart';

final Map<String, dynamic> onboardingScreenJson = {
  "type": "scaffold",
  "body": {
    "type": "stack",
    "children": [
      {
        "type": "image",
        "imageType": "asset",
        "src": "assets/images/kny.png",
        "width": 10000,
        "height": 10000,
        "fit": "cover"
      },
      {
        "type": "positioned",
        "left": 0,
        "right": 0,
        "bottom": 0,
        "child": {
          "type": "stack",
          "children": [
            {
              "type": "sizedBox",
              "height": 302,
              "child": {
                "type": "frostedBox",
                "color": "surface",
                "alpha": 204,
                "blur": 12.0
              }
            },
            {
              "type": "container",
              "width": 1000,
              "child": {
                "type": "padding",
                "padding": {
                  "left": 20,
                  "right": 20,
                  "top": 40,
                  "bottom": 56
                },
                "child": {
                  "type": "column",
                  "mainAxisAlignment": "end",
                  "crossAxisAlignment": "start",
                  "children": [
                    {
                      "type": "text",
                      "data": "Anime ",
                      "style": "displaySmall",
                      "children": [
                        {
                          "data": "Db",
                          "style": {
                            "color": "primary"
                          }
                        }
                      ]
                    },
                    {
                      "type": "sizedBox",
                      "height": 10
                    },
                    {
                      "type": "text",
                      "data": "",
                      "style": "bodyLarge",
                      "children": [
                        {
                          "data": "Watch, enjoy and track all of your anime series, movies and OVA’s",
                          "style": {
                            "color": "onSurfaceVariant"
                          }
                        }
                      ]
                    },
                    {
                      "type": "sizedBox",
                      "height": 56
                    },
                    {
                      "type": "sizedBox",
                      "height": 48,
                      "width": 1000,
                      "child": {
                        "type": "filledButton",
                        "child": {
                          "type": "text",
                          "data": "",
                          "style": "labelLarge",
                          "children": [
                            {
                              "data": "Get Started",
                              "style": {
                                "color": "onPrimary"
                              }
                            }
                          ]
                        },
                        "onPressed": {
                          "actionType": "navigate",
                          "widgetJson": navigationView
                        }
                      }
                    }
                  ]
                }
              }
            }
          ]
        }
      }
    ]
  }
};