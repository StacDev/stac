import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_check_box.g.dart';

/// A Stac model representing Flutter's [Checkbox] widget.
///
/// Displays a Material Design checkbox that can toggle between checked and
/// unchecked states. Supports tristate behavior, mouse cursor, colors, and
/// splash radius customizations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCheckBox(
///   id: 'acceptTerms',
///   value: false,
///   onChanged: StacSetValueAction(values: [{'key': 'acceptTerms', 'value': true}]),
///   activeColor: '#2196F3',
///   checkColor: '#FFFFFF',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "checkBox",
///   "id": "acceptTerms",
///   "value": false,
///   "onChanged": {"type": "setValue", "key": "acceptTerms"},
///   "activeColor": "#2196F3",
///   "checkColor": "#FFFFFF"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Checkbox documentation](https://api.flutter.dev/flutter/material/Checkbox-class.html)
@JsonSerializable(explicitToJson: true)
class StacCheckBox extends StacWidget {
  /// Creates a [StacCheckBox].
  const StacCheckBox({
    this.id,
    this.value,
    this.tristate,
    this.onChanged,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.focusColor,
    this.hoverColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.autofocus,
    this.isError,
  });

  /// Identifier used with form scope to store/read this checkbox's value.
  final String? id;

  /// Whether this checkbox is checked.
  final bool? value;

  /// Whether this checkbox supports three states (true, false, null).
  final bool? tristate;

  /// Action invoked when the user toggles the checkbox.
  ///
  /// Type: [StacAction]
  final StacAction? onChanged;

  /// The mouse cursor to use when hovering over this widget.
  ///
  /// Type: [StacMouseCursor]
  final StacMouseCursor? mouseCursor;

  /// The color to use for the checkbox when it is active.
  ///
  /// Type: [StacColor]
  final StacColor? activeColor;

  /// The fill color of the checkbox.
  ///
  /// Type: [StacColor]
  final StacColor? fillColor;

  /// The color of the check icon when the checkbox is checked.
  ///
  /// Type: [StacColor]
  final StacColor? checkColor;

  /// The color of the checkbox's focus highlight.
  ///
  /// Type: [StacColor]
  final StacColor? focusColor;

  /// The color of the checkbox when a pointer is hovering over it.
  ///
  /// Type: [StacColor]
  final StacColor? hoverColor;

  /// The overlay color for the checkbox's ink response.
  ///
  /// Type: [StacColor]
  final StacColor? overlayColor;

  /// The splash radius of the checkbox's splash in logical pixels.
  @DoubleConverter()
  final double? splashRadius;

  /// Configures the minimum size of the area within which the checkbox may be pressed.
  ///
  /// Type: [StacMaterialTapTargetSize]
  final StacMaterialTapTargetSize? materialTapTargetSize;

  /// Whether this checkbox should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Whether to display the checkbox in an error state.
  final bool? isError;

  /// Widget type identifier.
  @override
  String get type => WidgetType.checkBox.name;

  /// Creates a [StacCheckBox] from a JSON map.
  factory StacCheckBox.fromJson(Map<String, dynamic> json) =>
      _$StacCheckBoxFromJson(json);

  /// Converts this [StacCheckBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacCheckBoxToJson(this);
}
