import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_input_formatter.g.dart';

/// A Stac model representing a text input formatter rule.
///
/// Used by inputs like `TextFormField` to restrict or allow characters
/// as the user types.
@JsonSerializable()
class StacInputFormatter extends StacElement {
  /// Creates an input formatter with the specified type and optional rule.
  const StacInputFormatter({required this.type, this.rule});

  /// Formatter behavior: allow or deny based on a regular expression rule.
  final StacInputFormatterType type;

  /// Regular expression string used by the formatter.
  final String? rule;

  /// Creates a [StacInputFormatter] from a JSON map.
  factory StacInputFormatter.fromJson(Map<String, dynamic> json) =>
      _$StacInputFormatterFromJson(json);

  /// Converts this [StacInputFormatter] to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacInputFormatterToJson(this);
}

/// Input formatter behavior types for text field validation.
///
/// Mirrors the behavior of `InputFormatterType` used by platform formatters.
/// Determines whether characters matching a regex pattern should be allowed or denied.
enum StacInputFormatterType {
  /// Allow characters that match the provided regex [rule].
  allow,

  /// Deny characters that match the provided regex [rule].
  deny,
}
