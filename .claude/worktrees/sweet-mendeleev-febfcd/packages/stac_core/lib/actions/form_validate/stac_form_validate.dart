import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_form_validate.g.dart';

/// A Stac action that validates form data and executes conditional actions.
///
/// This action validates the current form state and executes different actions
/// based on whether the form is valid or not. Use [isValid] to specify the
/// action to execute when validation passes, and [isNotValid] for when it fails.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacFormValidate(
///   isValid: StacNavigateAction(routeName: '/success'),
///   isNotValid: StacSnackBarAction(message: 'Please fix errors'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "validateForm",
///   "isValid": {
///     "type": "navigate",
///     "routeName": "/success"
///   },
///   "isNotValid": {
///     "type": "showSnackBar",
///     "message": "Please fix errors"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFormValidate extends StacAction {
  /// Creates a [StacFormValidate] action with conditional execution.
  const StacFormValidate({this.isValid, this.isNotValid});

  /// Action to execute when form validation passes.
  final StacAction? isValid;

  /// Action to execute when form validation fails.
  final StacAction? isNotValid;

  /// Action type identifier.
  @override
  String get actionType => ActionType.validateForm.name;

  /// Creates a [StacFormValidate] from a JSON map.
  factory StacFormValidate.fromJson(Map<String, dynamic> json) =>
      _$StacFormValidateFromJson(json);

  /// Converts this [StacFormValidate] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFormValidateToJson(this);
}
