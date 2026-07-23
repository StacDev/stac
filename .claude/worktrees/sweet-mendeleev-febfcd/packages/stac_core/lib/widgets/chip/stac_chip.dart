import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_chip.g.dart';

/// A Stac model representing Flutter's [Chip] widget.
///
/// Displays a compact element with an optional avatar, label, and delete icon.
/// Supports styling via colors, padding, shape, and density.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacChip(
///   label: StacText(data: 'Chip'),
///   avatar: StacIcon(icon: 'person'),
///   deleteIcon: StacIcon(icon: 'close'),
///   deleteIconColor: StacColors.red,
///   color: StacColors.white,
///   backgroundColor: StacColors.blue,
///   padding: StacEdgeInsets.all(8.0),
///   elevation: 2.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "chip",
///   "label": { "type": "text", "data": "Chip" },
///   "avatar": { "type": "icon", "icon": "person" },
///   "deleteIcon": { "type": "icon", "icon": "close" },
///   "deleteIconColor": "#F44336",
///   "color": "#FFFFFF",
///   "backgroundColor": "#2196F3",
///   "padding": { "all": 8.0 },
///   "elevation": 2.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's Chip documentation (`https://api.flutter.dev/flutter/material/Chip-class.html`)
@JsonSerializable(explicitToJson: true)
class StacChip extends StacWidget {
  /// Creates a [StacChip].
  const StacChip({
    this.avatar,
    required this.label,
    this.labelStyle,
    this.labelPadding,
    this.deleteIcon,
    this.onDeleted,
    this.deleteIconColor,
    this.deleteButtonTooltipMessage,
    this.side,
    this.shape,
    this.clipBehavior,
    this.autofocus,
    this.color,
    this.backgroundColor,
    this.padding,
    this.visualDensity,
    this.materialTapTargetSize,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.avatarBoxConstraints,
    this.deleteIconBoxConstraints,
  });

  /// Optional leading avatar widget.
  final StacWidget? avatar;

  /// The primary label widget.
  final StacWidget label;

  /// Text style for the label.
  final StacTextStyle? labelStyle;

  /// Padding around the label.
  final StacEdgeInsets? labelPadding;

  /// Optional delete icon widget.
  final StacWidget? deleteIcon;

  /// Action to perform when the chip's delete button is pressed.
  final StacAction? onDeleted;

  /// Color for the delete icon.
  final String? deleteIconColor;

  /// Tooltip for the delete button.
  final String? deleteButtonTooltipMessage;

  /// Border side of the chip.
  final StacBorderSide? side;

  /// Shape of the chip.
  final StacShapeBorder? shape;

  /// How to clip the content.
  final StacClip? clipBehavior;

  /// Whether this widget should focus itself if nothing else is focused.
  final bool? autofocus;

  /// Foreground color for the chip's content.
  final String? color;

  /// Background color of the chip.
  final String? backgroundColor;

  /// Inner padding for the chip's content.
  final StacEdgeInsets? padding;

  /// Visual density configuration.
  final StacVisualDensity? visualDensity;

  /// Tap target size configuration.
  final StacMaterialTapTargetSize? materialTapTargetSize;

  /// Elevation of the chip.
  @DoubleConverter()
  final double? elevation;

  /// Shadow color for the chip.
  final String? shadowColor;

  /// Surface tint color for the chip.
  final String? surfaceTintColor;

  /// Constraints for the avatar widget.
  final StacBoxConstraints? avatarBoxConstraints;

  /// Constraints for the delete icon widget.
  final StacBoxConstraints? deleteIconBoxConstraints;

  /// Widget type identifier.
  @override
  String get type => WidgetType.chip.name;

  /// Creates a [StacChip] from a JSON map.
  factory StacChip.fromJson(Map<String, dynamic> json) =>
      _$StacChipFromJson(json);

  /// Converts this [StacChip] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacChipToJson(this);
}
