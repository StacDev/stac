import 'package:flutter/material.dart';
import 'package:ani_watch/screens/home.dart';
import 'package:ani_watch/screens/schedule.dart';

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
      "type": "container",
      "height": 60,
      "padding": 0,
      "child": {
        "type": "clipRRect",
        "child": {
          "type": "stack",
          "fit": "expand",
          "children": [
            {
              "type": "backdropFilter",
              "filter": {
                "type": "blur",
                "sigmaX": 20.0,
                "sigmaY": 20.0
              },
            },
            {
              "type": "bottomNavigationBar",
              "backgroundColor": "surface@80",
              "selectedItemColor": "onSurface",
              "selectedLabelStyle": {
                "color": "onSurface",
                "fontFamily": "Figtree",
                "fontSize": 12,
                "fontWeight": "w400",
                "height": 1.5,
                "letterSpacing": 0
              },
              "unselectedLabelStyle": {
                "color": "onSurfaceVariant@65",
                "fontFamily": "Figtree",
                "fontSize": 12,
                "fontWeight": "w400",
                "height": 1.5,
                "letterSpacing": 0
              },
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
                }
              ]
            },
            {
              "type": "positioned",
              "top": 0,
              "left": 0,
              "right": 0,
              "child": {
                "type": "container",
                "height": 1,
                "color": "outline@8"
              }
            },
          ]
        }
      }
    }
  }
};

