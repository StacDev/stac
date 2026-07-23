import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_auto_complete.g.dart';

/// A Stac model representing Flutter's [Autocomplete] widget.
///
/// Provides a text field that displays a list of options while the user types.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacAutoComplete(
///   options: ['Apple', 'Banana', 'Cherry'],
///   optionsMaxHeight: 250,
///   optionsViewOpenDirection: StacOptionsViewOpenDirection.up,
///   initialValue: 'Apple',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "autoComplete",
///   "options": ["Apple", "Banana", "Cherry"],
///   "onSelected": {"type": "callback", "name": "onOptionSelected"},
///   "optionsMaxHeight": 250,
///   "optionsViewOpenDirection": "up",
///   "initialValue": "Apple"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Autocomplete documentation](https://api.flutter.dev/flutter/material/Autocomplete-class.html)
@JsonSerializable()
class StacAutoComplete extends StacWidget {
  /// Creates a [StacAutoComplete] with the given properties.
  const StacAutoComplete({
    required this.options,
    this.onSelected,
    this.optionsMaxHeight,
    this.optionsViewOpenDirection,
    this.initialValue,
  });

  /// The list of options available for selection.
  final List<String> options;

  /// The callback that is called when an option is selected.
  final StacAction? onSelected;

  /// The maximum height of the options list.
  /// Defaults to 200 in Flutter's [Autocomplete].
  @DoubleConverter()
  final double? optionsMaxHeight;

  /// The direction in which the options view opens.
  /// Defaults to [StacOptionsViewOpenDirection.down].
  final StacOptionsViewOpenDirection? optionsViewOpenDirection;

  /// The initial value of the autocomplete field.
  final String? initialValue;

  /// Widget type identifier.
  @override
  String get type => WidgetType.autocomplete.name;

  /// Creates a [StacAutoComplete] from a JSON map.
  factory StacAutoComplete.fromJson(Map<String, dynamic> json) =>
      _$StacAutoCompleteFromJson(json);

  /// Converts this [StacAutoComplete] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacAutoCompleteToJson(this);
}
