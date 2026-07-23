import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_delay_action.g.dart';

/// Simple delay action that waits for a number of milliseconds.
///
/// Defaults are applied in the parser; the model accepts a nullable value.
///
/// Dart example:
/// ```dart
/// const StacDelayAction(milliseconds: 500);
/// ```
///
/// JSON example:
/// ```json
/// { "actionType": "delay", "milliseconds": 500 }
/// ```
@JsonSerializable()
class StacDelayAction extends StacAction {
  /// Creates a [StacDelayAction] that waits for a specified duration.
  const StacDelayAction({this.milliseconds});

  /// Delay in milliseconds to wait.
  ///
  /// Type: `int?` (defaults applied in parser).
  final int? milliseconds;

  /// Action type identifier.
  @override
  String get actionType => ActionType.delay.name;

  /// Creates a `StacDelayAction` from JSON.
  factory StacDelayAction.fromJson(Map<String, dynamic> json) =>
      _$StacDelayActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDelayActionToJson(this);
}
