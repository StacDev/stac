import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() async {
  await Stac.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData();
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
    "fixedSize": {"width": 1000, "height": 48},
    "textStyle": {"fontSize": 16, "fontWeight": "w700", "height": 1.3},
    "shape": {
      "borderRadius": {
        "topLeft": 8,
        "topRight": 8,
        "bottomLeft": 8,
        "bottomRight": 8,
      },
    },
  },
};
