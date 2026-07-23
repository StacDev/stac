import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_elevated_button.g.dart';

/// A Stac model representing Flutter's [ElevatedButton] widget.
///
/// Represents a Material Design elevated button that responds to touches
/// by elevating and filling with color.
///
/// ```dart
/// StacElevatedButton(
///   onPressed: {'action': 'navigate', 'route': '/next'},
///   child: StacText(data: 'Press me'),
///   style: StacButtonStyle(elevation: 4.0),
/// )
/// ```
///
/// ```json
/// {
///   "type": "elevatedButton",
///   "child": {"type": "text", "data": "Press me"},
///   "onPressed": {"action": "navigate", "route": "/next"}
/// }
/// ```
@JsonSerializable()
class StacElevatedButton extends StacWidget {
  /// Creates a [StacElevatedButton] with the given properties.
  const StacElevatedButton({
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.autofocus,
    this.clipBehavior,
    required this.child,
  });

  /// Called when the button is tapped or otherwise activated.
  /// If null, the button will be disabled.
  final StacAction? onPressed;

  /// Called when the button is long-pressed.
  final StacAction? onLongPress;

  /// Called when a pointer enters or exits the button response area.
  final StacAction? onHover;

  /// Called when the focus changes.
  final StacAction? onFocusChange;

  /// Customizes this button's appearance.
  final StacButtonStyle? style;

  /// True if this widget will be selected as the initial focus when no other
  /// node in its scope is currently focused.
  final bool? autofocus;

  /// How to clip the button's content.
  final StacClip? clipBehavior;

  /// The widget below this widget in the tree.
  /// Typically a [Text] widget.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.elevatedButton.name;

  /// Creates a [StacElevatedButton] from JSON.
  factory StacElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$StacElevatedButtonFromJson(json);

  /// Converts this button to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacElevatedButtonToJson(this);
}
