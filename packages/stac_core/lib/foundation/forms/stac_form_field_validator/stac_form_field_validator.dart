import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_form_field_validator.g.dart';

/// A Stac model representing a declarative form field validator.
///
/// The `rule` is a string understood by the parser; `message` is shown
/// when the validation fails.
///
/// Most rules map to a `flutter_validators` validator — e.g. `isEmail`,
/// `isURL`, `isUUID`, `isInt`, `isStrongPassword`, `isLength`, `matches`.
/// Parameterized rules read their arguments from `options` (e.g.
/// `{"min": 8, "max": 20}` for `isLength`, `{"pattern": "^[a-z]+$"}` for a
/// raw-regex `matches`). The special `compare` rule checks equality against
/// another field's value via `options.fieldId`.
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "rule": "isLength",
///   "options": {"min": 8, "max": 20},
///   "message": "Must be 8-20 characters"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacFormFieldValidator extends StacElement {
  /// Creates a form field validator with the specified rule and optional message.
  const StacFormFieldValidator({
    required this.rule,
    this.message,
    this.options,
  });

  /// Identifier of the validation logic to apply.
  final String rule;

  /// Error message to display when validation fails.
  final String? message;

  /// Arguments for parameterized rules (e.g. `min`/`max` for `isLength`,
  /// `fieldId` for `compare`). Ignored by rules that take no arguments.
  final Map<String, dynamic>? options;

  /// Creates a [StacFormFieldValidator] from a JSON map.
  factory StacFormFieldValidator.fromJson(Map<String, dynamic> json) =>
      _$StacFormFieldValidatorFromJson(json);

  /// Converts this [StacFormFieldValidator] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFormFieldValidatorToJson(this);
}
