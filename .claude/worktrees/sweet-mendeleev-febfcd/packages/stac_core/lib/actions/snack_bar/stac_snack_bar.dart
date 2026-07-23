import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/snack_bar/stac_snack_bar_action.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/animation/stac_duration/stac_duration.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/interaction/stac_hit_test_behavior.dart';
import 'package:stac_core/foundation/layout/stac_clip.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';
import 'package:stac_core/foundation/ui_components/stac_dismiss_direction.dart';
import 'package:stac_core/foundation/ui_components/stac_snack_bar_behavior.dart';

part 'stac_snack_bar.g.dart';

/// Core model for the SnackBar action.
///
/// Shows a Flutter `SnackBar` built from STAC JSON. Use with
/// `StacSnackBarParser` to render at runtime.
///
/// Dart example:
/// ```dart
/// const StacSnackBar(
///   content: {"type": "text", "data": {"text": "Saved"}},
///   behavior: StacSnackBarBehavior.floating,
/// );
/// ```
///
/// JSON example:
/// ```json
/// {
///   "actionType": "showSnackBar",
///   "content": {"type": "text", "data": {"text": "Saved"}},
///   "behavior": "floating"
/// }
/// ```
@JsonSerializable()
class StacSnackBar extends StacAction {
  /// Creates a [StacSnackBar] that shows a snack bar.
  const StacSnackBar({
    required this.content,
    this.backgroundColor,
    this.elevation,
    this.margin,
    this.padding,
    this.width,
    this.shape,
    this.hitTestBehavior,
    this.behavior,
    this.action,
    this.actionOverflowThreshold,
    this.showCloseIcon,
    this.closeIconColor,
    this.duration,
    this.onVisible,
    this.dismissDirection,
    this.clipBehavior,
  });

  /// Widget JSON rendered inside the SnackBar.
  ///
  /// Type: `Map<String, dynamic>`.
  final Map<String, dynamic> content;

  /// Background color hex.
  ///
  /// Type: `String?`.
  final String? backgroundColor;

  /// Elevation of the SnackBar.
  ///
  /// Type: `double?`.
  final double? elevation;

  /// Outer margin.
  ///
  /// Type: `StacEdgeInsets?`.
  final StacEdgeInsets? margin;

  /// Inner padding.
  ///
  /// Type: `StacEdgeInsets?`.
  final StacEdgeInsets? padding;

  /// Fixed width.
  ///
  /// Type: `double?`.
  final double? width;

  /// Shape border for the SnackBar.
  ///
  /// Type: `StacShapeBorder?`.
  final StacShapeBorder? shape;

  /// Hit test behavior.
  ///
  /// Type: `StacHitTestBehavior?`.
  final StacHitTestBehavior? hitTestBehavior;

  /// Behavior: fixed or floating.
  ///
  /// Type: `StacSnackBarBehavior?`.
  final StacSnackBarBehavior? behavior;

  /// Optional action button.
  ///
  /// Type: `StacSnackBarAction?`.
  final StacSnackBarAction? action;

  /// Threshold for overflowing actions.
  ///
  /// Type: `double?`.
  final double? actionOverflowThreshold;

  /// Whether to show the close icon.
  ///
  /// Type: `bool?`.
  final bool? showCloseIcon;

  /// Close icon color.
  ///
  /// Type: `String?`.
  final String? closeIconColor;

  /// Display duration.
  ///
  /// Type: `StacDuration?`.
  final StacDuration? duration;

  /// Callback action when SnackBar becomes visible.
  ///
  /// Type: `Map<String, dynamic>?`.
  final Map<String, dynamic>? onVisible;

  /// Dismiss direction.
  ///
  /// Type: `StacDismissDirection?`.
  final StacDismissDirection? dismissDirection;

  /// Clip behavior.
  ///
  /// Type: `StacClip?`.
  final StacClip? clipBehavior;

  /// Unique action type string used for routing.
  @override
  String get actionType => ActionType.showSnackBar.name;

  /// Creates a `StacSnackBar` from JSON.
  factory StacSnackBar.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSnackBarToJson(this);
}

// uses types from stac_core/types
