import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/alignment/stac_alignment.dart';
import 'package:stac_core/foundation/colors/stac_color/stac_colors.dart';

part 'stac_gradient.g.dart';

/// Types of gradients supported by the Stac framework.
enum StacGradientType {
  /// A linear gradient that transitions colors along a straight line.
  linear,

  /// A radial gradient that transitions colors in a circular pattern from center outward.
  radial,

  /// A sweep gradient that transitions colors in a circular sweep around a center point.
  sweep,
}

/// Tile modes that determine how gradients handle areas outside their defined bounds.
enum StacTileMode {
  /// Clamp the gradient to the edge colors.
  clamp,

  /// Repeat the gradient pattern.
  repeated,

  /// Mirror the gradient pattern.
  mirror,

  /// Use transparent pixels outside the gradient bounds.
  decal,
}

/// A Stac representation of gradients for visual effects.
///
/// This class supports linear, radial, and sweep gradients with customizable
/// colors, stops, and positioning. Gradients can be used for backgrounds,
/// text styling, and other visual effects.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacLinearGradient(
///   colors: [StacColors.blue, StacColors.red],
///   stops: [0.0, 1.0],
///   begin: StacAlignment.topLeft,
///   end: StacAlignment.bottomRight,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "gradientType": "linear",
///   "colors": ["#2196F3", "#F44336"],
///   "stops": [0.0, 1.0],
///   "begin": "topLeft",
///   "end": "bottomRight"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacGradient {
  /// Creates a gradient with optional configuration parameters.
  const StacGradient({
    this.gradientType,
    this.colors,
    this.stops,
    this.begin,
    this.end,
    this.center,
    this.focal,
    this.tileMode,
    this.focalRadius,
    this.radius,
    this.startAngle,
    this.endAngle,
  });

  /// Creates a linear gradient.
  ///
  /// Example:
  /// ```dart
  /// StacLinearGradient(
  ///   colors: [StacColors.blue, StacColors.red],
  ///   begin: StacAlignment.topLeft,
  ///   end: StacAlignment.bottomRight,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const StacGradient.linear({
    required this.colors,
    this.stops,
    this.begin,
    this.end,
    this.tileMode,
  }) : gradientType = StacGradientType.linear,
       center = null,
       focal = null,
       focalRadius = null,
       radius = null,
       startAngle = null,
       endAngle = null;

  /// Creates a radial gradient.
  ///
  /// Example:
  /// ```dart
  /// StacRadialGradient(
  ///   colors: [StacColors.blue, StacColors.red],
  ///   center: StacAlignment.center,
  ///   radius: 0.5,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const StacGradient.radial({
    required this.colors,
    this.stops,
    this.center,
    this.focal,
    this.focalRadius,
    this.radius,
    this.tileMode,
  }) : gradientType = StacGradientType.radial,
       begin = null,
       end = null,
       startAngle = null,
       endAngle = null;

  /// Creates a sweep gradient.
  ///
  /// Example:
  /// ```dart
  /// StacSweepGradient(
  ///   colors: [StacColors.blue, StacColors.red],
  ///   center: StacAlignment.center,
  ///   startAngle: 0.0,
  ///   endAngle: 3.14159,
  ///   stops: [0.0, 1.0],
  /// )
  /// ```
  const StacGradient.sweep({
    required this.colors,
    this.stops,
    this.center,
    this.startAngle,
    this.endAngle,
    this.tileMode,
  }) : gradientType = StacGradientType.sweep,
       begin = null,
       end = null,
       focal = null,
       focalRadius = null,
       radius = null;

  /// The type of gradient (linear, radial, or sweep).
  final StacGradientType? gradientType;

  /// The list of colors used in the gradient.
  final List<StacColor>? colors;

  /// The stop positions for each color (values between 0.0 and 1.0).
  final List<double>? stops;

  /// The starting alignment for linear gradients.
  final StacAlignment? begin;

  /// The ending alignment for linear gradients.
  final StacAlignment? end;

  /// The center alignment for radial and sweep gradients.
  final StacAlignment? center;

  /// The focal point alignment for radial gradients.
  final StacAlignment? focal;

  /// How the gradient should handle areas outside its bounds.
  final StacTileMode? tileMode;

  /// The radius of the focal point for radial gradients.
  final double? focalRadius;

  /// The radius for radial gradients.
  final double? radius;

  /// The starting angle for sweep gradients (in radians).
  final double? startAngle;

  /// The ending angle for sweep gradients (in radians).
  final double? endAngle;

  /// Creates a [StacGradient] from a JSON map.
  factory StacGradient.fromJson(Map<String, dynamic> json) =>
      _$StacGradientFromJson(json);

  /// Converts this [StacGradient] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacGradientToJson(this);
}

/// A linear gradient that transitions colors along a straight line.
///
/// This is a convenience constructor for [StacGradient.linear] for a more Flutter-like API.
/// Colors transition from [begin] to [end] alignment points.
///
/// Example:
/// ```dart
/// StacLinearGradient(
///   colors: [StacColors.blue, StacColors.red],
///   begin: StacAlignment.topLeft,
///   end: StacAlignment.bottomRight,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const StacLinearGradient = StacGradient.linear;

/// A radial gradient that transitions colors in a circular pattern from center outward.
///
/// This is a convenience constructor for [StacGradient.radial] for a more Flutter-like API.
/// Colors transition from the center point outward in a circular pattern.
///
/// Example:
/// ```dart
/// StacRadialGradient(
///   colors: [StacColors.blue, StacColors.red],
///   center: StacAlignment.center,
///   radius: 0.5,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const StacRadialGradient = StacGradient.radial;

/// A sweep gradient that transitions colors in a circular sweep around a center point.
///
/// This is a convenience constructor for [StacGradient.sweep] for a more Flutter-like API.
/// Colors transition in a circular sweep around the center point.
///
/// Example:
/// ```dart
/// StacSweepGradient(
///   colors: [StacColors.blue, StacColors.red],
///   center: StacAlignment.center,
///   startAngle: 0.0,
///   endAngle: 3.14159,
///   stops: [0.0, 1.0],
/// )
/// ```
// ignore: constant_identifier_names
const StacSweepGradient = StacGradient.sweep;
