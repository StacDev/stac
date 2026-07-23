import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_aspect_ratio.g.dart';

/// A Stac model representing Flutter's [AspectRatio] widget.
///
/// Constrains its [child] to a specific width-to-height ratio.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacAspectRatio(
///   aspectRatio: 16 / 9,
///   child: StacContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "aspectRatio",
///   "aspectRatio": 1.7778,
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacAspectRatio extends StacWidget {
  /// Creates an aspect ratio widget with the specified ratio and child.
  const StacAspectRatio({required this.aspectRatio, required this.child});

  /// The width-to-height ratio to honor for laying out the [child].
  ///
  /// For example, `16 / 9` (≈1.7778) or `1.0` for a square.
  @DoubleConverter()
  final double aspectRatio;

  /// The widget to display inside the constrained aspect ratio box.
  final StacWidget? child;

  @override
  String get type => WidgetType.aspectRatio.name;

  /// Creates a [StacAspectRatio] from a JSON map.
  factory StacAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$StacAspectRatioFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacAspectRatioToJson(this);
}
