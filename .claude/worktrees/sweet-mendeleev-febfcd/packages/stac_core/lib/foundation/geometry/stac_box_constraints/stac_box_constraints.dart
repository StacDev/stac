import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';

part 'stac_box_constraints.g.dart';

/// A Stac representation of box constraints for layout sizing.
///
/// This class defines the minimum and maximum width and height constraints
/// that can be applied to widgets during layout. It helps control how widgets
/// size themselves within their available space.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacBoxConstraints(
///   minWidth: 100,
///   maxWidth: 300,
///   minHeight: 50,
///   maxHeight: 200,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "minWidth": 100,
///   "maxWidth": 300,
///   "minHeight": 50,
///   "maxHeight": 200
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBoxConstraints {
  /// Creates box constraints with optional minimum and maximum dimensions.
  const StacBoxConstraints({
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  /// The minimum width constraint in logical pixels.
  @DoubleConverter()
  final double? minWidth;

  /// The maximum width constraint in logical pixels.
  @DoubleConverter()
  final double? maxWidth;

  /// The minimum height constraint in logical pixels.
  @DoubleConverter()
  final double? minHeight;

  /// The maximum height constraint in logical pixels.
  @DoubleConverter()
  final double? maxHeight;

  /// Creates a [StacBoxConstraints] from a JSON map.
  factory StacBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$StacBoxConstraintsFromJson(json);

  /// Converts this [StacBoxConstraints] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacBoxConstraintsToJson(this);
}
