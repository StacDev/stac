import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_radio.g.dart';

/// A Stac model representing Flutter's Radio and CupertinoRadio widgets.
///
/// Displays a circular selection control that allows the user to select one
/// option from a set. The `radioType` controls whether a Material, Cupertino,
/// or adaptive variant is rendered by the parser.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacRadio(
///   radioType: StacRadioType.material,
///   value: 'a',
///   groupId: 'letter',
///   activeColor: StacColors.blue,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "radio",
///   "radioType": "material",
///   "value": "a",
///   "groupId": "letter",
///   "activeColor": "#2196F3"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Radio documentation (`https://api.flutter.dev/flutter/material/Radio-class.html`)
///  * Flutter's CupertinoRadio documentation (`https://api.flutter.dev/flutter/cupertino/CupertinoRadio-class.html`)
@JsonSerializable(explicitToJson: true)
class StacRadio extends StacWidget {
  /// Creates a [StacRadio].
  const StacRadio({
    this.radioType,
    this.value,
    this.groupId,
    this.onChanged,
    this.mouseCursor,
    this.toggleable,
    this.activeColor,
    this.inactiveColor,
    this.fillColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.autofocus,
    this.useCheckmarkStyle,
    this.useCupertinoCheckmarkStyle,
    this.enabled,
    this.backgroundColor,
    this.side,
    this.innerRadius,
  });

  /// Which platform style of radio to render.
  final StacRadioType? radioType;

  /// The value represented by this radio.
  final dynamic value;

  /// Identifier to associate this radio with a group in scope.
  /// Used by the parser to look up the current `groupValue`.
  final String? groupId;

  /// Action invoked when the user selects this radio.
  ///
  /// Type: [StacAction]
  final StacAction? onChanged;

  /// Mouse cursor to display when hovering this widget.
  final StacMouseCursor? mouseCursor;

  /// Whether this radio can be unselected.
  final bool? toggleable;

  /// The color used when this radio is selected.
  ///
  /// Type: [StacColor]
  final StacColor? activeColor;

  /// The color used when this radio is not selected (Cupertino only).
  ///
  /// Type: [StacColor]
  final StacColor? inactiveColor;

  /// The color of the radial reaction (Material) or fill (Cupertino).
  ///
  /// Type: [StacColor]
  final StacColor? fillColor;

  /// The color to use for the focus highlight.
  ///
  /// Type: [StacColor]
  final StacColor? focusColor;

  /// The color to use for the hover highlight.
  ///
  /// Type: [StacColor]
  final StacColor? hoverColor;

  /// The color to use for the overlay.
  ///
  /// Type: [StacColor]
  final StacColor? overlayColor;

  /// The splash radius of the radio's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Configures the minimum size of the area within which the radio may be pressed.
  final StacMaterialTapTargetSize? materialTapTargetSize;

  /// Defines how compact the radio's layout is.
  final StacVisualDensity? visualDensity;

  /// Whether this radio should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Whether to use a checkmark style for Cupertino radios.
  final bool? useCheckmarkStyle;

  /// Whether to use a Cupertino checkmark style when using adaptive radios.
  final bool? useCupertinoCheckmarkStyle;

  /// Whether this radio is enabled for user interaction.
  final bool? enabled;

  /// The background color of the radio.
  ///
  /// Type: [StacColor]
  final StacColor? backgroundColor;

  /// The border side of the radio.
  ///
  /// Type: [StacBorderSide]
  final StacBorderSide? side;

  /// The inner radius of the radio in logical pixels.
  @DoubleConverter()
  final double? innerRadius;

  /// Widget type identifier.
  @override
  String get type => WidgetType.radio.name;

  /// Creates a [StacRadio] from a JSON map.
  factory StacRadio.fromJson(Map<String, dynamic> json) =>
      _$StacRadioFromJson(json);

  /// Converts this [StacRadio] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacRadioToJson(this);
}
