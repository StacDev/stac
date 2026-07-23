import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/foundation/geometry/stac_rect/stac_rect.dart';

part 'stac_rect_tween.g.dart';

/// A Stac model representing a rectangle tween used by [Hero].
///
/// Controls how the bounding rectangle of the hero animates between routes.
/// Supported [type] values: `materialRectArcTween`, `materialRectCenterArcTween`,
/// or any other string to use a default [RectTween].
@JsonSerializable()
class StacRectTween {
  /// Creates a [StacRectTween].
  const StacRectTween({required this.type, this.begin, this.end});

  /// The tween type identifier.
  final String type;

  /// The starting rectangle.
  final StacRect? begin;

  /// The ending rectangle.
  final StacRect? end;

  /// Creates a [StacRectTween] from a JSON map.
  factory StacRectTween.fromJson(Map<String, dynamic> json) =>
      _$StacRectTweenFromJson(json);

  /// Converts this [StacRectTween] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacRectTweenToJson(this);
}
