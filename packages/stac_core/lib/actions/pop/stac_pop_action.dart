import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_pop_action.g.dart';

/// A Stac action that pops the current route from the navigation stack.
///
/// This action is used to close dialogs, bottom sheets, or navigate back
/// to the previous screen. Optionally, a result can be returned to the
/// previous route.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacPopAction()
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "actionType": "pop"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacPopAction extends StacAction {
  /// Creates a [StacPopAction] to pop the current route.
  const StacPopAction({this.result});

  /// Optional result to return to the previous route.
  ///
  /// Type: `Map<String, dynamic>?`
  final Map<String, dynamic>? result;

  /// Action type identifier.
  @override
  String get actionType => ActionType.pop.name;

  /// Creates a [StacPopAction] from a JSON map.
  factory StacPopAction.fromJson(Map<String, dynamic> json) =>
      _$StacPopActionFromJson(json);

  /// Converts this [StacPopAction] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacPopActionToJson(this);
}
