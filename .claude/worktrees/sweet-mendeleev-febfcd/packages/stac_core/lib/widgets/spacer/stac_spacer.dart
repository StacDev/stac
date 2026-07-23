import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_spacer.g.dart';

/// A Stac model representing Flutter's [Spacer] widget.
///
/// Inserts an adjustable, empty space in a [Row], [Column], or [Flex].
/// The amount of space taken is controlled by [flex] relative to
/// the other flexible children.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacRow(children: const [
///   StacText(data: 'Left'),
///   StacSpacer(),
///   StacText(data: 'Right'),
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
///     {"type": "text", "data": "Left"},
///     {"type": "spacer"},
///     {"type": "text", "data": "Right"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSpacer extends StacWidget {
  /// Creates a [StacSpacer] that takes space according to [flex].
  const StacSpacer({this.flex});

  /// The flex factor to use for this spacer.
  ///
  /// If null, defaults to 1. Higher values take more available main-axis space.
  final int? flex;

  /// Widget type identifier.
  @override
  String get type => WidgetType.spacer.name;

  /// Creates a [StacSpacer] from a JSON map.
  factory StacSpacer.fromJson(Map<String, dynamic> json) =>
      _$StacSpacerFromJson(json);

  /// Converts this [StacSpacer] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSpacerToJson(this);
}
