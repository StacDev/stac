import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_get_form_value.g.dart';

/// A Stac action that retrieves the value of a specific form field.
///
/// This action extracts the current value from a form field identified by [id].
/// The retrieved value can be used by other actions or stored in the application
/// state for further processing.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacGetFormValue(
///   id: 'email_field',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "getFormValue",
///   "id": "email_field"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacGetFormValue extends StacAction {
  /// Creates a [StacGetFormValue] action to retrieve a form field value.
  const StacGetFormValue({required this.id});

  /// The unique identifier of the form field to retrieve the value from.
  final String id;

  /// Action type identifier.
  @override
  String get actionType => ActionType.getFormValue.name;

  /// Creates a [StacGetFormValue] from a JSON map.
  factory StacGetFormValue.fromJson(Map<String, dynamic> json) =>
      _$StacGetFormValueFromJson(json);

  /// Converts this [StacGetFormValue] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacGetFormValueToJson(this);
}
