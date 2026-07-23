import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/theme/stac_button_style/stac_button_style.dart';

part 'stac_dropdown_menu_entry.g.dart';

/// Configuration for a single entry in a [DropdownMenu].
@JsonSerializable()
class StacDropdownMenuEntry extends StacElement {
  /// Creates a [StacDropdownMenuEntry].
  const StacDropdownMenuEntry({
    this.value,
    this.label = '',
    this.labelWidget,
    this.leadingIcon,
    this.trailingIcon,
    this.enabled,
    this.style,
  });

  /// The underlying value represented by this entry.
  final dynamic value;

  /// The text label for this entry.
  final String label;

  /// A custom label widget.
  final StacWidget? labelWidget;

  /// An icon displayed before the label.
  final StacWidget? leadingIcon;

  /// An icon displayed after the label.
  final StacWidget? trailingIcon;

  /// Whether this entry is enabled.
  final bool? enabled;

  /// Optional style applied to this entry.
  final StacButtonStyle? style;

  /// Creates a [StacDropdownMenuEntry] from JSON.
  factory StacDropdownMenuEntry.fromJson(Map<String, dynamic> json) =>
      _$StacDropdownMenuEntryFromJson(json);

  /// Converts this entry to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDropdownMenuEntryToJson(this);
}
