import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_alert_dialog.g.dart';

/// A Stac model representing Flutter's [AlertDialog] widget.
///
/// A Material Design dialog that informs the user about situations that require
/// acknowledgement. Includes optional title, content, and action buttons.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacAlertDialog(
///   title: StacText(data: 'Confirm'),
///   content: StacText(data: 'Proceed with action?'),
///   actions: [
///     StacTextButton(child: StacText(data: 'Cancel')),
///     StacTextButton(child: StacText(data: 'OK')),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "alertDialog",
///   "title": {"type": "text", "data": "Confirm"},
///   "content": {"type": "text", "data": "Proceed with action?"},
///   "actions": [
///     {"type": "textButton", "child": {"type": "text", "data": "Cancel"}},
///     {"type": "textButton", "child": {"type": "text", "data": "OK"}}
///   ]
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [AlertDialog documentation](https://api.flutter.dev/flutter/material/AlertDialog-class.html)
@JsonSerializable()
class StacAlertDialog extends StacWidget {
  /// Creates a [StacAlertDialog] with the given properties.
  const StacAlertDialog({
    this.icon,
    this.iconPadding,
    this.iconColor,
    this.title,
    this.titlePadding,
    this.titleTextStyle,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.actions,
    this.actionsPadding,
    this.actionsAlignment,
    this.actionsOverflowAlignment,
    this.actionsOverflowDirection,
    this.actionsOverflowButtonSpacing,
    this.buttonPadding,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.semanticLabel,
    this.insetPadding = const StacEdgeInsets(
      left: 40,
      right: 40,
      top: 24,
      bottom: 24,
    ),
    this.clipBehavior,
    this.shape,
    this.alignment,
    this.scrollable,
  });

  /// Optional icon widget displayed above the title.
  final StacWidget? icon;

  /// Padding around [icon].
  final StacEdgeInsets? iconPadding;

  /// Color for the icon.
  final StacColor? iconColor;

  /// The title of the dialog.
  final StacWidget? title;

  /// Padding around [title].
  final StacEdgeInsets? titlePadding;

  /// Text style for [title].
  final StacTextStyle? titleTextStyle;

  /// The primary content of the dialog.
  final StacWidget? content;

  /// Padding around [content].
  final StacEdgeInsets? contentPadding;

  /// Text style for [content].
  final StacTextStyle? contentTextStyle;

  /// Dialog action buttons.
  final List<StacWidget>? actions;

  /// Padding around [actions].
  final StacEdgeInsets? actionsPadding;

  /// How the actions should be placed along the main axis.
  final StacMainAxisAlignment? actionsAlignment;

  /// How overflowing actions should be aligned horizontally.
  final StacOverflowBarAlignment? actionsOverflowAlignment;

  /// The vertical direction for overflowing actions.
  final StacVerticalDirection? actionsOverflowDirection;

  /// Spacing between overflowing action buttons.
  @DoubleConverter()
  final double? actionsOverflowButtonSpacing;

  /// The padding for the button bar.
  final StacEdgeInsets? buttonPadding;

  /// The background color of the dialog's surface.
  final StacColor? backgroundColor;

  /// The z-coordinate at which to place this dialog.
  @DoubleConverter()
  final double? elevation;

  /// The color of the dialog's shadow.
  final StacColor? shadowColor;

  /// The color of the surface tint overlay applied to the background.
  final StacColor? surfaceTintColor;

  /// The semantic label of the dialog.
  final String? semanticLabel;

  /// The padding around the outside of the dialog.
  final StacEdgeInsets? insetPadding;

  /// How to clip the content.
  final StacClip? clipBehavior;

  /// The shape of the dialog's material.
  final StacShapeBorder? shape;

  /// Where to align the dialog.
  final StacAlignment? alignment;

  /// Whether the dialog is scrollable.
  final bool? scrollable;

  /// Widget type identifier.
  @override
  String get type => WidgetType.alertDialog.name;

  /// Creates a [StacAlertDialog] from a JSON map.
  factory StacAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$StacAlertDialogFromJson(json);

  /// Converts this [StacAlertDialog] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacAlertDialogToJson(this);
}
