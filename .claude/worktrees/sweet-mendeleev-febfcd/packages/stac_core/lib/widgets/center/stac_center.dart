import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_center.g.dart';

/// A Stac model representing Flutter's [Center] widget.
///
/// Centers its [child] within itself, optionally expanding based on
/// [widthFactor] and [heightFactor].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacCenter(
///   child: StacText(data: 'Hello world'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "center",
///   "child": {"type": "text", "data": "Hello world"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacCenter extends StacWidget {
  /// Creates a center widget with optional sizing factors and child.
  const StacCenter({this.widthFactor, this.heightFactor, this.child});

  /// The width factor to expand to based on the child's width.
  ///
  /// If null, the width is unconstrained and the child is simply centered.
  @DoubleConverter()
  final double? widthFactor;

  /// The height factor to expand to based on the child's height.
  ///
  /// If null, the height is unconstrained and the child is simply centered.
  @DoubleConverter()
  final double? heightFactor;

  /// The widget to be centered.
  final StacWidget? child;

  /// Creates a [StacCenter] from a JSON map.
  factory StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCenterToJson(this);

  @override
  String get type => WidgetType.center.name;
}
