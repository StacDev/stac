import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_text_field.g.dart';

/// A Stac model representing Flutter's [TextField] widget.
///
/// A material design text field that allows users to enter and edit text.
/// Can be configured for single-line or multi-line input, different keyboard
/// types, obscured input for passwords, and more. Visuals like label, hint,
/// prefix/suffix can be provided via [decoration].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTextField(
///   initialValue: 'John Doe',
///   keyboardType: StacTextInputType.text,
///   textInputAction: StacTextInputAction.done,
///   decoration: StacInputDecoration(
///     labelText: 'Name',
///     hintText: 'Enter your full name',
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "textField",
///   "initialValue": "John Doe",
///   "keyboardType": "text",
///   "textInputAction": "done",
///   "decoration": {
///     "labelText": "Name",
///     "hintText": "Enter your full name"
///   },
///   "autofillHints": ["name"]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [TextField documentation](https://api.flutter.dev/flutter/material/TextField-class.html)
@JsonSerializable(explicitToJson: true)
class StacTextField extends StacWidget {
  /// Creates a text field widget with the specified properties.
  const StacTextField({
    this.initialValue,
    this.decoration,
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
    this.obscureText,
    this.autocorrect,
    this.enableSuggestions,
    this.maxLines,
    this.minLines,
    this.expands,
    this.maxLength,
    this.enabled,
    this.cursorColor,
    this.cursorWidth,
    this.cursorHeight,
    this.scrollPadding,
    this.enableInteractiveSelection,
    this.mouseCursor,
    this.dragStartBehavior,
    this.scrollPhysics,
    this.restorationId,
    this.clipBehavior,
    this.autofillHints,
    this.onTap,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
  });

  /// Initial text to display in the field.
  final String? initialValue;

  /// Visual decoration and labeling for the text field.
  final StacInputDecoration? decoration;

  /// The type of keyboard to use for editing the text.
  final StacTextInputType? keyboardType;

  /// The type of action button to use for the keyboard.
  final StacTextInputAction? textInputAction;

  /// Configures how the platform keyboard will select an uppercase or lowercase
  /// keyboard. If null, Flutter's default behavior applies.
  final StacTextCapitalization? textCapitalization;

  /// The style to use for the text being edited.
  final StacTextStyle? style;

  /// How the text should be aligned horizontally.
  final StacTextAlign? textAlign;

  /// The directionality of the text.
  final StacTextDirection? textDirection;

  /// Whether the text can be changed.
  /// If false, the field is non-interactive/read-only.
  final bool? readOnly;

  /// Whether to show the cursor.
  /// If null, Flutter decides based on focus and platform.
  final bool? showCursor;

  /// Whether this text field should focus itself if nothing else is already
  /// focused.
  final bool? autofocus;

  /// Character used for obscuring text if [obscureText] is true.
  /// If null, Flutter's default obscuring character is used.
  final String? obscuringCharacter;

  /// Whether to hide the text being edited (e.g., for passwords).
  final bool? obscureText;

  /// Whether to enable autocorrect. If null, Flutter's default applies.
  final bool? autocorrect;

  /// Whether to show input suggestions as the user types.
  /// If null, Flutter's default applies.
  final bool? enableSuggestions;

  /// The maximum number of lines for the text to span, wrapping if necessary.
  /// If null, behaves as a single-line field unless [expands] or [minLines] imply otherwise.
  final int? maxLines;

  /// The minimum number of lines to occupy. If null, Flutter's default applies.
  final int? minLines;

  /// Whether this widget's height is the sum of [minLines] and [maxLines], or
  /// whether it should grow to fill its parent.
  final bool? expands;

  /// The maximum number of characters to allow in the text field.
  /// If null, there is no enforced character limit.
  final int? maxLength;

  /// If false, the text field is disabled and will not respond to input.
  /// If null, Flutter's default applies (enabled).
  final bool? enabled;

  /// The color to use when painting the cursor.
  final StacColor? cursorColor;

  /// How thick the cursor will be.
  /// If null, Flutter's default applies.
  @DoubleConverter()
  final double? cursorWidth;

  /// How tall the cursor will be.
  /// If null, Flutter's default applies.
  @DoubleConverter()
  final double? cursorHeight;

  /// Padding inset used when ensuring the field is visible while scrolling.
  final StacEdgeInsets? scrollPadding;

  /// Whether to allow the user to interactively select text in the field.
  /// If null, Flutter's default applies.
  final bool? enableInteractiveSelection;

  /// The cursor for a mouse pointer when it enters or hovers over the field.
  final StacMouseCursor? mouseCursor;

  /// Determines the way that drag start behavior is handled.
  /// If null, Flutter's default applies.
  final StacDragStartBehavior? dragStartBehavior;

  /// How the embedded scroll view should respond to user input.
  final StacScrollPhysics? scrollPhysics;

  /// Restoration ID to save and restore state (e.g., selection, scroll offset).
  final String? restorationId;

  /// How to clip the text field's content.
  /// Defaults to [Clip.hardEdge] in Flutter.
  final StacClip? clipBehavior;

  /// Autofill hint strings to help the platform identify expected input.
  final List<String>? autofillHints;

  /// Called when the user taps on the field.
  final StacAction? onTap;

  /// Called when the text changes.
  final StacAction? onChanged;

  /// Called when the user indicates that they are done editing the text in the
  /// field (e.g., focus lost or explicit completion).
  final StacAction? onEditingComplete;

  /// Called when the user indicates that they are done editing the text in the
  /// field submitted through the IME action.
  final StacAction? onSubmitted;

  /// Widget type identifier.
  ///
  /// Used to identify this widget type during JSON serialization.
  @override
  String get type => WidgetType.textField.name;

  /// Creates a [StacTextField] from a JSON map.
  ///
  /// The [json] argument must be a valid JSON representation of a
  /// [StacTextField].
  factory StacTextField.fromJson(Map<String, dynamic> json) =>
      _$StacTextFieldFromJson(json);

  /// Converts this [StacTextField] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacTextFieldToJson(this);
}
