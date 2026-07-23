import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_clip_oval.g.dart';

/// A Stac model representing Flutter's [ClipOval] widget.
///
/// Clips its [child] using an oval (or circle if the bounds are a square).
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacClipOval(
///   clipBehavior: StacClip.antiAlias,
///   child: StacContainer(color: '#2196F3'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "clipOval",
///   "clipBehavior": "antiAlias",
///   "child": {"type": "container", "color": "#2196F3"}
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ClipOval documentation (`https://api.flutter.dev/flutter/widgets/ClipOval-class.html`)
@JsonSerializable(explicitToJson: true)
class StacClipOval extends StacWidget {
  /// Creates a [StacClipOval].
  const StacClipOval({this.clipBehavior, this.child});

  /// The clipping behavior to use.
  ///
  /// Type: [StacClip]
  final StacClip? clipBehavior;

  /// The widget to be clipped by the oval.
  ///
  /// Type: [StacWidget]
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.clipOval.name;

  /// Creates a [StacClipOval] from a JSON map.
  factory StacClipOval.fromJson(Map<String, dynamic> json) =>
      _$StacClipOvalFromJson(json);

  /// Converts this [StacClipOval] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacClipOvalToJson(this);
}
