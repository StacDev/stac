import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_card.g.dart';

/// A Stac model representing Flutter's [Card] widget.
///
/// Displays material design cards with optional elevation, shape, colors,
/// margin, and clipping. Renders its [child].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCard(
///   elevation: 2,
///   margin: StacEdgeInsets.all(8),
///   child: StacText(data: 'Hello'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "card",
///   "elevation": 2,
///   "margin": {"all": 8},
///   "child": {"type": "text", "data": "Hello"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Card documentation (`https://api.flutter.dev/flutter/material/Card-class.html`)
@JsonSerializable(explicitToJson: true)
class StacCard extends StacWidget {
  /// Creates a [StacCard].
  const StacCard({
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.shape,
    this.borderOnForeground,
    this.margin,
    this.clipBehavior,
    this.child,
    this.semanticContainer,
  });

  /// The background color of the card.
  final StacColor? color;

  /// The color of the card's shadow.
  final StacColor? shadowColor;

  /// The color used to tint the surface of this card.
  final StacColor? surfaceTintColor;

  /// The z-coordinate of this card relative to its parent.
  @DoubleConverter()
  final double? elevation;

  /// The shape of the card's material.
  final StacShapeBorder? shape;

  /// Whether to paint the border in front of the child.
  final bool? borderOnForeground;

  /// Empty space to surround the card.
  final StacEdgeInsets? margin;

  /// How to clip the content.
  final StacClip? clipBehavior;

  /// The widget below this card in the tree.
  final StacWidget? child;

  /// Whether this card represents a semantic container.
  final bool? semanticContainer;

  /// Widget type identifier.
  @override
  String get type => WidgetType.card.name;

  /// Creates a [StacCard] from a JSON map.
  factory StacCard.fromJson(Map<String, dynamic> json) =>
      _$StacCardFromJson(json);

  /// Converts this [StacCard] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacCardToJson(this);
}
