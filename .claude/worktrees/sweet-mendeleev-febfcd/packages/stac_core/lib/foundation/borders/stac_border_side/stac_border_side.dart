import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';

part 'stac_border_side.g.dart';

/// A Stac representation of a single border side.
///
/// This class defines the appearance of one side of a border, including its
/// color, width, stroke alignment, and style. It can be used to create
/// individual border sides for containers and other UI elements.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacBorderSide(
///   color: StacColors.blue,
///   width: 2.0,
///   strokeAlign: 0.0,
///   borderStyle: StacBorderStyle.solid,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#2196F3",
///   "width": 2.0,
///   "strokeAlign": 0.0,
///   "borderStyle": "solid"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBorderSide implements StacElement {
  /// Creates a border side with optional styling properties.
  ///
  /// All parameters are optional and will use default values when not specified.
  const StacBorderSide({
    this.color,
    this.width,
    this.strokeAlign,
    this.borderStyle,
  });

  /// The color of the border side.
  ///
  /// If null, the border will use the default color from the theme.
  final StacColor? color;

  /// The width of the border side in logical pixels.
  ///
  /// If null, the border will use a default width (typically 1.0).
  final double? width;

  /// The stroke alignment of the border side.
  ///
  /// Controls where the border is drawn relative to the edge:
  /// - -1.0: Inside the edge
  /// - 0.0: Centered on the edge (default)
  /// - 1.0: Outside the edge
  final double? strokeAlign;

  /// The style of the border side.
  ///
  /// Determines how the border is rendered (solid, dashed, dotted, etc.).
  final StacBorderStyle? borderStyle;

  /// A constant representing no border.
  ///
  /// This is a convenience constant for creating borders with no visible side.
  static const none = StacBorderSide(
    width: 0,
    borderStyle: StacBorderStyle.none,
  );

  /// Creates a [StacBorderSide] from JSON.
  factory StacBorderSide.fromJson(Map<String, dynamic> json) =>
      _$StacBorderSideFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBorderSideToJson(this);
}
