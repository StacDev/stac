import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_clip_rrect.g.dart';

/// A Stac model representing Flutter's [ClipRRect] widget.
///
/// Clips its [child] using a rounded-rectangle shape defined by [borderRadius].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacClipRRect(
///   borderRadius: StacBorderRadius.only(topLeft: 12, topRight: 12),
///   clipBehavior: StacClip.antiAlias,
///   child: StacContainer(color: '#FF0000'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "clipRRect",
///   "borderRadius": {"topLeft": 12, "topRight": 12},
///   "clipBehavior": "antiAlias",
///   "child": {"type": "container", "color": "#FF0000"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ClipRRect documentation (`https://api.flutter.dev/flutter/widgets/ClipRRect-class.html`)
@JsonSerializable(explicitToJson: true)
class StacClipRRect extends StacWidget {
  /// Creates a [StacClipRRect].
  const StacClipRRect({this.borderRadius, this.clipBehavior, this.child});

  /// The border radius of the rounded-rectangle clip.
  final StacBorderRadius? borderRadius;

  /// The clipping behavior to use.
  final StacClip? clipBehavior;

  /// The widget to be clipped.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.clipRRect.name;

  /// Creates a [StacClipRRect] from a JSON map.
  factory StacClipRRect.fromJson(Map<String, dynamic> json) =>
      _$StacClipRRectFromJson(json);

  /// Converts this [StacClipRRect] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacClipRRectToJson(this);
}
