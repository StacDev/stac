---
sidebar_position: 3
---

# Theming

Theming is an essential part of any application, ensuring a consistent look and feel across the entire app. Mirai offers a powerful way to update the theme of your application dynamically using JSON.

Mirai theming functions similarly to Flutter's built-in theming. You define the theme in JSON and apply it to your application using the MiraiTheme widget. This allows for a centralized and easily maintainable approach to managing your app's visual style.

## Implementing Mirai Theming

To implement theming in Mirai, follow these steps:

1. **Replace MaterialApp with MiraiApp**: Start by replacing your `MaterialApp` with `MiraiApp`
2. **Pass the MiraiTheme to MiraiApp**: Apply the theme by passing the `MiraiTheme` widget to the `MiraiApp`. The MiraiTheme widget takes a `MiraiTheme` object as a parameter, which is constructed from your JSON theme definition.

```dart
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

void main() async {
  await Mirai.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      theme: MiraiTheme.fromJson(themeJson),
      homeBuilder: (context) => const HomeScreen(),
    );
  }
  
  Map<String, dynamic> themeJson = {
    "brightness": "light",
    "disabledColor": "#60FEF7FF",
    "fontFamily": "Handjet",
    "colorScheme": {
      "brightness": "light",
      "primary": "#6750a4",
      "onPrimary": "#FFFFFF",
      "secondary": "#615B6F",
      "onSecondary": "#FFFFFF",
      "surface": "#FEFBFF",
      "onSurface": "#1C1B1E",
      "background": "#FEFBFF",
      "onBackground": "#1C1B1E",
      "surfaceVariant": "#E6E0EA",
      "onSurfaceVariant": "#48454D",
      "error": "#AB2D25",
      "onError": "#FFFFFF",
      "success": "#27BA62",
      "onSuccess": "#FFFFFF"
    }
  };
}
```

For more details check out [MiraiTheme](https://github.com/buildMirai/mirai/blob/dev/packages/mirai/lib/src/parsers/mirai_theme/mirai_theme.dart) class.