import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';
import 'package:stac_core/foundation/text/stac_text_span/stac_text_span.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

part 'stac_selectable_text.g.dart';

/// A widget that displays a string of text with a single style.
///
/// The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.
///
/// This widget corresponds to Flutter's [SelectableText] widget.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacSelectableText(
///  data: 'Hello World',
///  style: StacTextStyle(fontSize: 20, color: '#FF0000'),
///  showCursor: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "selectableText",
///   "data": "Hello World",
///   "style": {
///     "fontSize": 20,
///     "color": "#FF0000"
///   },
///   "showCursor": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSelectableText extends StacWidget {
  /// Creates a [StacSelectableText].
  const StacSelectableText({
    required this.data,
    this.children,
    this.style,
    this.copyWithStyle,
    this.textAlign,
    this.textDirection,
    this.textScaler,
    this.showCursor,
    this.autofocus,
    this.minLines,
    this.maxLines,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorRadius,
    this.cursorColor,
    this.enableInteractiveSelection,
    this.onTap,
    this.semanticsLabel,
    this.textWidthBasis,
    this.selectionColor,
  });

  /// The text to display.
  final String data;

  /// The list of text spans to display.
  final List<StacTextSpan>? children;

  /// The style to apply to the text.
  final StacTextStyle? style;

  /// The style to merge with the existing style.
  final StacCustomTextStyle? copyWithStyle;

  /// How the text should be aligned horizontally.
  final StacTextAlign? textAlign;

  /// The directionality of the text.
  final StacTextDirection? textDirection;

  /// The font scaling strategy to use.
  final double? textScaler;

  /// Whether to show the cursor.
  final bool? showCursor;

  /// Whether this widget should focus itself if nothing else is already focused.
  final bool? autofocus;

  /// The minimum number of lines to occupy when the content spans fewer lines.
  final int? minLines;

  /// The maximum number of lines to display.
  final int? maxLines;

  /// The thickness of the cursor.
  final double? cursorWidth;

  /// The height of the cursor.
  final double? cursorHeight;

  /// The radius of the cursor.
  final double? cursorRadius;

  /// The color of the cursor.
  final StacColor? cursorColor;

  /// Whether to enable interactive selection.
  final bool? enableInteractiveSelection;

  /// Called when the user taps on the text.
  final StacAction? onTap;

  /// An alternative semantics label for the text.
  final String? semanticsLabel;

  /// Defines how the paragraph will measure the width of the text.
  final StacTextWidthBasis? textWidthBasis;

  /// The color to use when painting the selection.
  final StacColor? selectionColor;

  @override
  String get type => WidgetType.selectableText.name;

  /// Creates a [StacSelectableText] from a JSON map.
  factory StacSelectableText.fromJson(Map<String, dynamic> json) =>
      _$StacSelectableTextFromJson(json);

  /// Converts this [StacSelectableText] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSelectableTextToJson(this);
}
