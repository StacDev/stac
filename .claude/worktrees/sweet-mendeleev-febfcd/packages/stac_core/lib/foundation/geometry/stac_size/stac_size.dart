import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_size.g.dart';

/// A Stac representation of a 2D size with width and height.
///
/// This class represents dimensions in 2D space, commonly used for specifying
/// the size of widgets, images, or other UI elements.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSize(100.0, 200.0)
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "width": 100.0,
///   "height": 200.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSize implements StacElement {
  /// Creates a size with the specified width and height.
  const StacSize(this.width, this.height);

  /// The width in logical pixels.
  final double width;

  /// The height in logical pixels.
  final double height;

  /// Creates a [StacSize] from a JSON map.
  factory StacSize.fromJson(Map<String, dynamic> json) =>
      _$StacSizeFromJson(json);

  /// Converts this [StacSize] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSizeToJson(this);
}
