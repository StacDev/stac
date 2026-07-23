import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_box_decoration.g.dart';

/// A Stac representation of box decoration for styling containers.
///
/// This class provides comprehensive decoration options for boxes including
/// colors, images, borders, shadows, gradients, and shapes. It corresponds
/// to Flutter's BoxDecoration class.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacBoxDecoration(
///   color: StacColors.white,
///   border: StacBorder(
///     color: StacColors.grey,
///     width: 1.0,
///   ),
///   borderRadius: StacBorderRadius.all(8.0),
///   boxShadow: [
///     StacBoxShadow(
///       color: StacColors.black,
///       blurRadius: 4.0,
///       offset: StacOffset(dx: 0, dy: 2),
///     ),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#FFFFFF",
///   "border": {
///     "color": "#808080",
///     "width": 1.0
///   },
///   "borderRadius": {"all": 8.0},
///   "boxShadow": [{
///     "color": "#000000",
///     "blurRadius": 4.0,
///     "offset": {"dx": 0, "dy": 2}
///   }]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBoxDecoration extends StacElement {
  /// Creates a box decoration with optional styling properties.
  const StacBoxDecoration({
    this.color,
    this.image,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape,
  });

  /// The background color of the box.
  final StacColor? color;

  /// A background image for the box.
  final StacDecorationImage? image;

  /// The border to draw around the box.
  final StacBorder? border;

  /// The border radius for rounded corners.
  final StacBorderRadius? borderRadius;

  /// A list of shadows to cast behind the box.
  final List<StacBoxShadow>? boxShadow;

  /// A gradient to use as the background.
  ///
  /// If both [color] and [gradient] are specified, the gradient takes precedence.
  final StacGradient? gradient;

  /// The blend mode to apply when painting the background color or gradient.
  final StacBlendMode? backgroundBlendMode;

  /// The shape of the box (rectangle or circle).
  final StacBoxShape? shape;

  /// Creates a [StacBoxDecoration] from a JSON map.
  factory StacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$StacBoxDecorationFromJson(json);

  /// Converts this [StacBoxDecoration] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacBoxDecorationToJson(this);
}
