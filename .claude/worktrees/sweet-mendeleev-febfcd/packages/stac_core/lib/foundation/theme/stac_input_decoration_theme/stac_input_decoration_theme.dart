import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_input_border/stac_input_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_input_decoration_theme.g.dart';

/// A Stac representation of input decoration theme properties.
///
/// This class defines the default styling for input decorations including
/// text styles, colors, borders, and layout properties for form fields.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacInputDecorationTheme(
///   labelStyle: StacTextStyle(color: StacColors.grey),
///   focusedBorder: StacInputBorder(
///     borderSide: StacBorderSide(color: StacColors.blue),
///   ),
///   filled: true,
///   fillColor: '#F5F5F5',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "labelStyle": {"color": "#757575"},
///   "focusedBorder": {
///     "borderSide": {"color": "#2196F3"}
///   },
///   "filled": true,
///   "fillColor": "#F5F5F5"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacInputDecorationTheme extends StacElement {
  /// Creates an input decoration theme with the specified properties.
  const StacInputDecorationTheme({
    this.labelStyle,
    this.floatingLabelStyle,
    this.helperStyle,
    this.helperMaxLines,
    this.hintStyle,
    this.errorStyle,
    this.errorMaxLines,
    this.floatingLabelBehavior,
    this.floatingLabelAlignment,
    this.isDense,
    this.contentPadding,
    this.isCollapsed,
    this.iconColor,
    this.prefixStyle,
    this.prefixIconColor,
    this.suffixStyle,
    this.suffixIconColor,
    this.counterStyle,
    this.filled,
    this.fillColor,
    this.activeIndicatorBorder,
    this.outlineBorder,
    this.focusColor,
    this.hoverColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
    this.alignLabelWithHint,
    this.constraints,
  });

  /// The style for input field labels.
  final StacTextStyle? labelStyle;

  /// The style for floating labels when they are floating.
  final StacTextStyle? floatingLabelStyle;

  /// The style for helper text.
  final StacTextStyle? helperStyle;

  /// The maximum number of lines for helper text.
  final int? helperMaxLines;

  /// The style for hint text.
  final StacTextStyle? hintStyle;

  /// The style for error text.
  final StacTextStyle? errorStyle;

  /// The maximum number of lines for error text.
  final int? errorMaxLines;

  /// How floating labels should behave.
  final String? floatingLabelBehavior;

  /// How floating labels should be aligned.
  final String? floatingLabelAlignment;

  /// Whether the input decoration is dense.
  final bool? isDense;

  /// The padding for the input content.
  final StacEdgeInsets? contentPadding;

  /// Whether the input decoration is collapsed.
  final bool? isCollapsed;

  /// The color of the icon.
  final String? iconColor;

  /// The style for prefix text.
  final StacTextStyle? prefixStyle;

  /// The color of the prefix icon.
  final String? prefixIconColor;

  /// The style for suffix text.
  final StacTextStyle? suffixStyle;

  /// The color of the suffix icon.
  final String? suffixIconColor;

  /// The style for counter text.
  final StacTextStyle? counterStyle;

  /// Whether the input field should be filled.
  final bool? filled;

  /// The fill color for the input field.
  final String? fillColor;

  /// The border for active indicators.
  final StacBorderSide? activeIndicatorBorder;

  /// The outline border.
  final StacBorderSide? outlineBorder;

  /// The color when the input is focused.
  final String? focusColor;

  /// The color when the input is hovered.
  final String? hoverColor;

  /// The border when there is an error.
  final StacInputBorder? errorBorder;

  /// The border when the input is focused.
  final StacInputBorder? focusedBorder;

  /// The border when focused and there is an error.
  final StacInputBorder? focusedErrorBorder;

  /// The border when the input is disabled.
  final StacInputBorder? disabledBorder;

  /// The border when the input is enabled.
  final StacInputBorder? enabledBorder;

  /// The default border.
  final StacInputBorder? border;

  /// Whether to align the label with the hint.
  final bool? alignLabelWithHint;

  /// The constraints for the input decoration.
  final StacBoxConstraints? constraints;

  /// Creates a [StacInputDecorationTheme] from a JSON map.
  factory StacInputDecorationTheme.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacInputDecorationThemeToJson(this);
}
