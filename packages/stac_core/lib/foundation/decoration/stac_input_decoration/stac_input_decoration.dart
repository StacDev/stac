import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_input_border/stac_input_border.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_input_decoration.g.dart';

/// Stac model that represents Flutter's [InputDecoration].
///
/// Provides labels, hints, helper/error text, and optional prefix/suffix
/// widgets for inputs like [TextField].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacInputDecoration(
///   labelText: 'Email',
///   hintText: 'name@example.com',
///   prefixText: '@',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "labelText": "Email",
///   "hintText": "name@example.com",
///   "prefixText": "@"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [InputDecoration documentation](https://api.flutter.dev/flutter/material/InputDecoration-class.html)
@JsonSerializable(explicitToJson: true)
class StacInputDecoration extends StacElement {
  /// Creates an input decoration with the specified properties.
  const StacInputDecoration({
    this.icon,
    this.labelText,
    this.labelStyle,
    this.floatingLabelBehavior,
    this.hintText,
    this.hintStyle,
    this.helperText,
    this.helperStyle,
    this.errorText,
    this.errorStyle,
    this.prefixIcon,
    this.prefixText,
    this.prefixStyle,
    this.suffixIcon,
    this.suffixText,
    this.suffixStyle,
    this.isDense,
    this.contentPadding,
    this.filled,
    this.fillColor,
    this.alignLabelWithHint,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
  });

  /// A widget to display before the decoration's container.
  final StacWidget? icon;

  /// Optional label text to display above/beside the input.
  final String? labelText;

  /// Text style for [labelText].
  final StacTextStyle? labelStyle;

  /// Controls when the label floats above the input.
  ///
  /// Supported values mirror Flutter's [FloatingLabelBehavior]: `auto`,
  /// `always`, and `never`.
  final String? floatingLabelBehavior;

  /// Optional placeholder text.
  final String? hintText;

  /// Text style for [hintText].
  final StacTextStyle? hintStyle;

  /// Optional helper and error texts.
  final String? helperText;

  /// Text style for [helperText].
  final StacTextStyle? helperStyle;

  /// Error text to display below the input field.
  final String? errorText;

  /// Text style for [errorText].
  final StacTextStyle? errorStyle;

  /// Optional prefix/suffix widgets and texts.
  /// Widget to display before the input content.
  final StacWidget? prefixIcon;

  /// Optional text to display before the input content.
  final String? prefixText;

  /// Text style for [prefixText].
  final StacTextStyle? prefixStyle;

  /// A widget to display after the editable part of the text field.
  final StacWidget? suffixIcon;

  /// Optional text to display after the editable part of the text field.
  final String? suffixText;

  /// Text style for [suffixText].
  final StacTextStyle? suffixStyle;

  /// Whether the decoration uses less vertical space.
  final bool? isDense;

  /// Padding for the decoration's container.
  final StacEdgeInsets? contentPadding;

  /// Whether the decoration's background is filled with [fillColor].
  final bool? filled;

  /// Background color used when [filled] is true.
  final StacColor? fillColor;

  /// Whether to align the floating label with the input's hint/center.
  /// Useful for multi-line inputs so the label isn't vertically centered.
  final bool? alignLabelWithHint;

  /// Border to show when the input has an error.
  final StacInputBorder? errorBorder;

  /// Border to show when the input is focused.
  final StacInputBorder? focusedBorder;

  /// Border to show when the input is focused and has an error.
  final StacInputBorder? focusedErrorBorder;

  /// Border to show when the input is disabled.
  final StacInputBorder? disabledBorder;

  /// Border to show when the input is enabled and not focused.
  final StacInputBorder? enabledBorder;

  /// Default border (used when no other border is specified).
  final StacInputBorder? border;

  /// Creates a [StacInputDecoration] from a JSON map.
  ///
  /// The [json] argument must be a valid JSON representation of a
  /// [StacInputDecoration].
  factory StacInputDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacInputDecorationFromJson(json);

  /// Converts this [StacInputDecoration] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacInputDecorationToJson(this);
}
