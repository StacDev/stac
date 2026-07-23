import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_opacity.g.dart';

/// A Stac model representing Flutter's [Opacity] widget.
///
/// A widget that makes its child partially transparent.
///
/// ```dart
/// StacOpacity(
///   opacity: 0.5,
///   alwaysIncludeSemantics: false,
///   child: StacText(data: 'Faded Text'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "opacity",
///   "opacity": 0.5,
///   "alwaysIncludeSemantics": false,
///   "child": {"type": "text", "data": "Faded Text"}
/// }
/// ```
@JsonSerializable()
class StacOpacity extends StacWidget {
  /// Creates a [StacOpacity] with the given properties.
  const StacOpacity({
    required this.opacity,
    this.alwaysIncludeSemantics,
    this.child,
  });

  /// The fraction to scale the child's alpha value.
  /// An opacity of 1.0 is fully opaque. An opacity of 0.0 is fully transparent.
  @DoubleConverter()
  final double opacity;

  /// Whether to include the opacity widget in the semantics tree.
  /// Defaults to false.
  final bool? alwaysIncludeSemantics;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.opacity.name;

  /// Creates a [StacOpacity] from JSON.
  factory StacOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacOpacityFromJson(json);

  /// Converts this StacOpacity to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacOpacityToJson(this);
}
