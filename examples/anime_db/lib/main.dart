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
    "primary": "#14865F",
    "onPrimary": "#FFFFFF",
    "secondary": "#14865F",
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
    "primary": "#95E183",
    "onPrimary": "#050608",
    "secondary": "#95E183",
    "onSecondary": "#FFFFFF",
    "background": "#050608",
    "onBackground": "#FFFFFF",
    "surface": "#050608",
    "onSurface": "#FFFFFF",
    "surfaceBright": "#101214",
    "onSurfaceVariant": "#A6FFFFFF",
    "error": "#FF6565",
    "onError": "#050608",
    "outline": "#14FFFFFF",
    "onOutline": "#12FFFFFF",
  },
  "textTheme": textTheme,
  "filledButtonTheme": filledButtonTheme,
  "outlinedButtonTheme": outlinedButtonTheme,
  "dividerTheme": dividerTheme,
};

final Map<String, dynamic> textTheme = {
  "displayLarge": {"fontSize": 48, "fontWeight": "w700", "height": 1.1},
  "displayMedium": {"fontSize": 40, "fontWeight": "w700", "height": 1.1},
  "displaySmall": {"fontSize": 34, "fontWeight": "w700", "height": 1.1},
  "headlineLarge": {"fontSize": 30, "fontWeight": "w700", "height": 1.3},
  "headlineMedium": {"fontSize": 26, "fontWeight": "w700", "height": 1.3},
  "headlineSmall": {"fontSize": 23, "fontWeight": "w700", "height": 1.3},
  "titleLarge": {"fontSize": 20, "fontWeight": "w500", "height": 1.3},
  "titleMedium": {"fontSize": 18, "fontWeight": "w500", "height": 1.3},
  "titleSmall": {"fontSize": 16, "fontWeight": "w500", "height": 1.3},
  "labelLarge": {"fontSize": 16, "fontWeight": "w700", "height": 1.3},
  "labelMedium": {"fontSize": 14, "fontWeight": "w600", "height": 1.3},
  "labelSmall": {"fontSize": 12, "fontWeight": "w500", "height": 1.3},
  "bodyLarge": {"fontSize": 18, "fontWeight": "w400", "height": 1.5},
  "bodyMedium": {"fontSize": 16, "fontWeight": "w400", "height": 1.5},
  "bodySmall": {"fontSize": 14, "fontWeight": "w400", "height": 1.5},
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

