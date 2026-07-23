import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_fractionally_sized_box.g.dart';

/// A Stac widget that sizes its child to a fraction of the available space.
///
/// This widget corresponds to Flutter's FractionallySizedBox and sizes its
/// child to a fraction of the total available space.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacFractionallySizedBox(
///   widthFactor: 0.8,
///   heightFactor: 0.6,
///   alignment: StacAlignment.center,
///   child: StacContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "fractionallySizedBox",
///   "widthFactor": 0.8,
///   "heightFactor": 0.6,
///   "alignment": "center",
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFractionallySizedBox extends StacWidget {
  /// Creates a fractionally sized box with optional size factors and alignment.
  const StacFractionallySizedBox({
    this.widthFactor,
    this.heightFactor,
    this.alignment,
    this.child,
  });

  /// The fraction of the available width to use (0.0 to 1.0).
  @DoubleConverter()
  final double? widthFactor;

  /// The fraction of the available height to use (0.0 to 1.0).
  @DoubleConverter()
  final double? heightFactor;

  /// How to align the child within the available space.
  final StacAlignment? alignment;

  /// The widget to size fractionally.
  final StacWidget? child;

  @override
  String get type => WidgetType.fractionallySizedBox.name;

  /// Creates a [StacFractionallySizedBox] from a JSON map.
  factory StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFractionallySizedBoxFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacFractionallySizedBoxToJson(this);
}
