import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_switch.g.dart';

/// A Stac model representing Flutter's [Switch] and [CupertinoSwitch] widgets.
///
/// Displays a toggleable switch that can be turned on or off. The `switchType`
/// controls whether a Material, Cupertino, or adaptive variant is rendered by
/// the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacSwitch(
///   switchType: StacSwitchType.material,
///   value: true,
///   onChanged: StacSetValueAction(values: [{'key': 'wifi', 'value': false}]),
///   activeColor: StacColors.green,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "switch",
///   "switchType": "material",
///   "value": true,
///   "onChanged": {"type": "setValue", "key": "wifi", "value": false},
///   "activeColor": "#4CAF50"
/// }
/// ```
/// {@end-tool}
@JsonSerializable(explicitToJson: true)
class StacSwitch extends StacWidget {
  /// Creates a [StacSwitch].
  const StacSwitch({
    this.switchType,
    this.value,
    this.onChanged,
    this.autofocus,
    this.activeThumbColor,
    this.activeTrackColor,
    this.focusColor,
    this.hoverColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.onLabelColor,
    this.offLabelColor,
    this.splashRadius,
    this.dragStartBehavior,
    this.overlayColor,
    this.thumbColor,
    this.trackColor,
    this.materialTapTargetSize,
    this.trackOutlineColor,
    this.trackOutlineWidth,
    this.thumbIcon,
    this.inactiveThumbImage,
    this.activeThumbImage,
    this.applyTheme,
    this.applyCupertinoTheme,
  });

  /// Which platform style of switch to render.
  final StacSwitchType? switchType;

  /// Whether this switch is on.
  final bool? value;

  /// Action invoked when the user toggles the switch.
  ///
  /// Type: [StacAction]
  final StacAction? onChanged;

  /// Whether this switch should focus itself if nothing else is focused.
  final bool? autofocus;

  /// The color to use when this switch is on.
  ///
  /// Type: [StacColor]
  final StacColor? activeThumbColor;

  /// The color to use for the track when this switch is on (Material only).
  ///
  /// Type: [StacColor]
  final StacColor? activeTrackColor;

  /// The color to use for the focus highlight.
  ///
  /// Type: [StacColor]
  final StacColor? focusColor;

  /// The color to use for the hover highlight.
  ///
  /// Type: [StacColor]
  final StacColor? hoverColor;

  /// The color to use for the thumb when this switch is off (Material only).
  ///
  /// Type: [StacColor]
  final StacColor? inactiveThumbColor;

  /// The color to use for the track when this switch is off (Material only).
  ///
  /// Type: [StacColor]
  final StacColor? inactiveTrackColor;

  /// The color to use for the ON label (Cupertino only).
  ///
  /// Type: [StacColor]
  final StacColor? onLabelColor;

  /// The color to use for the OFF label (Cupertino only).
  ///
  /// Type: [StacColor]
  final StacColor? offLabelColor;

  /// The splash radius of the switch's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Determines when a drag gesture should start.
  ///
  /// Type: [StacDragStartBehavior]
  final StacDragStartBehavior? dragStartBehavior;

  /// The overlay color for the switch's ink response.
  ///
  /// Type: [StacColor]
  final StacColor? overlayColor;

  /// The color of the switch thumb for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [StacColor]
  final StacColor? thumbColor;

  /// The color of the switch track for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [StacColor]
  final StacColor? trackColor;

  /// Configures the minimum size of the area within which the switch may be pressed.
  ///
  /// Type: [StacMaterialTapTargetSize]
  final StacMaterialTapTargetSize? materialTapTargetSize;

  /// The outline color of the track for Material (via MaterialStateProperty uniform value).
  ///
  /// Type: [StacColor]
  final StacColor? trackOutlineColor;

  /// The outline width of the track for Material (via MaterialStateProperty uniform value).
  @DoubleConverter()
  final double? trackOutlineWidth;

  /// The icon to display on the thumb for Material (via MaterialStateProperty uniform value).
  /// Provide an [Icon] widget.
  final StacWidget? thumbIcon;

  /// Network image URL to display on the thumb when the switch is off (Material only).
  final String? inactiveThumbImage;

  /// Network image URL to display on the thumb when the switch is on (Material only).
  final String? activeThumbImage;

  /// Whether to apply the current Cupertino theme to the [CupertinoSwitch].
  final bool? applyTheme;

  /// Whether to apply the current Cupertino theme when using an adaptive switch.
  final bool? applyCupertinoTheme;

  /// Widget type identifier.
  @override
  String get type => 'switch';

  /// Creates a [StacSwitch] from a JSON map.
  factory StacSwitch.fromJson(Map<String, dynamic> json) =>
      _$StacSwitchFromJson(json);

  /// Converts this [StacSwitch] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSwitchToJson(this);
}
