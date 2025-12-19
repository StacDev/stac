import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_tool_tip_theme_data.g.dart';

/// A Stac model representing Flutter's [TooltipThemeData].
///
/// Defines default visual and behavioral properties for [Tooltip] widgets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTooltipThemeData(
///   padding: StacEdgeInsets.all(8),
///   textStyle: StacTextStyle(color: '#FFFFFF'),
///   preferBelow: true,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "padding": { "all": 8 },
///   "margin": { "horizontal": 12 },
///   "verticalOffset": 24,
///   "preferBelow": true,
///   "textStyle": { "color": "#FFFFFF", "fontSize": 12 },
///   "triggerMode": "longPress"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacTooltipThemeData implements StacElement {
  /// Creates a [StacTooltipThemeData] with the given properties.
  const StacTooltipThemeData({
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
    this.triggerMode,
    this.enableFeedback,
  });

  /// Size constraints for the tooltip.
  final StacBoxConstraints? constraints;

  /// Padding inside the tooltip.
  final StacEdgeInsets? padding;

  /// Margin around the tooltip.
  final StacEdgeInsets? margin;

  /// Vertical gap between widget and tooltip.
  final double? verticalOffset;

  /// Whether tooltip prefers to appear below the widget.
  final bool? preferBelow;

  /// Whether tooltip text is excluded from semantics.
  final bool? excludeFromSemantics;

  /// Tooltip decoration.
  final StacBoxDecoration? decoration;

  /// Tooltip text style.
  final StacTextStyle? textStyle;

  /// Tooltip text alignment.
  final StacTextAlign? textAlign;

  /// Delay before showing tooltip.
  final StacDuration? waitDuration;

  /// Duration tooltip remains visible.
  final StacDuration? showDuration;

  /// Delay before tooltip disappears.
  final StacDuration? exitDuration;

  /// Trigger mode for tooltip.
  final StacTooltipTriggerMode? triggerMode;

  /// Whether to provide acoustic/haptic feedback.
  final bool? enableFeedback;

  /// Creates a [StacTooltipThemeData] from JSON.
  factory StacTooltipThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacTooltipThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTooltipThemeDataToJson(this);
}
