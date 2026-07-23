import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_set_value_action.g.dart';

/// A Stac action that sets or updates values in state.
///
/// Accepts a list of key-value maps in [values] to be written to the
/// application's state. Optionally, an [action] can be executed after
/// the values are set.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSetValueAction(
///   values: [
///     {"key": "isLoggedIn", "value": true},
///     {"key": "token", "value": "abc123"},
///   ],
///   action: {"type": "navigate", "routeName": "/home"},
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "setValue",
///   "values": [
///     {"key": "isLoggedIn", "value": true},
///     {"key": "token", "value": "abc123"}
///   ],
///   "action": {"type": "navigate", "routeName": "/home"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSetValueAction extends StacAction {
  /// Creates a [StacSetValueAction] that writes [values] and optionally runs [action].
  const StacSetValueAction({this.values, this.action});

  /// A list of maps representing key-value pairs to write to state.
  ///
  /// Each item should include at least `key` and `value` fields.
  final List<Map<String, dynamic>>? values;

  /// An optional action to execute after the values are written.
  final StacAction? action;

  /// Action type identifier.
  @override
  String get actionType => ActionType.setValue.name;

  /// Creates a [StacSetValueAction] from a JSON map.
  factory StacSetValueAction.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueActionFromJson(json);

  /// Converts this [StacSetValueAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSetValueActionToJson(this);
}
