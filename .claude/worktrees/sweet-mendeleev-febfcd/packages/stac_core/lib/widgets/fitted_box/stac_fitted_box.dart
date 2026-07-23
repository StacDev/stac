import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_fitted_box.g.dart';

/// A Stac widget that scales and positions its child within itself.
///
/// This widget corresponds to Flutter's FittedBox and scales its child
/// to fit within the available space according to the specified fit and alignment.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacFittedBox(
///   fit: StacBoxFit.contain,
///   alignment: StacAlignment.center,
///   child: StacText(data: 'Fitted content'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "fittedBox",
///   "fit": "contain",
///   "alignment": "center",
///   "child": {"type": "text", "data": "Fitted content"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFittedBox extends StacWidget {
  /// Creates a [StacFittedBox] that scales and positions its [child].
  const StacFittedBox({
    this.fit,
    this.alignment,
    this.clipBehavior,
    this.child,
  });

  /// How the child should be scaled to fit within the box.
  final StacBoxFit? fit;

  /// How to align the child within the box.
  final StacAlignment? alignment;

  /// How to clip the child if it overflows.
  final StacClip? clipBehavior;

  /// The widget to scale and position.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.fittedBox.name;

  /// Creates a [StacFittedBox] from a JSON map.
  factory StacFittedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFittedBoxFromJson(json);

  /// Converts this [StacFittedBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFittedBoxToJson(this);
}
