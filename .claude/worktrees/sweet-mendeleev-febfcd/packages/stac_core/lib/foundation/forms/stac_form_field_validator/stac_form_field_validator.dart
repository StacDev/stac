import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_form_field_validator.g.dart';

/// A Stac model representing a declarative form field validator.
///
/// The `rule` is a string understood by the parser; `message` is shown
/// when the validation fails.
@JsonSerializable()
class StacFormFieldValidator extends StacElement {
  /// Creates a form field validator with the specified rule and optional message.
  const StacFormFieldValidator({required this.rule, this.message});

  /// Identifier of the validation logic to apply.
  final String rule;

  /// Error message to display when validation fails.
  final String? message;

  /// Creates a [StacFormFieldValidator] from a JSON map.
  factory StacFormFieldValidator.fromJson(Map<String, dynamic> json) =>
      _$StacFormFieldValidatorFromJson(json);

  /// Converts this [StacFormFieldValidator] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacFormFieldValidatorToJson(this);
}
