import 'package:flutter/material.dart';

import 'highlight_config.dart';
import 'theme.dart';

class JsonTheme implements HighlightTheme {
  JsonTheme({
    TextStyle? defaultStyle,
    TextStyle? bracketStyle,
    TextStyle? numberStyle,
    TextStyle? stringStyle,
    TextStyle? boolStyle,
    TextStyle? keyStyle,
    TextStyle? commentStyle,
    TextStyle? errorStyle,
  })  : defaultStyle = defaultStyle ??
            TextStyle(color: Colors.blueGrey.shade900, fontSize: 14),
        bracketStyle = bracketStyle ??
            TextStyle(color: Colors.blueGrey.shade900, fontSize: 14),
        numberStyle =
            numberStyle ?? TextStyle(color: Colors.blue.shade500, fontSize: 14),
        stringStyle = stringStyle ??
            TextStyle(color: Colors.green.shade800, fontSize: 14),
        boolStyle =
            boolStyle ?? TextStyle(color: Colors.orange.shade800, fontSize: 14),
        keyStyle = keyStyle ??
            TextStyle(color: Colors.blueGrey.shade600, fontSize: 14),
        commentStyle = commentStyle ??
            TextStyle(color: Colors.grey.shade600, fontSize: 14),
        errorStyle = errorStyle ??
            TextStyle(
                color: Colors.red.shade600,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline);

  factory JsonTheme.light() => JsonTheme(
      defaultStyle: TextStyle(color: Colors.blueGrey.shade900, fontSize: 14),
      bracketStyle: TextStyle(color: Colors.blueGrey.shade900, fontSize: 14),
      numberStyle: TextStyle(color: Colors.blue.shade500, fontSize: 14),
      stringStyle: TextStyle(color: Colors.green.shade800, fontSize: 14),
      boolStyle: TextStyle(color: Colors.orange.shade800, fontSize: 14),
      keyStyle: TextStyle(color: Colors.blueGrey.shade600, fontSize: 14),
      commentStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
      errorStyle: TextStyle(
          color: Colors.red.shade600,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline));

  factory JsonTheme.dark() => JsonTheme(
      defaultStyle: TextStyle(color: Colors.white, fontSize: 14),
      bracketStyle: TextStyle(color: Colors.white70, fontSize: 14),
      numberStyle: TextStyle(color: Colors.blue.shade500, fontSize: 14),
      stringStyle: TextStyle(color: Colors.green.shade800, fontSize: 14),
      boolStyle: TextStyle(color: Colors.orange.shade800, fontSize: 14),
      keyStyle: TextStyle(color: Colors.blueGrey.shade200, fontSize: 14),
      commentStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
      errorStyle: TextStyle(
          color: Colors.red.shade600,
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline));

  @override
  final TextStyle defaultStyle;
  final TextStyle bracketStyle;
  final TextStyle numberStyle;
  final TextStyle stringStyle;
  final TextStyle boolStyle;
  final TextStyle keyStyle;
  final TextStyle commentStyle;
  final TextStyle errorStyle;

  final _config = HighlightConfig(brackets: [
    Pair(open: '{', close: '}'),
    Pair(open: '[', close: ']'),
  ], autoClosingPairs: [
    Pair(open: '{', close: '}'),
    Pair(open: '[', close: ']'),
    Pair(open: '"', close: '"'),
  ]);

  @override
  Map<String, TextStyle> get bracketsStyle => {
        '{': bracketStyle,
        '}': bracketStyle,
        '[': bracketStyle,
        ']': bracketStyle
      };

  @override
  HighlightConfig get config => _config;

  @override
  Map<HighlightDataType, TextStyle> get typeStyle => {
        HighlightDataType.int: numberStyle,
        HighlightDataType.double: numberStyle,
        HighlightDataType.string: stringStyle,
        HighlightDataType.bool: boolStyle,
        HighlightDataType.key: keyStyle,
        HighlightDataType.comment: commentStyle,
        HighlightDataType.error: errorStyle,
      };

  @override
  Map<String, TextStyle> get keywordsStyle => {};

  JsonTheme copyWith({
    TextStyle? defaultStyle,
    TextStyle? bracketStyle,
    TextStyle? numberStyle,
    TextStyle? stringStyle,
    TextStyle? boolStyle,
    TextStyle? keyStyle,
    TextStyle? commentStyle,
    TextStyle? errorStyle,
  }) =>
      JsonTheme(
          defaultStyle: defaultStyle ?? this.defaultStyle,
          bracketStyle: bracketStyle ?? this.bracketStyle,
          numberStyle: numberStyle ?? this.numberStyle,
          stringStyle: stringStyle ?? this.stringStyle,
          boolStyle: boolStyle ?? this.boolStyle,
          keyStyle: keyStyle ?? this.keyStyle,
          commentStyle: commentStyle ?? this.commentStyle,
          errorStyle: errorStyle ?? this.errorStyle);
}
