import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_hero.g.dart';

/// A Stac model representing Flutter's [Hero] widget.
///
/// Enables hero animations between routes by tagging widgets with the same
/// [tag]. Optionally customizes the rectangle tween and shuttle/placeholder
/// builders. Renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacHero(
///   tag: 'userAvatar',
///   child: StacImage(network: 'https://example.com/avatar.png'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "hero",
///   "tag": "userAvatar",
///   "child": { "type": "image", "network": "https://example.com/avatar.png" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Hero documentation (`https://api.flutter.dev/flutter/widgets/Hero-class.html`)
@JsonSerializable(explicitToJson: true)
class StacHero extends StacWidget {
  /// Creates a [StacHero].
  const StacHero({
    required this.tag,
    required this.child,
    this.createRectTween,
    this.flightShuttleBuilder,
    this.placeholderBuilder,
    this.transitionOnUserGestures,
  });

  /// The hero tag used to match heroes across routes.
  final dynamic tag;

  /// The widget subtree for this hero.
  final StacWidget child;

  /// Optional rectangle tween configuration for the hero animation.
  final StacRectTween? createRectTween;

  /// Optional widget used as the in-flight shuttle during the hero animation.
  final StacWidget? flightShuttleBuilder;

  /// Optional placeholder widget displayed while the destination hero builds.
  final StacWidget? placeholderBuilder;

  /// Whether the hero should participate in a user gesture driven transition.
  final bool? transitionOnUserGestures;

  /// Widget type identifier.
  @override
  String get type => WidgetType.hero.name;

  /// Creates a [StacHero] from a JSON map.
  factory StacHero.fromJson(Map<String, dynamic> json) =>
      _$StacHeroFromJson(json);

  /// Converts this [StacHero] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacHeroToJson(this);
}
