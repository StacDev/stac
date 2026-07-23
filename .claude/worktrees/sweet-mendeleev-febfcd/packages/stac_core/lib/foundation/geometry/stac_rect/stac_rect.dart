import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/geometry/stac_offset/stac_offset.dart';

part 'stac_rect.g.dart';

/// Types of rectangle construction methods supported by StacRect.
enum StacRectType {
  /// Create a rectangle from center point and dimensions.
  fromCenter,

  /// Create a rectangle from a circle's bounding box.
  fromCircle,

  /// Create a rectangle from left, top, right, bottom coordinates.
  fromLTRB,

  /// Create a rectangle from left, top, width, height values.
  fromLTWH,

  /// Create a rectangle from two corner points.
  fromPoints,
}

/// A Stac representation of rectangles for geometric operations.
///
/// This class supports multiple construction methods for creating rectangles,
/// including from coordinates, dimensions, center points, and circles.
/// Different construction types use different parameter combinations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// // Rectangle from coordinates
/// StacRect(
///   rectType: StacRectType.fromLTRB,
///   left: 10.0,
///   top: 20.0,
///   right: 100.0,
///   bottom: 80.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "rectType": "fromLTRB",
///   "left": 10.0,
///   "top": 20.0,
///   "right": 100.0,
///   "bottom": 80.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacRect implements StacElement {
  /// Creates a rectangle using the specified construction method and parameters.
  StacRect({
    required this.rectType,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    this.center,
    this.radius,
    this.a,
    this.b,
  });

  /// The method used to construct this rectangle.
  final StacRectType rectType;

  /// The left coordinate (used with fromLTRB, fromLTWH).
  @DoubleConverter()
  final double? left;

  /// The top coordinate (used with fromLTRB, fromLTWH).
  @DoubleConverter()
  final double? top;

  /// The right coordinate (used with fromLTRB).
  @DoubleConverter()
  final double? right;

  /// The bottom coordinate (used with fromLTRB).
  @DoubleConverter()
  final double? bottom;

  /// The width (used with fromLTWH, fromCenter).
  @DoubleConverter()
  final double? width;

  /// The height (used with fromLTWH, fromCenter).
  @DoubleConverter()
  final double? height;

  /// The center point (used with fromCenter, fromCircle).
  final StacOffset? center;

  /// The radius (used with fromCircle).
  @DoubleConverter()
  final double? radius;

  /// The first corner point (used with fromPoints).
  final StacOffset? a;

  /// The second corner point (used with fromPoints).
  final StacOffset? b;

  /// Creates a [StacRect] from a JSON map.
  factory StacRect.fromJson(Map<String, dynamic> json) =>
      _$StacRectFromJson(json);

  /// Converts this [StacRect] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacRectToJson(this);
}
