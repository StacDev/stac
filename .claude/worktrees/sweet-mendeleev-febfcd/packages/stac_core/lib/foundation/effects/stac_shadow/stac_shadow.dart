import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/geometry/stac_offset/stac_offset.dart';

part 'stac_shadow.g.dart';

/// A Stac representation of shadows for visual effects.
///
/// This class defines shadow properties including color, offset, and blur radius.
/// Shadows can be applied to various UI elements to create depth and visual hierarchy.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacShadow(
///   color: '#000000',
///   offset: StacOffset(2.0, 4.0),
///   blurRadius: 6.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "color": "#000000",
///   "offset": {"dx": 2.0, "dy": 4.0},
///   "blurRadius": 6.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacShadow implements StacElement {
  /// Creates a shadow with optional color, offset, and blur radius.
  const StacShadow({this.color, this.offset, this.blurRadius});

  /// The shadow color as hex string or theme color name.
  ///
  /// Examples: '#FF0000', 'red', 'primary'
  final String? color;

  /// The offset position of the shadow relative to the element.
  final StacOffset? offset;

  /// The blur radius of the shadow in logical pixels.
  ///
  /// A larger value creates a more diffused shadow effect.
  @DoubleConverter()
  final double? blurRadius;

  /// Creates a [StacShadow] from a JSON map.
  factory StacShadow.fromJson(Map<String, dynamic> json) =>
      _$StacShadowFromJson(json);

  /// Converts this [StacShadow] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacShadowToJson(this);
}
