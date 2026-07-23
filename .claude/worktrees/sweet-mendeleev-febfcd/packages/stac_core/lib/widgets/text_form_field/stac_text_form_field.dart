import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_text_form_field.g.dart';

/// A Stac model representing Flutter's [TextFormField] widget.
///
/// A convenience widget that wraps a [TextField] and integrates with form
/// validation and saving. Supports initial text, keyboard configuration,
/// cursor styling, decoration and more. Includes an optional `id` used by
/// higher-level form logic to store current field value.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTextFormField(
///   id: 'email',
///   decoration: StacInputDecoration(labelText: 'Email'),
///   keyboardType: StacTextInputType.emailAddress,
///   autovalidateMode: StacAutovalidateMode.onUserInteraction,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "textFormField",
///   "id": "email",
///   "decoration": {"labelText": "Email"},
///   "keyboardType": "emailAddress",
///   "autovalidateMode": "onUserInteraction"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [TextFormField documentation](https://api.flutter.dev/flutter/material/TextFormField-class.html)
@JsonSerializable(explicitToJson: true)
class StacTextFormField extends StacWidget {
  /// Creates a text form field widget with the specified properties.
  const StacTextFormField({
    this.id,
    this.decoration,
    this.initialValue,
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization,
    this.style,
    this.textAlign,
    this.textDirection,
    this.readOnly,
    this.showCursor,
    this.autofocus,
    this.obscuringCharacter,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.obscureText,
    this.autocorrect,
    this.smartDashesType,
    this.smartQuotesType,
    this.maxLengthEnforcement,
    this.expands,
    this.keyboardAppearance,
    this.scrollPadding,
    this.restorationId,
    this.enableIMEPersonalizedLearning,
    this.enableSuggestions,
    this.enabled,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorColor,
    this.autovalidateMode,
    this.inputFormatters,
    this.validatorRules,
  });

  /// Identifier used by the form scope to store/read this field's value.
  final String? id;

  /// Visual decoration and labeling for the text field.
  final StacInputDecoration? decoration;

  /// Initial text to display in the field.
  final String? initialValue;

  /// Keyboard configuration.
  final StacTextInputType? keyboardType;

  /// IME action button configuration.
  final StacTextInputAction? textInputAction;

  /// Auto-capitalization behavior.
  final StacTextCapitalization? textCapitalization;

  /// Text style for the input text.
  final StacTextStyle? style;

  /// Horizontal text alignment.
  final StacTextAlign? textAlign;

  /// Text direction.
  final StacTextDirection? textDirection;

  /// Whether the field is read-only.
  final bool? readOnly;

  /// Whether to show the cursor.
  final bool? showCursor;

  /// Whether to focus automatically.
  final bool? autofocus;

  /// Character used when [obscureText] is true.
  final String? obscuringCharacter;

  /// Maximum lines.
  final int? maxLines;

  /// Minimum lines.
  final int? minLines;

  /// Maximum number of characters allowed.
  final int? maxLength;

  /// Obscure text (e.g., for passwords).
  final bool? obscureText;

  /// Whether to enable autocorrect.
  final bool? autocorrect;

  /// Smart dashes behavior.
  final StacSmartDashesType? smartDashesType;

  /// Smart quotes behavior.
  final StacSmartQuotesType? smartQuotesType;

  /// Max length enforcement strategy.
  final StacMaxLengthEnforcement? maxLengthEnforcement;

  /// Expand to fill parent vertically.
  final bool? expands;

  /// Keyboard brightness.
  final StacBrightness? keyboardAppearance;

  /// Scroll padding when ensuring visibility.
  final StacEdgeInsets? scrollPadding;

  /// Restoration ID.
  final String? restorationId;

  /// Whether to enable personalized learning.
  final bool? enableIMEPersonalizedLearning;

  /// Whether to enable input suggestions.
  final bool? enableSuggestions;

  /// Whether the field is interactive.
  final bool? enabled;

  /// Width of the text cursor in logical pixels.
  @DoubleConverter()
  final double? cursorWidth;

  /// Height of the text cursor in logical pixels.
  @DoubleConverter()
  final double? cursorHeight;

  /// Color of the text cursor.
  final StacColor? cursorColor;

  /// Autovalidation behavior.
  final StacAutovalidateMode? autovalidateMode;

  /// Input text formatting rules applied as the user types.
  final List<StacInputFormatter>? inputFormatters;

  /// Declarative validation rules for the form field.
  final List<StacFormFieldValidator>? validatorRules;

  /// Widget type identifier.
  @override
  String get type => WidgetType.textFormField.name;

  /// Creates a [StacTextFormField] from a JSON map.
  factory StacTextFormField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFormFieldFromJson(json);

  /// Converts this [StacTextFormField] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTextFormFieldToJson(this);
}
