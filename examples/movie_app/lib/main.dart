import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel_parser.dart';
import 'package:stac/stac.dart';

final token =
    "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5YzNjN2I1OGQ5NjU5NzUwMmNjODAxNWRkZjNjNTY1MyIsIm5iZiI6MTc0NDY1NDUzNi4zMjgsInN1YiI6IjY3ZmQ1MGM4N2MyOWFlNWJjM2Q5NjEzNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.oZWfMnM-eiPjHvlvjLbrZeQXCfm2lvgGiNx8xDovzW8";

void main() async {
  final dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers['Authorization'] = 'Bearer $token';
        return handler.next(options);
      },
    ),
  );

  await Stac.initialize(dio: dio, parsers: [MovieCarouselParser()]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Flutter Demo',
      theme: StacTheme.fromJson(darkThemeJson),
      homeBuilder:
          (context) => Stac.fromAssets('assets/jsons/screens/home_screen.json'),
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
    "surfaceVariant": "#F6F7F8",
    "onSurfaceVariant": "#65010810",
    "error": "#FD1717",
    "onError": "#FFFFFF",
    "outline": "#080110810",
    "onOutline": "#120110810",
  },
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
    "surfaceVariant": "#101214",
    "onSurfaceVariant": "#65FFFFFF",
    "error": "#FF6565",
    "onError": "#050608",
    "outline": "#08FFFFFF",
    "onOutline": "#12FFFFFF",
  },
  "textTheme": {
    "displayLarge": {
      "fontSize": 48,
      "fontWeight": "w700",
      "height": 1.1,
      "letterSpacing": -0.96,
    },
    "displayMedium": {
      "fontSize": 40,
      "fontWeight": "w700",
      "height": 1.1,
      "letterSpacing": -0.80,
    },
    "displaySmall": {
      "fontSize": 34,
      "fontWeight": "w700",
      "height": 1.1,
      "letterSpacing": -0.72,
    },
    "headlineLarge": {
      "fontSize": 30,
      "fontWeight": "w700",
      "height": 1.3,
      "letterSpacing": -0.3,
    },
    "headlineMedium": {
      "fontSize": 26,
      "fontWeight": "w700",
      "height": 1.3,
      "letterSpacing": -0.26,
    },
    "headlineSmall": {
      "fontSize": 23,
      "fontWeight": "w700",
      "height": 1.3,
      "letterSpacing": -0.23,
    },
    "titleLarge": {
      "fontSize": 20,
      "fontWeight": "w500",
      "height": 1.3,
      "letterSpacing": -0.20,
    },
    "titleMedium": {
      "fontSize": 18,
      "fontWeight": "w500",
      "height": 1.3,
      "letterSpacing": -0.18,
    },
    "titleSmall": {
      "fontSize": 16,
      "fontWeight": "w500",
      "height": 1.3,
      "letterSpacing": -0.16,
    },
    "labelLarge": {"fontSize": 16, "fontWeight": "w700", "height": 1.3},
    "labelMedium": {"fontSize": 14, "fontWeight": "w600", "height": 1.3},
    "labelSmall": {"fontSize": 12, "fontWeight": "w500", "height": 1.3},
    "bodyLarge": {"fontSize": 18, "fontWeight": "w400", "height": 1.5},
    "bodyMedium": {"fontSize": 16, "fontWeight": "w400", "height": 1.5},
    "bodySmall": {"fontSize": 14, "fontWeight": "w400", "height": 1.5},
  },
  "filledButtonTheme": {
    "minimumSize": {"width": 120, "height": 40},
    "textStyle": {"fontSize": 16, "fontWeight": "w500", "height": 1.3},
    "padding": {"left": 10, "right": 10, "top": 8, "bottom": 8},
    "shape": {"borderRadius": 8},
  },
  "outlinedButtonTheme": {
    "minimumSize": {"width": 120, "height": 40},
    "textStyle": {"fontSize": 16, "fontWeight": "w500", "height": 1.3},
    "padding": {"left": 10, "right": 10, "top": 8, "bottom": 8},
    "side": {"color": "#95E183", "width": 1.0},
    "shape": {"borderRadius": 8},
  },
  "dividerTheme": {"color": "#24FFFFFF", "thickness": 1},
};
