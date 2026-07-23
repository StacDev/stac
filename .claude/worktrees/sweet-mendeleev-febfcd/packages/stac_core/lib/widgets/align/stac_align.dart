import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_align.g.dart';

/// A Stac model representing Flutter's [Align] widget.
///
/// Aligns its child within itself and optionally sizes itself based on the
/// child's size. Supports alignment, width factor, and height factor properties.
///
/// ```dart
/// StacAlign(
///   alignment: StacAlignmentDirectional.center,
///   widthFactor: 0.8,
///   heightFactor: 0.6,
///   child: StacText(data: 'Centered'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "align",
///   "alignment": "center",
///   "widthFactor": 0.8,
///   "heightFactor": 0.6,
///   "child": {"type": "text", "data": "Centered"}
/// }
/// ```
@JsonSerializable()
class StacAlign extends StacWidget {
  /// Creates a [StacAlign] with optional alignment and sizing properties.
  const StacAlign({
    this.alignment,
    this.widthFactor,
    this.heightFactor,
    this.child,
  });

  /// How to align the [child] within the align widget.
  final StacAlignmentDirectional? alignment;

  /// If non-null, sets the width of this widget to the child's width
  /// multiplied by this factor.
  @DoubleConverter()
  final double? widthFactor;

  /// If non-null, sets the height of this widget to the child's height
  /// multiplied by this factor.
  @DoubleConverter()
  final double? heightFactor;

  /// The child widget to align.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.align.name;

  /// Creates a [StacAlign] from JSON.
  factory StacAlign.fromJson(Map<String, dynamic> json) =>
      _$StacAlignFromJson(json);

  /// Converts this align widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacAlignToJson(this);
}
