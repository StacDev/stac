import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_multi_action.g.dart';

/// Executes multiple actions sequentially or concurrently.
///
/// If `sync` is true, actions are awaited one-by-one; otherwise they are
/// fired without awaiting.
///
/// Dart example:
/// ```dart
/// StacMultiAction(
///   actions: [
///     const StacSetValueAction(values: [{"key": "a", "value": 1}]),
///     const StacNetworkRequest(url: 'https://api.example.com')
///   ],
///   sync: true,
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "multiAction",
///   "actions": [
///     {"actionType": "setValue", "values": [{"key": "a", "value": 1}]},
///     {"actionType": "networkRequest", "url": "https://api.example.com"}
///   ],
///   "sync": true
/// }
/// ```
@JsonSerializable()
class StacMultiAction extends StacAction {
  /// Creates a [StacMultiAction] that executes multiple actions.
  const StacMultiAction({required this.actions, this.sync = false});

  /// List of child actions to execute.
  ///
  /// Type: `List<StacAction>?`.
  final List<StacAction>? actions;

  /// Whether to execute actions synchronously.
  ///
  /// Type: `bool`.
  final bool sync;

  @override
  String get actionType => ActionType.multiAction.name;

  /// Creates a `StacMultiAction` from JSON.
  factory StacMultiAction.fromJson(Map<String, dynamic> json) =>
      _$StacMultiActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacMultiActionToJson(this);
}
