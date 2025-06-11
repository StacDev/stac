import 'package:flutter/material.dart';
import 'package:movie_app/home.dart';
import 'package:movie_app/schedule.dart';

final Map<String, dynamic> navigationView = {
  "type": "defaultBottomNavigationController",
  "length": 2,
  "child": {
    "type": "scaffold",
    "extendBody": true,
    "body": {
      "type": "bottomNavigationView",
      "children": [
        homeScreenJson,
        scheduleScreenJson
      ]
    },
    "bottomNavigationBar": {
      "type": "bottomNavigationBar",
      "backgroundColor": "surface@95",
      "selectedItemColor": "onSurface",
      "selectedLabelStyle": "labelSmall",
      "unselectedLabelStyle": "labelSmall",
      "iconSize": 22,
      "items": [
        {
          "type": "navigationBarItem",
          "label": "Home",
          "activeIcon": {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/house-simple.svg",
            "color": "onSurface",
            "height": 22,
            "width": 22
          },
          "icon": {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/house-simple.svg",
            "color": "onSurfaceVariant@65",
            "height": 22,
            "width": 22
          }
        },
        {
          "type": "navigationBarItem",
          "label": "Schedule",
          "activeIcon": {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/calendar-dots.svg",
            "color": "onSurface",
            "height": 22,
            "width": 22
          },
          "icon": {
            "type": "image",
            "imageType": "asset",
            "src": "assets/images/calendar-dots.svg",
            "color": "onSurfaceVariant@65",
            "height": 22,
            "width": 22
          }
        },
      ]
    }
  }
};

