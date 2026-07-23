import 'package:flutter/widgets.dart';

import 'highlight_config.dart';

abstract class HighlightTheme {
  HighlightConfig get config;

  Map<String, TextStyle> get bracketsStyle;

  Map<HighlightDataType, TextStyle> get typeStyle;

  Map<String, TextStyle> get keywordsStyle;

  TextStyle get defaultStyle;
}

enum HighlightDataType { int, double, string, bool, key, comment, error }
