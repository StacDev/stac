import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/onboarding.dart';
import 'package:movie_app/widgets/animeScheduleItem/anime_schedule_item_parser.dart';
import 'package:movie_app/widgets/anime_upcoming/anime_upcoming_parser.dart';
import 'package:movie_app/widgets/frosted_box/frosted_box_parser.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';
import 'package:stac/stac.dart';

void main() async {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
    ),
  );

  await Stac.initialize(dio: dio, parsers: [MovieCarouselParser(), AnimeUpcomingParser(), FrostedBoxParser(), AnimeScheduleItemParser()]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    StacTheme theme;

    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    // SystemChrome.setSystemUIOverlayStyle(
    //   (isDarkMode ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light).copyWith(
    //     statusBarColor: Theme.of(context).colorScheme.surface,
    //     systemNavigationBarColor: Theme.of(context).colorScheme.surface,
    //   ),
    // );

    return StacApp(
      title: 'Anime Db',
      theme: StacTheme.fromJson(isDarkMode?darkThemeJson:lightThemeJson),
      homeBuilder:
          (context) =>
              Stac.fromJson(onboardingScreenJson, context),
    );
  }
}

final Map<String, dynamic> lightThemeJson = {
  "brightness": "light",
  "colorScheme": {
    "brightness": "light",
    "primary": "#E76946",
    "onPrimary": "#FFFFFF",
    "secondary": "#E76946",
    "onSecondary": "#FFFFFF",
    "background": "#FFFFFF",
    "onBackground": "#010810",
    "surface": "#FFFFFF",
    "onSurface": "#010810",
    "surfaceBright": "#F6F7F8",
    "onSurfaceVariant": "#A6010810",
    "error": "#FD1717",
    "onError": "#FFFFFF",
    "outline": "#14010810",
    "onOutline": "#12010810",
  },
  "textTheme": textTheme,
  "filledButtonTheme": filledButtonTheme,
  "outlinedButtonTheme": outlinedButtonTheme,
  "dividerTheme": dividerTheme,
};

final Map<String, dynamic> darkThemeJson = {
  "brightness": "dark",
  "colorScheme": {
    "brightness": "dark",
    "primary": "#E76946",
    "onPrimary": "#050608",
    "secondary": "#E76946",
    "onSecondary": "#FFFFFF",
    "background": "#050608",
    "onBackground": "#FFFFFF",
    "surface": "#050608",
    "onSurface": "#FFFFFF",
    "surfaceBright": "#101214",
    "onSurfaceVariant": "#FFFFFF",
    "error": "#FF6565",
    "onError": "#050608",
    "outline": "#FFFFFF",
    "onOutline": "#FFFFFF",
  },
  "textTheme": textTheme,
  "filledButtonTheme": filledButtonTheme,
  "outlinedButtonTheme": outlinedButtonTheme,
  "dividerTheme": dividerTheme,
};

final Map<String, dynamic> textTheme = {
  "displayLarge": {"fontFamily": "Figtree", "fontSize": 56, "fontWeight": "w700", "height": 1.1, "letterSpacing": -0.1},
  "displayMedium": {"fontFamily": "Figtree", "fontSize": 48, "fontWeight": "w700", "height": 1.1, "letterSpacing": -0.1},
  "displaySmall": {"fontFamily": "Figtree", "fontSize": 40, "fontWeight": "w700", "height": 1.1, "letterSpacing": -0.1},
  "headlineLarge": {"fontFamily": "Figtree", "fontSize": 34, "fontWeight": "w700", "height": 1.3, "letterSpacing": -0.1},
  "headlineMedium": {"fontFamily": "Figtree", "fontSize": 30, "fontWeight": "w700", "height": 1.3, "letterSpacing": -0.1},
  "headlineSmall": {"fontFamily": "Figtree", "fontSize": 27, "fontWeight": "w700", "height": 1.3, "letterSpacing": -0.1},
  "titleLarge": {"fontFamily": "Figtree", "fontSize": 24, "fontWeight": "w500", "height": 1.3, "letterSpacing": 0},
  "titleMedium": {"fontFamily": "Figtree", "fontSize": 21, "fontWeight": "w500", "height": 1.3, "letterSpacing": 0},
  "titleSmall": {"fontFamily": "Figtree", "fontSize": 19, "fontWeight": "w500", "height": 1.3, "letterSpacing": 0},
  "labelLarge": {"fontFamily": "Figtree", "fontSize": 14, "fontWeight": "w700", "height": 1.3, "letterSpacing": 0.8},
  "labelMedium": {"fontFamily": "Figtree", "fontSize": 12, "fontWeight": "w600", "height": 1.3, "letterSpacing": 0.8},
  "labelSmall": {"fontFamily": "Figtree", "fontSize": 10, "fontWeight": "w500", "height": 1.3, "letterSpacing": 0.8},
  "bodyLarge": {"fontFamily": "Figtree", "fontSize": 17, "fontWeight": "w400", "height": 1.5, "letterSpacing": 0},
  "bodyMedium": {"fontFamily": "Figtree", "fontSize": 15, "fontWeight": "w400", "height": 1.5, "letterSpacing": 0},
  "bodySmall": {"fontFamily": "Figtree", "fontSize": 13.5, "fontWeight": "w400", "height": 1.5, "letterSpacing": 0},
};

final Map<String, dynamic> filledButtonTheme = {
  "minimumSize": {"width": 120, "height": 48},
  "textStyle": {"fontSize": 16, "fontWeight": "w500", "height": 1.3},
  "padding": {"left": 20, "right": 20, "top": 10, "bottom": 10},
  "shape": {"borderRadius": 8},
};
final Map<String, dynamic> outlinedButtonTheme = {
  "minimumSize": {"width": 120, "height": 48},
  "textStyle": {"fontSize": 16, "fontWeight": "w500", "height": 1.3},
  "padding": {"left": 20, "right": 20, "top": 10, "bottom": 10},
  "side": {"color": "#95E183", "width": 1.0},
  "shape": {"borderRadius": 8},
};
final Map<String, dynamic> dividerTheme = {
  "color": "#24FFFFFF", "thickness": 1
};

