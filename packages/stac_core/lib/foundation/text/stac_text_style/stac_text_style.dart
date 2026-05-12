import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

part 'stac_text_style.g.dart';

/// Discriminator for [StacTextStyle] variants.
///
/// - `custom`: Explicit properties like color, fontSize, etc. (maps to Flutter TextStyle)
/// - `theme`: A style pulled from the current ThemeData.textTheme
enum StacTextStyleType {
  /// Custom text style with explicit properties.
  custom,

  /// Theme-based text style from Material TextTheme.
  theme,
}

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

/// A convenience class for creating theme text styles.
///
/// Provides easy access to all theme text styles through a fluent API.
///
/// Example:
/// ```dart
/// final style = StacThemeData.textTheme.displayLarge;
/// final bodyStyle = StacThemeData.textTheme.bodyMedium;
/// ```

/// A collection of all available theme text styles.
class StacThemeTextStyles {
  /// Creates a [StacThemeTextStyles] instance.
  const StacThemeTextStyles();

  /// Display large text style.
  StacThemeTextStyle get displayLarge =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.displayLarge);

  /// Display medium text style.
  StacThemeTextStyle get displayMedium =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.displayMedium);

  /// Display small text style.
  StacThemeTextStyle get displaySmall =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.displaySmall);

  /// Headline large text style.
  StacThemeTextStyle get headlineLarge =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.headlineLarge);

  /// Headline medium text style.
  StacThemeTextStyle get headlineMedium =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.headlineMedium);

  /// Headline small text style.
  StacThemeTextStyle get headlineSmall =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.headlineSmall);

  /// Title large text style.
  StacThemeTextStyle get titleLarge =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.titleLarge);

  /// Title medium text style.
  StacThemeTextStyle get titleMedium =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.titleMedium);

  /// Title small text style.
  StacThemeTextStyle get titleSmall =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.titleSmall);

  /// Body large text style.
  StacThemeTextStyle get bodyLarge =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.bodyLarge);

  /// Body medium text style.
  StacThemeTextStyle get bodyMedium =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.bodyMedium);

  /// Body small text style.
  StacThemeTextStyle get bodySmall =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.bodySmall);

  /// Label large text style.
  StacThemeTextStyle get labelLarge =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.labelLarge);

  /// Label medium text style.
  StacThemeTextStyle get labelMedium =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.labelMedium);

  /// Label small text style.
  StacThemeTextStyle get labelSmall =>
      StacThemeTextStyle(textTheme: StacMaterialTextStyle.labelSmall);
}

/// Base interface for text styles.
abstract class StacTextStyle implements StacElement {
  /// Creates a custom text style with the given properties.
  ///
  /// This is a convenience factory constructor that returns a [StacCustomTextStyle].
  /// For theme-based styles, use [StacThemeData.textTheme] or [StacTextStyle.fromTheme].
  ///
  /// Example:
  /// ```dart
  /// final style = StacTextStyle(color: StacColors.blue, fontSize: 16);
  /// ```
  factory StacTextStyle({
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
    StacTextDecorationLine? decoration,
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
      decoration: decoration,
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

  /// Creates a [StacTextStyle] with the given type.
  ///
  /// This is a protected constructor for subclasses.
  const StacTextStyle._({required this.type});

  /// The variant discriminator.
  ///
  /// Type: [StacTextStyleType]
  @JsonKey(includeToJson: true)
  final StacTextStyleType type;

  /// Creates a [StacTextStyle] from JSON.
  ///
  /// Handles different input formats:
  /// - String (e.g., "bodyMedium") -> [StacThemeTextStyle]
  /// - Object (e.g., {"color": "#FF2196F3"}) -> [StacCustomTextStyle]
  /// - [StacTextStyle] values -> pass through
  ///
  /// Throws [FormatException] for invalid input including null values.
  ///
  /// Example:
  /// ```json
  /// { "type": "theme", "textTheme": "titleMedium" }
  /// ```
  factory StacTextStyle.fromJson(dynamic json) {
    if (json == null) {
      throw FormatException('StacTextStyle.fromJson called on null object');
    }

    if (json is StacTextStyle) return json;

    if (json is String) {
      for (final value in StacMaterialTextStyle.values) {
        if (value.name == json) {
          return StacTextStyle.fromTheme(textTheme: value);
        }
      }

      throw FormatException(
        'Invalid theme style string "$json". '
        'Valid values are: ${StacMaterialTextStyle.values.map((e) => e.name).join(', ')}.',
      );
    }

    if (json is Map<String, dynamic>) {
      try {
        if (json.containsKey('type')) {
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
        } else {
          return StacCustomTextStyle.fromJson(json);
        }
      } catch (e) {
        throw FormatException('Failed to parse style object: $json. Error: $e');
      }
    }

    throw FormatException(
      'Unexpected type ${json.runtimeType} for style value: $json. '
      'Expected theme TextStyle key or custom TextStyle.',
    );
  }

  /// Creates a [StacThemeTextStyle] from a `TextTheme` key.
  ///
  /// Parameter: [textTheme] (required) – the `TextTheme` style key.
  /// Returns: [StacThemeTextStyle]
  factory StacTextStyle.fromTheme({required StacMaterialTextStyle textTheme}) {
    return StacThemeTextStyle(textTheme: textTheme);
  }

  /// Converts this [StacTextStyle] to JSON.
  @override
  Map<String, dynamic> toJson();
}

/// A custom text style similar to Flutter's `TextStyle`.
///
/// Example:
/// ```dart
/// final style = StacCustomTextStyle(fontSize: 16, color: StacColors.blue);
/// ```
///
/// JSON example:
/// ```json
/// {"fontSize": 16, "color": "#FF2196F3" }
/// ```
@JsonSerializable()
class StacCustomTextStyle extends StacTextStyle {
  /// Reference: https://api.flutter.dev/flutter/painting/TextStyle-class.html
  ///
  /// Creates a [StacCustomTextStyle] with the given properties.
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
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.fontFamily,
    this.fontFamilyFallback,
    this.package,
    this.overflow,
  }) : super._(type: StacTextStyleType.custom);

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

  /// Drawn line on the text (underline, strikethrough, etc.).
  ///
  /// Type: [StacTextDecorationLine]
  StacTextDecorationLine? decoration;

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
    StacTextDecorationLine? decoration,
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
      decoration: decoration ?? this.decoration,
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

/// A text style that references a style from `ThemeData.textTheme`.
///
/// For example, `style: StacMaterialTextStyle.bodyMedium` maps to
/// `Theme.of(context).textTheme.bodyMedium`.
///
/// Example:
/// ```dart
/// final style = StacThemeTextStyle(textTheme: StacMaterialTextStyle.bodyMedium);
/// ```
///
/// JSON example:
/// ```json
/// { "type": "theme", "textTheme": "bodyMedium" }
/// ```
@JsonSerializable()
class StacThemeTextStyle extends StacTextStyle {
  /// A text style that references a style from `ThemeData.textTheme`.
  ///
  /// For example, `style: StacMaterialTextStyle.bodyMedium` maps to
  /// `Theme.of(context).textTheme.bodyMedium`.
  StacThemeTextStyle({
    required this.textTheme,
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
  }) : super._(type: StacTextStyleType.theme);

  /// The `TextTheme` style key.
  ///
  /// Type: [StacMaterialTextStyle]
  final StacMaterialTextStyle textTheme;

  /// Whether to inherit styling from the ambient `DefaultTextStyle`.
  ///
  /// Type: `bool?`
  final bool? inherit;

  /// Text color.
  ///
  /// Type: [StacColor]
  final StacColor? color;

  /// Background color behind the text.
  ///
  /// Type: [StacColor]
  final StacColor? backgroundColor;

  /// Font size in logical pixels.
  ///
  /// Type: `double?`
  final double? fontSize;

  /// Font weight.
  ///
  /// Type: [StacFontWeight]
  final StacFontWeight? fontWeight;

  /// Font style (normal/italic).
  ///
  /// Type: [StacFontStyle]
  final StacFontStyle? fontStyle;

  /// Spacing between letters.
  ///
  /// Type: `double?`
  final double? letterSpacing;

  /// Spacing between words.
  ///
  /// Type: `double?`
  final double? wordSpacing;

  /// The baseline to align against.
  ///
  /// Type: [StacTextBaseline]
  final StacTextBaseline? textBaseline;

  /// The height of this text span, as a multiple of font size.
  ///
  /// Type: `double?`
  final double? height;

  /// Strategy for distributing the leading (space above a line).
  ///
  /// Type: [StacTextLeadingDistribution]
  final StacTextLeadingDistribution? leadingDistribution;

  /// Color for text decorations (underline, overline, etc.).
  ///
  /// Type: [StacColor]
  final StacColor? decorationColor;

  /// Style of text decorations (solid, dotted, dashed, etc.).
  ///
  /// Type: [StacTextDecorationStyle]
  final StacTextDecorationStyle? decorationStyle;

  /// Thickness of text decorations in logical pixels.
  ///
  /// Type: `double?`
  final double? decorationThickness;

  /// Optional label used for debugging.
  ///
  /// Type: `String?`
  final String? debugLabel;

  /// The name of the font family to use.
  ///
  /// Type: `String?`
  final String? fontFamily;

  /// Fallback font families to try if [fontFamily] is unavailable.
  ///
  /// Type: `List<String>?`
  final List<String>? fontFamilyFallback;

  /// Optional package name for bundled fonts.
  ///
  /// Type: `String?`
  final String? package;

  /// How visual overflow should be handled.
  ///
  /// Type: [StacTextOverflow]
  final StacTextOverflow? overflow;

  /// Creates a [StacThemeTextStyle] from JSON.
  factory StacThemeTextStyle.fromJson(Map<String, dynamic> json) =>
      _$StacThemeTextStyleFromJson(json);

  /// Converts this theme text style to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacThemeTextStyleToJson(this);

  /// Creates a copy of this style with the given fields replaced.
  StacThemeTextStyle copyWith({
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
    return StacThemeTextStyle(
      textTheme: textTheme,
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
