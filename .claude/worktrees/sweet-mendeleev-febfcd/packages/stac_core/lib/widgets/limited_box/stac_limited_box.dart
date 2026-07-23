import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_limited_box.g.dart';

/// A Stac model representing Flutter's [LimitedBox] widget.
///
/// A box that limits its size only when it's unconstrained.
/// If this widget's maximum width is unconstrained then it will try to
/// be as wide as possible. If this widget's maximum height is unconstrained
/// then it will try to be as tall as possible.
///
/// ```dart
/// StacLimitedBox(
///   maxWidth: 100.0,
///   maxHeight: 150.0,
///   child: StacText(data: 'Limited content'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "limitedBox",
///   "maxWidth": 100.0,
///   "maxHeight": 150.0,
///   "child": {"type": "text", "data": "Limited content"}
/// }
/// ```
@JsonSerializable()
class StacLimitedBox extends StacWidget {
  /// Creates a [StacLimitedBox] with the given properties.
  const StacLimitedBox({this.maxWidth, this.maxHeight, this.child});

  /// The maximum width the child can be.
  /// Defaults to [double.infinity] in the Flutter widget.
  @DoubleConverter()
  final double? maxWidth;

  /// The maximum height the child can be.
  /// Defaults to [double.infinity] in the Flutter widget.
  @DoubleConverter()
  final double? maxHeight;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.limitedBox.name;

  /// Creates a [StacLimitedBox] from JSON.
  factory StacLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$StacLimitedBoxFromJson(json);

  /// Converts this [StacLimitedBox] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacLimitedBoxToJson(this);
}
