import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_offset.g.dart';

/// A Stac representation of a 2D offset (displacement).
///
/// This class represents a displacement in 2D space with horizontal (dx) and
/// vertical (dy) components. It's commonly used for positioning elements,
/// defining shadow offsets, or specifying translation transformations.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacOffset(dx: 10.0, dy: 20.0)
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "dx": 10.0,
///   "dy": 20.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacOffset implements StacElement {
  /// Creates an offset with the specified horizontal and vertical displacements.
  const StacOffset({required this.dx, required this.dy});

  /// A constant representing zero offset (no displacement).
  static const StacOffset zero = StacOffset(dx: 0, dy: 0);

  /// The horizontal displacement in logical pixels.
  final double dx;

  /// The vertical displacement in logical pixels.
  final double dy;

  /// Creates a [StacOffset] from a JSON map.
  factory StacOffset.fromJson(Map<String, dynamic> json) =>
      _$StacOffsetFromJson(json);

  /// Converts this [StacOffset] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacOffsetToJson(this);
}
