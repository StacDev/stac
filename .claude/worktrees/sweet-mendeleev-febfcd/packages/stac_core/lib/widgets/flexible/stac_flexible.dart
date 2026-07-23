import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_flexible.g.dart';

/// A Stac model representing Flutter's [Flexible] widget.
///
/// Controls how a child of a [Row], [Column], or [Flex] flexes (expands or
/// contracts) to fill the available space along the main axis. Use [fit] to
/// specify whether the child can be smaller than the space allocated by its
/// [flex] factor.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacRow(children: const [
///   StacFlexible(flex: 1, child: StacText(data: 'Left')),
///   StacFlexible(flex: 2, fit: StacFlexFit.tight, child: StacText(data: 'Right')),
/// ])
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "row",
///   "children": [
///     {"type": "flexible", "flex": 1, "child": {"type": "text", "data": "Left"}},
///     {"type": "flexible", "flex": 2, "fit": "tight", "child": {"type": "text", "data": "Right"}}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFlexible extends StacWidget {
  /// Creates a [StacFlexible] that controls how its [child] flexes within
  /// a [Row], [Column], or [Flex].
  const StacFlexible({this.flex, this.fit, required this.child});

  /// The flex factor to use for this child.
  ///
  /// If null, defaults to 1. Higher values take proportionally more
  /// of the available main axis space.
  final int? flex;

  /// How this child is inscribed into the allocated space.
  ///
  /// Type: [StacFlexFit]. When [StacFlexFit.tight], the child is forced to
  /// fill the allocated space; when [StacFlexFit.loose], the child can be
  /// at most as large as the allocated space.
  final StacFlexFit? fit;

  /// The widget controlled by this [Flexible].
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.flexible.name;

  /// Creates a [StacFlexible] from a JSON map.
  factory StacFlexible.fromJson(Map<String, dynamic> json) =>
      _$StacFlexibleFromJson(json);

  /// Converts this [StacFlexible] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFlexibleToJson(this);
}
