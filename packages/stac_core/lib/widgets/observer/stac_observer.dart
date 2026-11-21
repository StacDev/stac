import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_observer.g.dart';

/// A Stac widget that rebuilds its child whenever a state value it reads
/// changes.
///
/// Placeholders inside the child are filled from the registry each time it
/// is built, so a value set with `setValue` shows up without rebuilding the
/// screen. The keys to watch are taken from the placeholders in the child and
/// the conditions of conditionals inside it, or listed in [keys].
///
/// ```dart
/// StacObserver(
///   child: StacText(data: '{{cartCount}} items'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "observer",
///   "child": {"type": "text", "data": "{{cartCount}} items"}
/// }
/// ```
@JsonSerializable()
class StacObserver extends StacWidget {
  /// Creates a [StacObserver] that rebuilds [child] when a watched key
  /// changes.
  const StacObserver({this.keys, this.child});

  /// The state keys to watch. When null, the keys are the first segments of
  /// the placeholders found in [child], such as `user` for `{{user.name}}`,
  /// and the names that the conditions of conditionals in [child] read, such
  /// as `items` in `length(items) > 0`.
  final List<String>? keys;

  /// The widget to rebuild, with its placeholders filled.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.observer.name;

  /// Creates a [StacObserver] from a JSON map.
  factory StacObserver.fromJson(Map<String, dynamic> json) =>
      _$StacObserverFromJson(json);

  /// Converts this [StacObserver] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacObserverToJson(this);
}
