import 'dart:developer';

import 'package:intl/intl.dart';
import 'package:movie_app/ani_list_api_utils.dart';
import 'package:movie_app/home.dart';

final Map<String, dynamic> scheduleScreenJson = {
  "type": "scaffold",
  "body": {
    "type": "safeArea",
    "bottom": false,
    "child": scheduleBodyJson,
  }
};

final Map<String, dynamic> scheduleBodyJson = {
  "type": "column",
  "crossAxisAlignment" : "stretch",
  "children": [
    getAppBar(title1: "Release ", title2: "Schedule"),
    {
      "type": "container",
      "height": 1,
      "color": "outline@08",
    },
    {
      "type": "expanded",
      "child": {
        "type": "singleChildScrollView",
        "scrollDirection": "vertical",
        "child" : {
          "type": "column",
          "crossAxisAlignment" : "stretch",
          "children": getScheduleViewList()
        }
      }
    }
  ]
};

List<Map<String, dynamic>> getScheduleViewList() {
  List<Map<String, dynamic>> scheduleViewList = [];
  for(int i = 0; i < 7; ++i) {
    var date = DateTime.now();
    date = date.add(Duration(days: i));
    var dateStart = date.subtract(Duration(hours: date.hour, minutes: date.minute, seconds: date.second));
    var dateEnd = dateStart.add(Duration(hours: 23, minutes: 59, seconds: 59));
    log(AniListAPIUtils.getAniListAPIQueryForAnimeAiringSchedule(
      count: 50,
      airingAtStart: (dateStart.millisecondsSinceEpoch/1000).round(),
      airingAtEnd: (dateEnd.millisecondsSinceEpoch/1000).round(),
    ));
    Map<String, dynamic> view = {
      "type" : "row",
      "crossAxisAlignment" : "start",
      "children" : [
        {
          "type": "sizedBox",
          "width": 16,
        },
        {
          "type" : "container",
          "padding": {"top": 16},
          "width" : 29,
          "child" : {
            "type": "column",
            "mainAxisSize": "min",
            "crossAxisAlignment": "center",
            "children" : [
              {
                "type": "text",
                "data": DateFormat(DateFormat.WEEKDAY).format(date).substring(0, 3).toUpperCase(),
                "style": {"fontFamily": "Figtree", "fontSize": 12, "fontWeight": "w500", "height": 1.3, "letterSpacing": 0}
              },
              {
                "type": "text",
                "data": DateFormat(DateFormat.DAY).format(date),
                "style": "titleLarge"
              }
            ]
          },
        },
        {
          "type": "sizedBox",
          "width": 16,
        },
        {
          "type": "expanded",
          "child": {
            "type": "container",
            "padding": {
              "left": 16,
              "right": 16,
              "top": 16,
              "bottom": 8
            },
            "color": "surfaceBright",
            "child": {
              "type": "dynamicView",
              "request": AniListAPIUtils.getAniListAPIRequest(
                AniListAPIUtils.getAniListAPIQueryForAnimeAiringSchedule(
                  count: 50,
                  airingAtStart: (dateStart.millisecondsSinceEpoch / 1000).round(),
                  airingAtEnd: (dateEnd.millisecondsSinceEpoch / 1000).round(),),
              ),
              "targetPath": "data.Page.airingSchedules",
              "template": {
                "type": "column",
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
                    "height": 62,
                    "child": {
                      "type": "animeScheduleItem",
                      "coverImgUrl": "{{media.coverImage.large}}",
                      "bannerImgUrl": "{{media.bannerImage}}",
                      "title": "{{media.title.romaji}}",
                      "airingTime": "{{airingAt}}",
                      "episode": "{{episode}}",
                      "duration": "{{media.duration}}",
                    }
                  }
                }
              }
            }
          }
        }
      ]
    };
    Map<String, dynamic> separator = {
      "type": "container",
      "color": "outline@8",
      "height": 1
    };
    scheduleViewList.add(view);
    if (i != 6) {
      scheduleViewList.add(separator);
    }
  }
  return scheduleViewList;
}

String getDayOfMonthSuffix(int dayNum) {
  if(!(dayNum >= 1 && dayNum <= 31)) {
    throw Exception('Invalid day of month');
  }

  if(dayNum >= 11 && dayNum <= 13) {
    return 'th';
  }

  switch(dayNum % 10) {
    case 1: return 'st';
    case 2: return 'nd';
    case 3: return 'rd';
    default: return 'th';
  }
}