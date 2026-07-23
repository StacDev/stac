import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_circle_avatar.g.dart';

/// A Stac model representing Flutter's [CircleAvatar] widget.
///
/// A circular widget typically used to represent a user with either an image,
/// initials, or an icon. Supports configuring colors and radius.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacCircleAvatar(
///   backgroundColor: 'blue',
///   foregroundColor: 'white',
///   radius: 24,
///   child: StacText(data: 'AB'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "circleAvatar",
///   "backgroundColor": "blue",
///   "foregroundColor": "white",
///   "radius": 24,
///   "child": {"type": "text", "data": "AB"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [CircleAvatar documentation](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)
@JsonSerializable()
class StacCircleAvatar extends StacWidget {
  /// Creates a [StacCircleAvatar] with the given properties.
  const StacCircleAvatar({
    this.child,
    this.backgroundColor,
    this.backgroundImage,
    this.foregroundImage,
    this.foregroundColor,
    this.radius,
    this.minRadius,
    this.maxRadius,
  });

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// The fill color for the avatar's background.
  final StacColor? backgroundColor;

  /// A URL for a background image.
  final String? backgroundImage;

  /// A URL for a foreground image (drawn on top of the background).
  final String? foregroundImage;

  /// Default color for text and icons within the avatar.
  final StacColor? foregroundColor;

  /// Explicit radius for the avatar.
  @DoubleConverter()
  final double? radius;

  /// The minimum radius for the avatar when using dynamic sizing.
  @DoubleConverter()
  final double? minRadius;

  /// The maximum radius for the avatar when using dynamic sizing.
  @DoubleConverter()
  final double? maxRadius;

  /// Widget type identifier.
  @override
  String get type => WidgetType.circleAvatar.name;

  /// Creates a [StacCircleAvatar] from a JSON map.
  factory StacCircleAvatar.fromJson(Map<String, dynamic> json) =>
      _$StacCircleAvatarFromJson(json);

  /// Converts this [StacCircleAvatar] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacCircleAvatarToJson(this);
}
