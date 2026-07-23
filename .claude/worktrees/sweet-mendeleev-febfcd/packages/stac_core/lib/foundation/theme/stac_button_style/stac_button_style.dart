import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/alignment/stac_alignment.dart';
import 'package:stac_core/foundation/animation/stac_duration/stac_duration.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/geometry/stac_size/stac_size.dart';
import 'package:stac_core/foundation/geometry/stac_visual_density/stac_visual_density.dart';
import 'package:stac_core/foundation/interaction/stac_mouse_cursor.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_button_style.g.dart';

/// Icon alignment options for buttons.
///
/// Defines where the icon should be positioned relative to the button text.
enum StacIconAlignment {
  /// Icon appears at the start (left in LTR, right in RTL).
  start,

  /// Icon appears at the end (right in LTR, left in RTL).
  end,
}

/// Material tap target size options.
///
/// Defines the minimum size of the tap target area.
enum StacMaterialTapTargetSize {
  /// Tap target is padded to meet minimum size requirements.
  padded,

  /// Tap target shrinks to fit the button content.
  shrinkWrap,
}

/// A Stac model representing Flutter's ButtonStyle.
///
/// Defines the visual properties of Material buttons like ElevatedButton,
/// TextButton, OutlinedButton, etc.
///
/// ```dart
/// StacButtonStyle(
///   foregroundColor: StacColors.white,
///   backgroundColor: StacColors.blue,
///   elevation: 4.0,
///   padding: StacEdgeInsets.all(16.0),
/// )
/// ```
///
/// ```json
/// {
///   "foregroundColor": "#FFFFFF",
///   "backgroundColor": "#2196F3",
///   "elevation": 4.0,
///   "padding": {"all": 16.0}
/// }
/// ```
@JsonSerializable()
class StacButtonStyle extends StacElement {
  /// Creates a [StacButtonStyle] with the given properties.
  const StacButtonStyle({
    this.foregroundColor,
    this.backgroundColor,
    this.disabledForegroundColor,
    this.disabledBackgroundColor,
    this.shadowColor,
    this.surfaceTintColor,
    this.iconColor,
    this.iconSize,
    this.iconAlignment,
    this.disabledIconColor,
    this.overlayColor,
    this.elevation,
    this.textStyle,
    this.padding,
    this.minimumSize,
    this.fixedSize,
    this.maximumSize,
    this.side,
    this.shape,
    this.enableFeedback,
    this.alignment,
    this.tapTargetSize,
    this.animationDuration,
    this.enabledMouseCursor,
    this.disabledMouseCursor,
    this.visualDensity,
  });

  /// The color to use for this button's text and icons.
  final StacColor? foregroundColor;

  /// The background fill color.
  final StacColor? backgroundColor;

  /// The foreground color to use when this button is disabled.
  final StacColor? disabledForegroundColor;

  /// The background color to use when this button is disabled.
  final StacColor? disabledBackgroundColor;

  /// The shadow color of the button's [Material].
  final StacColor? shadowColor;

  /// The surface tint color of the button's [Material].
  final StacColor? surfaceTintColor;

  /// The color to use for this button's icons.
  final StacColor? iconColor;

  /// The size of this button's icon.
  final double? iconSize;

  /// The alignment of the button's icon relative to its text label.
  final StacIconAlignment? iconAlignment;

  /// The color to use for this button's icons when the button is disabled.
  final StacColor? disabledIconColor;

  /// The overlay color of the button's [InkWell].
  final StacColor? overlayColor;

  /// The elevation of the button's [Material].
  final double? elevation;

  /// The style to use for this button's [Text] widget descendants.
  final StacTextStyle? textStyle;

  /// The internal padding for the button's [child].
  final StacEdgeInsets? padding;

  /// The minimum size of the button.
  /// Represented as {"width": 64.0, "height": 36.0}
  final StacSize? minimumSize;

  /// The button's size.
  /// Represented as {"width": 200.0, "height": 50.0}
  final StacSize? fixedSize;

  /// The maximum size of the button.
  /// Represented as {"width": 300.0, "height": 100.0}
  final StacSize? maximumSize;

  /// The color and weight of the button's outline.
  final StacBorderSide? side;

  /// The shape of the button's border.
  final StacShapeBorder? shape;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// Typically used to size the button's [child].
  final StacAlignment? alignment;

  /// Configures the minimum size of the area within which the button may be pressed.
  final StacMaterialTapTargetSize? tapTargetSize;

  /// Defines the duration of animated changes for shape and elevation.
  /// Duration in milliseconds.
  final StacDuration? animationDuration;

  /// The mouse cursor to use when the button is enabled.
  final StacMouseCursor? enabledMouseCursor;

  /// The mouse cursor to use when the button is disabled.
  final StacMouseCursor? disabledMouseCursor;

  /// The visual density of the button's [Material].
  final StacVisualDensity? visualDensity;

  /// Creates a [StacButtonStyle] from JSON.
  factory StacButtonStyle.fromJson(Map<String, dynamic> json) =>
      _$StacButtonStyleFromJson(json);

  /// Converts this button style to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacButtonStyleToJson(this);
}
