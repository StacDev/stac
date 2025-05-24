import 'package:movie_app/home.dart';
import 'package:movie_app/schedule.dart';

final Map<String, dynamic> navigationView = {
  "type": "defaultBottomNavigationController",
  "length": 2,
  "child": {
    "type": "scaffold",
    "extendBody": true,
    "body": {
      "type": "stack",
      "children": [
        {
          "type": "bottomNavigationView",
          "children": [
            homeScreenJson,
            scheduleScreenJson,
          ]
        },
        {
          "type": "positioned",
          "left": 0,
          "right": 0,
          "bottom": 0,
          "child": {
            "type": "column",
            "mainAxisSize": "min",
            "crossAxisAlignment": "stretch",
            "children": [
              {
                "type" : "container",
                "color" : "outline",
                "height": 1
              },
              {
                "type": "sizedBox",
                "height": 58,
                "width": 10000,
                "child": {
                  "type": "frostedBox",
                  "color": "surface",
                  "alpha": 204,
                  "blur": 12.0
                }
              },
            ]
          }
        },
      ]
    },
    "bottomNavigationBar": {
      "type": "bottomNavigationBar",
      "backgroundColor": "#00000000",
      "iconSize": 22,
      "items": [
        {
          "type": "navigationBarItem",
          "label": "Home",
          "icon": {
            "type": "icon",
            "icon": "home_outlined"
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Schedule",
          "icon": {
            "type": "icon",
            "icon": "calendar_month_outlined"
          }
        },
      ]
    }
  }
};