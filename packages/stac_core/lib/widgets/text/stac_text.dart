import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/text/stac_text_span/stac_text_span.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

part 'stac_text.g.dart';

/// A Stac model representing Flutter's [Text] widget (and `Text.rich`).
///
/// Renders a string of text with optional styling, alignment, direction,
/// and span children.
///
/// Dart example:
/// ```dart
/// final widget = StacText(
///   data: 'Hello',
///   style: StacThemeData.textTheme.bodyMedium,
///   copyWithStyle: StacTextStyle(color: StacColors.blue),
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "type": "text",
///   "data": "Hello",
///   "style": "bodyMedium",
///   "copyWithStyle": {"color": "#FF2196F3"}
/// }
/// ```
///
/// Reference: Flutter `Text` https://api.flutter.dev/flutter/widgets/Text-class.html
@JsonSerializable()
class StacText extends StacWidget {
  /// Creates a [StacText] widget.
  StacText({
    required this.data,
    this.children,
    this.style,
    this.copyWithStyle,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.selectionColor,
  });

  /// The text string to display.
  ///
  /// Type: `String`
  final String data;

  /// Optional inline children as rich [TextSpan]-like nodes.
  ///
  /// Type: `List<StacTextSpan>?`
  final List<StacTextSpan>? children;

  /// Base text style.
  ///
  /// Can be a string (e.g., "bodyMedium") for theme styles or an object
  /// (e.g., {"color": "#FF2196F3"}) for custom styles.
  ///
  /// Type: [StacTextStyle]
  final StacTextStyle? style;

  /// Optional style overrides applied on top of [style].
  ///
  /// Can be a string (e.g., "bodyMedium") for theme styles or an object
  /// (e.g., {"color": "#FF2196F3"}) for custom styles.
  ///
  /// Any non-null fields in [copyWithStyle] override those from [style].
  ///
  /// Type: [StacCustomTextStyle]
  final StacCustomTextStyle? copyWithStyle;

  /// How the text should be aligned horizontally.
  ///
  /// Type: [StacTextAlign]
  final StacTextAlign? textAlign;

  /// The directionality of the text.
  ///
  /// Type: [StacTextDirection]
  final StacTextDirection? textDirection;

  /// Whether the text should break at soft line wraps.
  ///
  /// Type: `bool?`
  final bool? softWrap;

  /// How visual overflow should be handled.
  ///
  /// Type: [StacTextOverflow]
  final StacTextOverflow? overflow;

  /// The number used to scale text glyphs.
  ///
  /// Type: `double?`
  final double? textScaleFactor;

  /// An optional maximum number of lines for the text to span.
  ///
  /// Type: `int?`
  final int? maxLines;

  /// An alternative semantics label for this text.
  ///
  /// Type: `String?`
  final String? semanticsLabel;

  /// Defines how to measure the width of the text.
  ///
  /// Type: [StacTextWidthBasis]
  final StacTextWidthBasis? textWidthBasis;

  /// Color for text selection highlight.
  ///
  /// Type: [StacColor]
  final StacColor? selectionColor;

  @override
  String get type => 'text';

  /// Converts this model to JSON.
  ///
  /// Returns: `Map<String, dynamic>`
  @override
  Map<String, dynamic> toJson() => _$StacTextToJson(this);

  /// Creates a [StacText] from JSON.
  ///
  /// Parameter: `json` – `Map<String, dynamic>`
  /// Returns: [StacText]
  factory StacText.fromJson(Map<String, dynamic> json) =>
      _$StacTextFromJson(json);
}
