import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_floating_action_button_theme_data.g.dart';

/// A Stac model representing Flutter's [FloatingActionButtonThemeData].
///
/// Defines the theme for floating action buttons, including colors, elevation,
/// size, and extended button properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacFloatingActionButtonThemeData(
///   backgroundColor: '#2196F3',
///   foregroundColor: '#FFFFFF',
///   elevation: 6.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#2196F3",
///   "foregroundColor": "#FFFFFF",
///   "elevation": 6.0,
///   "focusElevation": 8.0,
///   "hoverElevation": 4.0,
///   "iconSize": 24.0,
///   "enableFeedback": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFloatingActionButtonThemeData implements StacElement {
  /// Creates a [StacFloatingActionButtonThemeData] with the given properties.
  const StacFloatingActionButtonThemeData({
    this.foregroundColor,
    this.backgroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.highlightElevation,
    this.shape,
    this.enableFeedback,
    this.iconSize,
    this.sizeConstraints,
    this.extendedIconLabelSpacing,
    this.extendedPadding,
    this.extendedTextStyle,
  });

  /// The default color for the floating action button's icon.
  final String? foregroundColor;

  /// The background color of the floating action button.
  final String? backgroundColor;

  /// The color to use when the floating action button has input focus.
  final String? focusColor;

  /// The color to use when the floating action button is being hovered over.
  final String? hoverColor;

  /// The splash color for the floating action button.
  final String? splashColor;

  /// The z-coordinate at which to place this floating action button relative to its parent.
  final double? elevation;

  /// The z-coordinate at which to place this floating action button when it has focus.
  final double? focusElevation;

  /// The z-coordinate at which to place this floating action button when it's being hovered over.
  final double? hoverElevation;

  /// The z-coordinate at which to place this floating action button when it's disabled.
  final double? disabledElevation;

  /// The z-coordinate at which to place this floating action button when it's highlighted.
  final double? highlightElevation;

  /// The shape of this button's [Material].
  final StacShapeBorder? shape;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// The size of the floating action button's icon.
  final double? iconSize;

  /// Layout constraints for the regular-size floating action button.
  final StacBoxConstraints? sizeConstraints;

  /// The spacing between the icon and label in an extended floating action button.
  final double? extendedIconLabelSpacing;

  /// The padding for an extended floating action button.
  final StacEdgeInsets? extendedPadding;

  /// The text style for an extended floating action button's label.
  final StacTextStyle? extendedTextStyle;

  /// Creates a [StacFloatingActionButtonThemeData] from JSON.
  factory StacFloatingActionButtonThemeData.fromJson(
    Map<String, dynamic> json,
  ) => _$StacFloatingActionButtonThemeDataFromJson(json);

  /// Converts this floating action button theme to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$StacFloatingActionButtonThemeDataToJson(this);
}
