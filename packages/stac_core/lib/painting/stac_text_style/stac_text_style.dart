import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/painting/stac_color/stac_colors.dart';
import 'package:stac_core/types/stac_text_types.dart';

part 'stac_text_style.g.dart';

/// Discriminator for [StacTextStyle] variants.
///
/// - `custom`: Explicit properties like color, fontSize, etc. (maps to Flutter TextStyle)
/// - `theme`: A style pulled from the current ThemeData.textTheme
enum StacTextStyleType { custom, theme }

/// Material TextTheme style keys.
///
/// Maps one-to-one to properties on Flutter's `TextTheme`.
/// See: https://api.flutter.dev/flutter/material/TextTheme-class.html
enum StacMaterialTextStyle {
  /// Maps to `TextTheme.displayLarge`.
  displayLarge,

  /// Maps to `TextTheme.displayMedium`.
  displayMedium,

  /// Maps to `TextTheme.displaySmall`.
  displaySmall,

  /// Maps to `TextTheme.headlineLarge`.
  headlineLarge,

  /// Maps to `TextTheme.headlineMedium`.
  headlineMedium,

  /// Maps to `TextTheme.headlineSmall`.
  headlineSmall,

  /// Maps to `TextTheme.titleLarge`.
  titleLarge,

  /// Maps to `TextTheme.titleMedium`.
  titleMedium,

  /// Maps to `TextTheme.titleSmall`.
  titleSmall,

  /// Maps to `TextTheme.bodyLarge`.
  bodyLarge,

  /// Maps to `TextTheme.bodyMedium`.
  bodyMedium,

  /// Maps to `TextTheme.bodySmall`.
  bodySmall,

  /// Maps to `TextTheme.labelLarge`.
  labelLarge,

  /// Maps to `TextTheme.labelMedium`.
  labelMedium,

  /// Maps to `TextTheme.labelSmall`.
  labelSmall,
}

/// Base interface for text styles.
///
/// Use one of the concrete implementations:
/// - [StacCustomTextStyle] (explicit TextStyle properties)
/// - [StacThemeTextStyle] (style from `ThemeData.textTheme`)
///
/// Dart example (custom):
/// ```dart
/// final style = StacCustomTextStyle(fontSize: 16, color: StacColors.blue);
/// ```
///
/// JSON example (custom):
/// ```json
/// { "type": "custom", "fontSize": 16, "color": "#FF2196F3" }
/// ```
///
/// Dart example (theme):
/// ```dart
/// final style = StacTextStyle.fromTheme(
///   textTheme: StacMaterialTextStyle.bodyMedium,
/// );
/// ```
///
/// JSON example (theme):
/// ```json
/// { "type": "theme", "textTheme": "bodyMedium" }
/// ```
///
/// References:
/// - Flutter TextStyle: https://api.flutter.dev/flutter/painting/TextStyle-class.html
/// - Flutter TextTheme: https://api.flutter.dev/flutter/material/TextTheme-class.html
abstract class StacTextStyle implements StacElement {
  const StacTextStyle({required this.type});

  /// The variant discriminator.
  ///
  /// Type: [StacTextStyleType]
  @JsonKey(includeToJson: true)
  final StacTextStyleType type;

  /// Creates a [StacTextStyle] from JSON.
  ///
  /// Decides the concrete subtype using the `type` field.
  /// - When `type` is `custom`, returns [StacCustomTextStyle].
  /// - When `type` is `theme`, returns [StacThemeTextStyle].
  ///
  /// Example:
  /// ```json
  /// { "type": "theme", "style": "titleMedium" }
  /// ```
  factory StacTextStyle.fromJson(Map<String, dynamic> json) {
    final typeString = json['type'];

    StacTextStyleType parsedType = StacTextStyleType.custom;
    for (final value in StacTextStyleType.values) {
      if (value.name == typeString) {
        parsedType = value;
        break;
      }
    }

    switch (parsedType) {
      case StacTextStyleType.custom:
        return StacCustomTextStyle.fromJson(json);
      case StacTextStyleType.theme:
        return StacThemeTextStyle.fromJson(json);
    }
  }

  /// Creates a [StacCustomTextStyle].
  ///
  /// Returns: [StacCustomTextStyle]
  factory StacTextStyle.custom({
    bool? inherit,
    StacColor? color,
    StacColor? backgroundColor,
    double? fontSize,
    StacFontWeight? fontWeight,
    StacFontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    StacTextBaseline? textBaseline,
    double? height,
    StacTextLeadingDistribution? leadingDistribution,
    StacColor? decorationColor,
    StacTextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    StacTextOverflow? overflow,
  }) {
    return StacCustomTextStyle(
      inherit: inherit,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      leadingDistribution: leadingDistribution,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
      debugLabel: debugLabel,
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback,
      package: package,
      overflow: overflow,
    );
  }

  /// Creates a [StacThemeTextStyle] from a `TextTheme` key.
  ///
  /// Parameter: [textTheme] (required) – the `TextTheme` style key.
  /// Returns: [StacThemeTextStyle]
  factory StacTextStyle.fromTheme({required StacMaterialTextStyle textTheme}) {
    return StacThemeTextStyle(textTheme: textTheme);
  }
}

@JsonSerializable()
class StacCustomTextStyle extends StacTextStyle {
  /// A custom text style similar to Flutter's `TextStyle`.
  ///
  /// Reference: https://api.flutter.dev/flutter/painting/TextStyle-class.html
  StacCustomTextStyle({
    this.inherit,
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  }) : super(type: StacTextStyleType.custom);

  /// Whether to inherit styling from the ambient `DefaultTextStyle`.
  ///
  /// Type: `bool?`
  bool? inherit;

  /// Text color.
  ///
  /// Type: [StacColor]
  StacColor? color;

  /// Background color behind the text.
  ///
  /// Type: [StacColor]
  StacColor? backgroundColor;

  /// Font size in logical pixels.
  ///
  /// Type: `double?`
  double? fontSize;

  /// Font weight.
  ///
  /// Type: [StacFontWeight]
  StacFontWeight? fontWeight;

  /// Font style (normal/italic).
  ///
  /// Type: [StacFontStyle]
  StacFontStyle? fontStyle;

  /// Spacing between letters.
  ///
  /// Type: `double?`
  double? letterSpacing;

  /// Spacing between words.
  ///
  /// Type: `double?`
  double? wordSpacing;

  /// The baseline to align against.
  ///
  /// Type: [StacTextBaseline]
  StacTextBaseline? textBaseline;

  /// The height of this text span, as a multiple of font size.
  ///
  /// Type: `double?`
  double? height;

  /// Strategy for distributing the leading (space above a line).
  ///
  /// Type: [StacTextLeadingDistribution]
  StacTextLeadingDistribution? leadingDistribution;

  /// Color for text decorations (underline, overline, etc.).
  ///
  /// Type: [StacColor]
  StacColor? decorationColor;

  /// Style of text decorations (solid, dotted, dashed, etc.).
  ///
  /// Type: [StacTextDecorationStyle]
  StacTextDecorationStyle? decorationStyle;

  /// Thickness of text decorations in logical pixels.
  ///
  /// Type: `double?`
  double? decorationThickness;

  /// Optional label used for debugging.
  ///
  /// Type: `String?`
  String? debugLabel;

  /// The name of the font family to use.
  ///
  /// Type: `String?`
  String? fontFamily;

  /// Fallback font families to try if [fontFamily] is unavailable.
  ///
  /// Type: `List<String>?`
  List<String>? fontFamilyFallback;

  /// Optional package name for bundled fonts.
  ///
  /// Type: `String?`
  String? package;

  /// How visual overflow should be handled.
  ///
  /// Type: [StacTextOverflow]
  StacTextOverflow? overflow;

  /// Creates a [StacCustomTextStyle] from JSON.
  factory StacCustomTextStyle.fromJson(Map<String, dynamic> json) =>
      _$StacCustomTextStyleFromJson(json);

  /// Converts this custom text style to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacCustomTextStyleToJson(this);

  /// Creates a copy of this style with the given fields replaced.
  StacCustomTextStyle copyWith({
    bool? inherit,
    StacColor? color,
    StacColor? backgroundColor,
    double? fontSize,
    StacFontWeight? fontWeight,
    StacFontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    StacTextBaseline? textBaseline,
    double? height,
    StacTextLeadingDistribution? leadingDistribution,
    StacColor? decorationColor,
    StacTextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    StacTextOverflow? overflow,
  }) {
    return StacCustomTextStyle(
      inherit: inherit ?? this.inherit,
      color: color ?? this.color,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      fontStyle: fontStyle ?? this.fontStyle,
      letterSpacing: letterSpacing ?? this.letterSpacing,
      wordSpacing: wordSpacing ?? this.wordSpacing,
      textBaseline: textBaseline ?? this.textBaseline,
      height: height ?? this.height,
      leadingDistribution: leadingDistribution ?? this.leadingDistribution,
      decorationColor: decorationColor ?? this.decorationColor,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      debugLabel: debugLabel ?? this.debugLabel,
      fontFamily: fontFamily ?? this.fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? this.fontFamilyFallback,
      package: package ?? this.package,
      overflow: overflow ?? this.overflow,
    );
  }
}

@JsonSerializable()
class StacThemeTextStyle extends StacTextStyle {
  /// A text style that references a style from `ThemeData.textTheme`.
  ///
  /// For example, `style: StacMaterialTextStyle.bodyMedium` maps to
  /// `Theme.of(context).textTheme.bodyMedium`.
  StacThemeTextStyle({required this.textTheme})
    : super(type: StacTextStyleType.theme);

  /// The `TextTheme` style key.
  ///
  /// Type: [StacMaterialTextStyle]
  final StacMaterialTextStyle textTheme;

  /// Creates a [StacThemeTextStyle] from JSON.
  factory StacThemeTextStyle.fromJson(Map<String, dynamic> json) =>
      _$StacThemeTextStyleFromJson(json);

  /// Converts this theme text style to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacThemeTextStyleToJson(this);
}
