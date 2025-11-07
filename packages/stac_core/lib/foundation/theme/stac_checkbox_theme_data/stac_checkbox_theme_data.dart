import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_visual_density/stac_visual_density.dart';
import 'package:stac_core/foundation/interaction/stac_mouse_cursor.dart';
import 'package:stac_core/foundation/theme/stac_button_style/stac_button_style.dart';

part 'stac_checkbox_theme_data.g.dart';

/// A Stac model representing Flutter's [CheckboxThemeData].
///
/// Defines the theme for checkboxes, including colors, shape, size, and interaction properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCheckboxThemeData(
///   fillColor: '#2196F3',
///   checkColor: '#FFFFFF',
///   shape: StacRoundedRectangleBorder(...),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "fillColor": "#2196F3",
///   "checkColor": "#FFFFFF",
///   "overlayColor": "#E3F2FD",
///   "splashRadius": 20.0,
///   "materialTapTargetSize": "padded",
///   "visualDensity": "standard"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacCheckboxThemeData implements StacElement {
  /// Creates a [StacCheckboxThemeData] with the given properties.
  const StacCheckboxThemeData({
    this.mouseCursor,
    this.fillColor,
    this.checkColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.shape,
    this.side,
  });

  /// The mouse cursor to use when hovering over the checkbox.
  final StacMouseCursor? mouseCursor;

  /// The color to fill the checkbox with.
  final String? fillColor;

  /// The color of the check icon.
  final String? checkColor;

  /// The color of the overlay shown when the checkbox is pressed.
  final String? overlayColor;

  /// The radius of the splash effect.
  final double? splashRadius;

  /// The minimum size of the tap target.
  final StacMaterialTapTargetSize? materialTapTargetSize;

  /// The visual density of the checkbox.
  final StacVisualDensity? visualDensity;

  /// The shape of the checkbox's border.
  final StacShapeBorder? shape;

  /// The border side of the checkbox.
  final StacBorderSide? side;

  /// Creates a [StacCheckboxThemeData] from JSON.
  factory StacCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCheckboxThemeDataFromJson(json);

  /// Converts this checkbox theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacCheckboxThemeDataToJson(this);
}
