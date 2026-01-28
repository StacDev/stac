import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_offstage.g.dart';

/// A Stac model representing Flutter's [Offstage] widget.
///
/// This widget controls whether a child widget is visible without
/// removing it from the widget tree.
///
/// When [offstage] is set to `true`, the child is not painted, does not
/// occupy any space in the layout, and is excluded from hit testing,
/// while still preserving the widget's state.
///
/// This widget is useful for conditionally showing or hiding UI content
/// without rebuilding or disposing of the underlying widget.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacOffstage(
///   offstage: false,
///   child: StacContainer(
///     height: 100,
///     color: 'primary',
///     child: StacCenter(
///       child: StacText(data: 'I am visible'),
///     ),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "offstage",
///   "offstage": false,
///   "child": {
///     "type": "container",
///     "height": 100,
///     "color": "primary",
///     "child": {
///       "type": "center",
///       "child": {
///         "type": "text",
///         "data": "I am visible"
///       }
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacOffstage extends StacWidget {
  /// Creates a [StacOffstage].
  ///
  /// The [offstage] parameter controls whether the [child] widget
  /// is hidden. The [child] parameter defines the widget to show
  /// or hide.
  const StacOffstage({this.offstage, this.child});

  /// Whether the child widget should be hidden.
  ///
  /// When set to `true`, the child is not painted, does not take up
  /// any space in the layout, and does not participate in hit testing.
  ///
  /// Defaults to `true`.
  final bool? offstage;

  /// The widget below this widget in the tree.
  ///
  /// This widget remains part of the widget tree even when it is
  /// hidden, allowing its state to be preserved.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.offstage.name;

  /// Creates a [StacOffstage] from a JSON map.
  factory StacOffstage.fromJson(Map<String, dynamic> json) =>
      _$StacOffstageFromJson(json);

  /// Converts this [StacOffstage] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacOffstageToJson(this);
}
