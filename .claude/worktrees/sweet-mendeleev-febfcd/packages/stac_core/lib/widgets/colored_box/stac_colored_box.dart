import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_colored_box.g.dart';

/// A Stac model representing Flutter's [ColoredBox] widget.
///
/// Paints its child with a solid background [color]. This is a lightweight
/// way to add a background color without additional layout or decoration.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacColoredBox(
///   color: StacColors.blue,
///   child: StacText(data: 'Hello'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "coloredBox",
///   "color": "#FF2196F3",
///   "child": { "type": "text", "data": "Hello" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's ColoredBox documentation (`https://api.flutter.dev/flutter/widgets/ColoredBox-class.html`)
@JsonSerializable()
class StacColoredBox extends StacWidget {
  /// Creates a [StacColoredBox].
  const StacColoredBox({required this.color, this.child});

  /// The background color to paint behind the [child].
  final StacColor color;

  /// The widget below this colored background.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.coloredBox.name;

  /// Creates a [StacColoredBox] from a JSON map.
  factory StacColoredBox.fromJson(Map<String, dynamic> json) =>
      _$StacColoredBoxFromJson(json);

  /// Converts this [StacColoredBox] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacColoredBoxToJson(this);
}
