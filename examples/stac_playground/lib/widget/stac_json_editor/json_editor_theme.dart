import 'package:flutter/material.dart';

import 'rich_text_field/highlight_theme/json_theme.dart';

class JsonEditorTheme extends InheritedWidget {
  const JsonEditorTheme(
      {Key? key, required this.themeData, required Widget child})
      : super(key: key, child: child);

  final JsonEditorThemeData themeData;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static JsonEditorThemeData? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<JsonEditorTheme>()?.themeData;
}

class JsonEditorThemeData {
  JsonEditorThemeData({required this.lightTheme, this.darkTheme});

  factory JsonEditorThemeData.defaultTheme() => JsonEditorThemeData(
      lightTheme: JsonTheme.light(), darkTheme: JsonTheme.dark());

  final JsonTheme lightTheme;
  final JsonTheme? darkTheme;

  JsonTheme theme(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return darkTheme ?? lightTheme;
    } else {
      return lightTheme;
    }
  }
}
