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
          (context) =>
              Stac.fromAssets('assets/jsons/screens/onboarding_screen.json'),
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
};
