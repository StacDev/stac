import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_placeholder.g.dart';

/// A Stac model representing Flutter's [Placeholder] widget.
///
/// Draws a simple box to visualize where a widget will be added in the future.
/// Useful during development to indicate unimplemented parts of the UI.
///
/// Dart Example:
/// ```dart
/// StacPlaceholder(
///   fallbackWidth: 200,
///   fallbackHeight: 100,
///   strokeWidth: 2,
/// )
/// ```
///
/// JSON Example:
/// ```json
/// {
///   "type": "placeholder",
///   "fallbackWidth": 200,
///   "fallbackHeight": 100,
///   "strokeWidth": 2
/// }
/// ```
///
/// See also:
///  * Flutter's Placeholder documentation (`https://api.flutter.dev/flutter/widgets/Placeholder-class.html`)
@JsonSerializable(explicitToJson: true)
class StacPlaceholder extends StacWidget {
  /// Creates a [StacPlaceholder].
  const StacPlaceholder({
    this.fallbackWidth,
    this.fallbackHeight,
    this.strokeWidth,
    this.color,
    this.child,
  });

  /// The width to use when the placeholder has unconstrained width.
  @DoubleConverter()
  final double? fallbackWidth;

  /// The height to use when the placeholder has unconstrained height.
  @DoubleConverter()
  final double? fallbackHeight;

  /// The stroke width used to draw the placeholder borders.
  @DoubleConverter()
  final double? strokeWidth;

  /// The color of the placeholder's stroke.
  final String? color;

  /// Optional child to display inside the placeholder.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.placeholder.name;

  /// Creates a [StacPlaceholder] from a JSON map.
  factory StacPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$StacPlaceholderFromJson(json);

  /// Converts this [StacPlaceholder] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacPlaceholderToJson(this);
}
