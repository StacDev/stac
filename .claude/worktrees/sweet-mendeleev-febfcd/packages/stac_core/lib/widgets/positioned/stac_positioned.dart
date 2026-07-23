import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/geometry/stac_rect/stac_rect.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';
import 'package:stac_core/foundation/text/stac_text_types.dart';

part 'stac_positioned.g.dart';

/// A Stac widget that controls where a child of a Stack is positioned.
///
/// This widget corresponds to Flutter's Positioned widget and allows
/// precise positioning of a widget within a Stack using coordinates
/// and optional sizing constraints.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacPositioned(
///   left: 10,
///   top: 20,
///   child: StacText(data: 'Positioned text'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "positioned",
///   "left": 10,
///   "top": 20,
///   "child": {"type": "text", "data": "Positioned text"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacPositioned extends StacWidget {
  /// Creates a positioned widget with optional positioning and sizing.
  ///
  /// Only two of the three horizontal values ([left], [right], [width]) may be
  /// set; at least one must be null. Similarly, only two of the three vertical
  /// values ([top], [bottom], [height]) may be set; at least one must be null.
  const StacPositioned({
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    required this.child,
  });

  /// Creates a StacPositioned object with the values from the given [StacRect].
  ///
  /// This sets the [left], [top], [width], and [height] properties
  /// from the given [StacRect]. The [right] and [bottom] properties are
  /// set to null.
  StacPositioned.fromRect({required StacRect rect, required this.child})
    : left = rect.left,
      top = rect.top,
      width = rect.width,
      height = rect.height,
      right = null,
      bottom = null;

  /// Creates a StacPositioned object with the values from the given relative rectangle.
  ///
  /// This sets the [left], [top], [right], and [bottom] properties from the
  /// given values. The [height] and [width] properties are set to null.
  const StacPositioned.fromRelativeRect({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
    required this.child,
  }) : width = null,
       height = null;

  /// Creates a StacPositioned object with [left], [top], [right], and [bottom] set
  /// to 0.0 unless a value for them is passed.
  const StacPositioned.fill({
    this.left = 0.0,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
    required this.child,
  }) : width = null,
       height = null;

  /// Creates a widget that controls where a child of a [Stack] is positioned.
  ///
  /// Only two of the three horizontal values (`start`, `end`, and [width]) may
  /// be set; at least one must be null. Only two of the three vertical values
  /// ([top], [bottom], and [height]) may be set; at least one must be null.
  ///
  /// If [textDirection] is [StacTextDirection.rtl], then `start` is used for
  /// [right] and `end` for [left]. If [textDirection] is [StacTextDirection.ltr],
  /// then `start` is used for [left] and `end` for [right].
  factory StacPositioned.directional({
    required StacTextDirection textDirection,
    double? start,
    double? top,
    double? end,
    double? bottom,
    double? width,
    double? height,
    required StacWidget child,
  }) {
    final (double? left, double? right) = switch (textDirection) {
      StacTextDirection.rtl => (end, start),
      StacTextDirection.ltr => (start, end),
    };
    return StacPositioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: child,
    );
  }

  /// The distance from the left edge of the stack.
  @DoubleConverter()
  final double? left;

  /// The distance from the top edge of the stack.
  @DoubleConverter()
  final double? top;

  /// The distance from the right edge of the stack.
  @DoubleConverter()
  final double? right;

  /// The distance from the bottom edge of the stack.
  @DoubleConverter()
  final double? bottom;

  /// The width of the positioned widget.
  @DoubleConverter()
  final double? width;

  /// The height of the positioned widget.
  @DoubleConverter()
  final double? height;

  /// The widget to position within the stack.
  final StacWidget? child;

  @override
  String get type => WidgetType.positioned.name;

  /// Creates a [StacPositioned] from a JSON map.
  factory StacPositioned.fromJson(Map<String, dynamic> json) =>
      _$StacPositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacPositionedToJson(this);
}
