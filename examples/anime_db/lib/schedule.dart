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
    getAppBar("Release ", "Schedule"),
    {
      "type": "container",
      "height": 1,
      "color": "outline",
    },
    {
      "type": "expanded",
      "child": {
        "type": "listView",
        "scrollDirection": "horizontal",
        "shrinkWrap": true,
        "separator": {
          "type": "container",
          "width": 1,
          "color": "outline",
        },
        "children" : getScheduleViewList()
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
      "type": "container",
      "width": 240,
      "height" : 10000,
      "padding": {
        "left": 20,
        "right": 20,
        "top": 20,
        "bottom": 0
      },
      "color": i % 2 == 0 ? "surfaceBright" : "surface",
      "child": {
        "type" : "column",
        "crossAxisAlignment" : "stretch",
        "children": [
          {
            "type": "text",
            "data": "${DateFormat(DateFormat.WEEKDAY).format(date)} / ${DateFormat(DateFormat.DAY).format(date)}${getDayOfMonthSuffix(int.tryParse(DateFormat(DateFormat.DAY).format(date)) ?? 4)}",
            "style": {"fontSize": 16, "fontWeight": "w500", "height": 1.3, "color": "onSurfaceVariant"},
            "overflow": "ellipsis",
          },
          {
            "type" : "sizedBox",
            "height": 16,
          },
          {
            "type": "expanded",
            "child":           {
              "type": "dynamicView",
              "request": AniListAPIUtils.getAniListAPIRequest(
                AniListAPIUtils.getAniListAPIQueryForAnimeAiringSchedule(
                    count: 50,
                    airingAtStart: (dateStart.millisecondsSinceEpoch/1000).round(),
                    airingAtEnd: (dateEnd.millisecondsSinceEpoch/1000).round(),
                ),
              ),
              "targetPath": "data.Page.airingSchedules",
              "template": {
                "type": "listView",
                "scrollDirection": "vertical",
                "shrinkWrap": true,
                "separator": {
                  "type": "sizedBox",
                  "height": 20
                },
                "padding": {
                  "bottom": 80,
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
                    "type" : "sizedBox",
                    "height" : 108,
                    "child" : {
                      "type" : "animeScheduleItem",
                      "coverImgUrl" : "{{media.coverImage.extraLarge}}",
                      "bannerImgUrl" : "{{media.bannerImage}}",
                      "title" : "{{media.title.romaji}}",
                      "airingTime" : "{{airingAt}}",
                      "episode" : "{{episode}}",
                      "duration" : "{{media.duration}}",
                    }
                  }
                }
              }
            }
          }
        ]
      }
    };
    scheduleViewList.add(view);
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