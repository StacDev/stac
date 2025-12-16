import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_tool_tip.g.dart';

/// A Stac model representing Flutter's [Tooltip] widget.
///
/// Tooltips provide text labels which help explain the function of a button
/// or other user interface action. Wrap the button in a Tooltip widget
/// and provide a message which will be shown when the widget is long pressed.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTooltip(
///   message: 'I am a Tooltip',
///   child: StacIcon(icon: 'info'),
///   decoration: StacBoxDecoration(
///     color: StacColors.blue,
///     borderRadius: StacBorderRadius.circular(4),
///   ),
///   textStyle: StacTextStyle(color: StacColors.white),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "tooltip",
///   "message": "I am a Tooltip",
///   "child": { "type": "icon", "icon": "info" },
///   "waitDuration": { "milliseconds": 500 },
///   "preferBelow": false
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Tooltip documentation (`https://api.flutter.dev/flutter/material/Tooltip-class.html`)
@JsonSerializable(explicitToJson: true)
class StacTooltip extends StacWidget {
  /// Creates a [StacTooltip] that displays a text label on long press.
  const StacTooltip({
    this.message,
    this.richMessage,
    this.constraints,
    this.padding,
    this.margin,
    this.verticalOffset,
    this.preferBelow,
    this.excludeFromSemantics,
    this.decoration,
    this.textStyle,
    this.textAlign,
    this.waitDuration,
    this.showDuration,
    this.exitDuration,
    this.enableTapToDismiss = true,
    this.triggerMode,
    this.enableFeedback,
    this.child,
  });

  /// The text to display in the tooltip.
  final String? message;

  /// The rich text to display in the tooltip.
  ///
  /// If [richMessage] is non-null, [message] is ignored.
  final StacTextSpan? richMessage;

  /// The additional constraints to apply to the tooltip's [child].
  ///
  /// This allows specifying the minimum and maximum width and height of the
  /// tooltip. If null, the tooltip will resize itself to fit its content.
  final StacBoxConstraints? constraints;

  /// The amount of space by which to inset the tooltip's [child].
  final StacEdgeInsets? padding;

  /// The empty space that surrounds the tooltip.
  ///
  /// Defines the tooltip's outer margins, for example when the tooltip is
  /// constrained by the edge of the screen.
  final StacEdgeInsets? margin;

  /// The vertical gap between the widget and the displayed tooltip.
  ///
  /// When [preferBelow] is set to true and the tooltip has sufficient space
  /// to display itself, this property defines how much vertical space
  /// there is between the bottom of the widget and the top of the tooltip.
  final double? verticalOffset;

  /// Whether the tooltip defaults to being displayed below the widget.
  ///
  /// If there is insufficient space to display the tooltip in the preferred
  /// direction, the tooltip will be displayed in the opposite direction.
  final bool? preferBelow;

  /// Whether the tooltip's [message] should be excluded from the semantics
  /// tree.
  final bool? excludeFromSemantics;

  /// The visual decoration to use for the tooltip.
  ///
  /// If null, the tooltip's background color is determined by [ThemeData.tooltipTheme].
  final StacBoxDecoration? decoration;

  /// The style to use for the message of the tooltip.
  ///
  /// If null, the style is determined by [ThemeData.tooltipTheme].
  final StacTextStyle? textStyle;

  /// How the message of the tooltip is aligned horizontally.
  final StacTextAlign? textAlign;

  /// The length of time that a pointer must hover over a tooltip's widget
  /// before the tooltip will be shown.
  ///
  /// Defined in milliseconds.
  final StacDuration? waitDuration;

  /// The length of time that the tooltip will be shown after a long press
  /// is released (if triggerMode is StacTooltipTriggerMode.longPress) or
  /// a tap is released (if triggerMode is StacTooltipTriggerMode.tap).
  ///
  /// Defined in milliseconds.
  final StacDuration? showDuration;

  /// The length of time that the tooltip takes to fade out after the
  /// [showDuration] has passed.
  ///
  /// Defined in milliseconds.
  final StacDuration? exitDuration;

  /// Whether the tooltip can be dismissed by tapping the screen.
  final bool enableTapToDismiss;

  /// Defines how this widget can be triggered.
  /// Defaults to [StacTooltipTriggerMode.longPress] in the Flutter widget.
  final StacTooltipTriggerMode? triggerMode;

  /// Whether the tooltip should provide acoustic and/or haptic feedback.
  ///
  /// For example, on Android a tap will produce a clicking sound and a
  /// long-press will produce a short vibration, when feedback is enabled.
  final bool? enableFeedback;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  @override
  String get type => WidgetType.tooltip.name;

  /// Creates a [StacTooltip] from a JSON map.
  factory StacTooltip.fromJson(Map<String, dynamic> json) =>
      _$StacTooltipFromJson(json);

  /// Converts this [StacTooltip] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacTooltipToJson(this);
}
