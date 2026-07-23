import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_ink_well.g.dart';

/// A Stac model representing Flutter's [InkWell] widget.
///
/// A rectangular area of a Material that responds to touch.
///
/// ```dart
/// StacInkWell(
///   onTap: StacAction(type: 'navigate', args: {'path': '/details'}),
///   splashColor: StacColor(value: 0xFF00FF00), // Green splash
///   child: StacText(data: 'Tap Me'),
///   radius: 10.0,
/// )
/// ```
///
/// ```json
/// {
///   "type": "inkWell",
///   "onTap": {"type": "navigate", "args": {"path": "/details"}},
///   "splashColor": {"value": 4278255360},
///   "child": {"type": "text", "data": "Tap Me"},
///   "radius": 10.0
/// }
/// ```
@JsonSerializable()
class StacInkWell extends StacWidget {
  /// Creates a [StacInkWell] with the given properties.
  const StacInkWell({
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onSecondaryTap,
    this.onSecondaryTapUp,
    this.onSecondaryTapDown,
    this.onSecondaryTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.overlayColor,
    this.splashColor,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.enableFeedback,
    this.excludeFromSemantics,
    this.canRequestFocus,
    this.onFocusChange,
    this.autofocus,
    this.hoverDuration,
  });

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Called when the user taps this part of the material.
  final StacAction? onTap;

  /// Called when the user double taps this part of the material.
  final StacAction? onDoubleTap;

  /// Called when the user long-presses on this part of the material.
  final StacAction? onLongPress;

  /// Called when the user taps down this part of the material.
  final StacAction? onTapDown;

  /// Called when the user releases a tap that was previously in contact with this part of the material.
  final StacAction? onTapUp;

  /// Called when the user cancels a tap that was previously in contact with this part of the material.
  final StacAction? onTapCancel;

  /// Called when the user taps the secondary button on this part of the material.
  final StacAction? onSecondaryTap;

  /// Called when the user releases a secondary button tap that was previously in contact with this part of the material.
  final StacAction? onSecondaryTapUp;

  /// Called when the user taps down the secondary button on this part of the material.
  final StacAction? onSecondaryTapDown;

  /// Called when the user cancels a secondary button tap that was previously in contact with this part of the material.
  final StacAction? onSecondaryTapCancel;

  /// Called when the highlight state of this widget changes.
  final StacAction? onHighlightChanged;

  /// Called when a pointer enters or exits the ink response area.
  final StacAction? onHover;

  /// The cursor for a mouse pointer when it enters or is hovering over the widget.
  final StacMouseCursor? mouseCursor;

  /// The color of the ink response when the widget has input focus.
  final StacColor? focusColor;

  /// The color of the ink response when a pointer is hovering over it.
  final StacColor? hoverColor;

  /// The highlight color of the ink response when pressed.
  final StacColor? highlightColor;

  /// The overlay color of the ink response.
  final StacColor?
  overlayColor; // Note: In Flutter this is MaterialStateProperty<Color?>. StacColor simplifies this for now.

  /// The splash color of the ink response.
  final StacColor? splashColor;

  /// The radius of the ink splash.
  @DoubleConverter()
  final double? radius;

  /// The border radius of the containing rectangle.
  final StacBorderRadius? borderRadius;

  /// The custom border to match the ink response.
  final StacShapeBorder? customBorder;

  /// Whether detected gestures should provide acoustic and/or haptic feedback.
  final bool? enableFeedback;

  /// Whether to exclude the gestures introduced by this widget from the semantics tree.
  final bool? excludeFromSemantics;

  /// Whether this widget can be focused.
  final bool? canRequestFocus;

  /// Handler for focus state changes.
  final StacAction? onFocusChange;

  /// Whether this widget should focus itself if nothing else is already focused.
  final bool? autofocus;

  /// The duration for the hover state to be considered active.
  final StacDuration? hoverDuration;

  /// Describes the type of this widget for JSON serialization.
  @override
  String get type => WidgetType.inkWell.name;

  /// Creates a [StacInkWell] from a JSON map.
  factory StacInkWell.fromJson(Map<String, dynamic> json) =>
      _$StacInkWellFromJson(json);

  /// Converts this [StacInkWell] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacInkWellToJson(this);
}
