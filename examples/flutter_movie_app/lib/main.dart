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
      theme: StacTheme.fromJson(themeJson),
      homeBuilder:
          (context) => Stac.fromAssets('assets/jsons/screens/home_screen.json'),
    );
  }
}

final Map<String, dynamic> themeJson = {
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
