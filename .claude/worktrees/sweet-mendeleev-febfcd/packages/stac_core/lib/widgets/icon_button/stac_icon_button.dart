import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_icon_button.g.dart';

/// A Stac model representing Flutter's [IconButton] widget.
///
/// Represents a Material Design icon button that responds to touches
/// by filling with color.
///
/// ```dart
/// StacIconButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   icon: StacIcon(icon: 'add'),
///   color: '#FF5722',
/// )
/// ```
///
/// ```json
/// {
///   "type": "iconButton",
///   "icon": {"type": "icon", "icon": "add"},
///   "onPressed": {"action": "navigate", "route": "/next"},
///   "color": "#FF5722"
/// }
/// ```
@JsonSerializable()
class StacIconButton extends StacWidget {
  /// Creates a [StacIconButton] with the given properties.
  const StacIconButton({
    this.iconSize,
    this.visualDensity,
    this.padding,
    this.alignment,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.onPressed,
    this.onHover,
    this.onLongPress,
    this.mouseCursor,
    this.autofocus,
    this.tooltip,
    this.enableFeedback,
    this.constraints,
    this.style,
    this.isSelected,
    this.selectedIcon,
    this.icon,
  });

  /// The size of the icon inside the button.
  final double? iconSize;

  /// The visual density of the button.
  final StacVisualDensity? visualDensity;

  /// The padding around the button.
  final StacEdgeInsets? padding;

  /// The alignment of the icon within the button.
  final StacAlignment? alignment;

  /// The radius of the splash effect.
  final double? splashRadius;

  /// The color of the icon.
  final String? color;

  /// The color when the button is focused.
  final String? focusColor;

  /// The color when the button is hovered.
  final String? hoverColor;

  /// The color when the button is highlighted.
  final String? highlightColor;

  /// The color of the splash effect.
  final String? splashColor;

  /// The color when the button is disabled.
  final String? disabledColor;

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final StacAction? onPressed;

  /// Called when the button is hovered.
  final StacAction? onHover;

  /// Called when the button is long pressed.
  final StacAction? onLongPress;

  /// The mouse cursor for the button.
  final StacMouseCursor? mouseCursor;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// The tooltip text for the button.
  final String? tooltip;

  /// Whether to enable haptic feedback.
  final bool? enableFeedback;

  /// The constraints for the button.
  final StacBoxConstraints? constraints;

  /// Customizes this button's appearance.
  final StacButtonStyle? style;

  /// Whether the button is selected.
  final bool? isSelected;

  /// The icon to display when the button is selected.
  final StacWidget? selectedIcon;

  /// The icon to display in the button.
  final StacWidget? icon;

  /// Widget type identifier.
  @override
  String get type => WidgetType.iconButton.name;

  /// Creates a [StacIconButton] from JSON.
  factory StacIconButton.fromJson(Map<String, dynamic> json) =>
      _$StacIconButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacIconButtonToJson(this);
}
