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
          "type": "container",
          "width": 1000,
          "color": "surfaceBright",
          "child": {
            "type": "padding",
            "padding": {
              "left": 20,
              "right": 20,
              "top": 40,
              "bottom": 52
            },
            "child": {
              "type": "column",
              "mainAxisAlignment": "end",
              "crossAxisAlignment": "start",
              "children": [
                {
                  "type": "text",
                  "data": "Ani",
                  "style": {"fontSize": 34, "fontWeight": "w700", "height": 1.1, "letterSpacing": -0.4},
                  "children": [
                    {
                      "data": "Watch",
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
                        "color": "onSurfaceVariant@65"
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
                  "height": 52,
                  "width": 1000,
                  "child": {
                    "type": "filledButton",
                    "child": {
                      "type": "text",
                      "data": "",
                      "style": "BodyLarge",
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
      }
    ]
  }
};