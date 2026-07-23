import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_alignment_geometry.g.dart';

/// A Stac representation of Flutter's [AlignmentGeometry] class.
///
/// This class represents an alignment that can be used to position widgets
/// within their parent. It supports both horizontal (dx) and vertical (dy)
/// alignment values, where -1.0 represents the start/top, 0.0 represents
/// the center, and 1.0 represents the end/bottom.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacAlignmentGeometry(dx: 0.0, dy: -1.0) // Top center
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "dx": 0.0,
///   "dy": -1.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacAlignmentGeometry extends StacElement {
  /// Creates an alignment geometry with the specified horizontal and vertical values.
  const StacAlignmentGeometry({required this.dx, required this.dy});

  /// The horizontal alignment value.
  /// -1.0 represents the start (left in LTR, right in RTL)
  /// 0.0 represents the center
  /// 1.0 represents the end (right in LTR, left in RTL)
  @DoubleConverter()
  final double dx;

  /// The vertical alignment value.
  /// -1.0 represents the top
  /// 0.0 represents the center
  /// 1.0 represents the bottom
  @DoubleConverter()
  final double dy;

  /// Creates a [StacAlignmentGeometry] from a JSON map.
  factory StacAlignmentGeometry.fromJson(Map<String, dynamic> json) =>
      _$StacAlignmentGeometryFromJson(json);

  /// Converts this [StacAlignmentGeometry] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacAlignmentGeometryToJson(this);
}
