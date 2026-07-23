import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_dropdown_menu.g.dart';

/// A Stac model representing Flutter's [DropdownMenu] widget.
///
/// Shows a Material dropdown with a text field and selectable entries.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacDropdownMenu(
///   enabled: true,
///   hintText: 'Select an item',
///   dropdownMenuEntries: [
///     StacDropdownMenuEntry(label: 'One', value: '1'),
///     StacDropdownMenuEntry(label: 'Two', value: '2'),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "dropdownMenu",
///   "hintText": "Select an item",
///   "dropdownMenuEntries": [
///     {"label": "One", "value": "1"},
///     {"label": "Two", "value": "2"}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [DropdownMenu documentation](https://api.flutter.dev/flutter/material/DropdownMenu-class.html)
@JsonSerializable()
class StacDropdownMenu extends StacWidget {
  /// Creates a [StacDropdownMenu].
  const StacDropdownMenu({
    this.enabled,
    this.width,
    this.menuHeight,
    this.leadingIcon,
    this.trailingIcon,
    this.label,
    this.hintText,
    this.helperText,
    this.errorText,
    this.selectedTrailingIcon,
    this.enableFilter,
    this.enableSearch,
    this.keyboardType,
    this.textStyle,
    this.textAlign,
    this.inputDecorationTheme,
    this.inputFormatters,
    this.alignmentOffset,
    this.expandedInsets,
    this.requestFocusOnTap,
    this.initialSelection,
    this.dropdownMenuEntries,
    this.closeBehavior,
  });

  /// Whether the dropdown is interactive.
  final bool? enabled;

  /// The width of the dropdown.
  @DoubleConverter()
  final double? width;

  /// The maximum height of the menu overlay.
  @DoubleConverter()
  final double? menuHeight;

  /// Leading icon widget.
  final StacWidget? leadingIcon;

  /// Trailing icon widget.
  final StacWidget? trailingIcon;

  /// Optional label widget.
  final StacWidget? label;

  /// Hint text shown inside the field when it is empty.
  final String? hintText;

  /// Helper text displayed below the field.
  final String? helperText;

  /// Error text displayed below the field.
  final String? errorText;

  /// Icon shown when an item is selected.
  final StacWidget? selectedTrailingIcon;

  /// Whether to enable client-side filtering.
  final bool? enableFilter;

  /// Whether to show a search field for filtering.
  final bool? enableSearch;

  /// Keyboard type for the text field.
  final StacTextInputType? keyboardType;

  /// Text style for the input value.
  final StacTextStyle? textStyle;

  /// How the text should be aligned horizontally.
  final StacTextAlign? textAlign;

  /// Input decoration theme.
  final StacInputDecorationTheme? inputDecorationTheme;

  /// Input formatters to apply to user input.
  final List<StacInputFormatter>? inputFormatters;

  /// Offset applied to align menu overlay.
  final StacOffset? alignmentOffset;

  /// Insets to apply when expanded.
  final StacEdgeInsets? expandedInsets;

  /// Whether the field should request focus on tap.
  final bool? requestFocusOnTap;

  /// The initial selected value.
  final dynamic initialSelection;

  /// Entries to display in the dropdown.
  final List<StacDropdownMenuEntry>? dropdownMenuEntries;

  /// Close behavior for the menu.
  final StacDropdownMenuCloseBehavior? closeBehavior;

  /// Widget type identifier.
  @override
  String get type => WidgetType.dropdownMenu.name;

  /// Creates a [StacDropdownMenu] from a JSON map.
  factory StacDropdownMenu.fromJson(Map<String, dynamic> json) =>
      _$StacDropdownMenuFromJson(json);

  /// Converts this [StacDropdownMenu] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDropdownMenuToJson(this);
}
