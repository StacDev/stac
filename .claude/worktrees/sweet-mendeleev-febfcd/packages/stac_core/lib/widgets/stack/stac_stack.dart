import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_stack.g.dart';

/// A Stac model representing Flutter's [Stack] widget.
///
/// Positions its [children] relative to the edges of the box. Children are
/// painted in order with the first child being at the bottom.
/// Control layout using [alignment], [textDirection], [fit], and [clipBehavior].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacStack(
///   alignment: StacAlignment.center,
///   children: const [
///     StacContainer(color: '#EEEEEE', width: 200, height: 200),
///     StacText(data: 'On top'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "stack",
///   "alignment": "center",
///   "children": [
///     {"type": "container", "color": "#EEEEEE", "width": 200, "height": 200},
///     {"type": "text", "data": "On top"}
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacStack extends StacWidget {
  /// Creates a [StacStack] that lays out its [children] relative to its box.
  const StacStack({
    this.alignment,
    this.textDirection,
    this.fit,
    this.clipBehavior,
    this.children,
  });

  /// How to align non-positioned [children] within the stack.
  final StacAlignment? alignment;

  /// The text direction used to resolve alignment.
  final StacTextDirection? textDirection;

  /// How to size non-positioned [children] in the stack.
  final StacStackFit? fit;

  /// Whether to clip children that paint outside the stack's bounds.
  final StacClip? clipBehavior;

  /// The widgets displayed by this stack, painted in order.
  final List<StacWidget>? children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.stack.name;

  /// Creates a [StacStack] from a JSON map.
  factory StacStack.fromJson(Map<String, dynamic> json) =>
      _$StacStackFromJson(json);

  /// Converts this [StacStack] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacStackToJson(this);
}
