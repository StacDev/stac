import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_sized_box.g.dart';

/// A Stac model representing Flutter's [SizedBox] widget.
///
/// A box with a specified size.
///
/// If given a child, this widget forces its child to have a specific width and/or height.
/// If not given a child, SizedBox will try to size itself to the specified width and height,
/// and then shrinkwrap if the dimensions are not specified.
///
/// ```dart
/// StacSizedBox(
///   width: 100.0,
///   height: 50.0,
///   child: StacText(data: 'Content'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "sizedBox",
///   "width": 100.0,
///   "height": 50.0,
///   "child": {"type": "text", "data": "Content"}
/// }
/// ```
@JsonSerializable()
class StacSizedBox extends StacWidget {
  /// Creates a [StacSizedBox] with the given properties.
  const StacSizedBox({this.width, this.height, this.child});

  /// The width of the box.
  /// If null, the box will try to be as wide as its parent allows.
  @DoubleConverter()
  final double? width;

  /// The height of the box.
  /// If null, the box will try to be as high as its parent allows.
  @DoubleConverter()
  final double? height;

  /// The widget below this widget in the tree.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sizedBox.name;

  /// Creates a [StacSizedBox] from JSON.
  factory StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);

  /// Converts this StacSizedBox to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSizedBoxToJson(this);
}
