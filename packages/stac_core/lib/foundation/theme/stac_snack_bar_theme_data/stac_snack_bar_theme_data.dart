import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';
import 'package:stac_core/foundation/ui_components/stac_dismiss_direction.dart';
import 'package:stac_core/foundation/ui_components/stac_snack_bar_behavior.dart';

part 'stac_snack_bar_theme_data.g.dart';

/// A Stac model representing Flutter's [SnackBarThemeData].
///
/// Defines the theme for snack bars, including colors, elevation, shape,
/// text styles, and behavior properties.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacSnackBarThemeData(
///   backgroundColor: '#323232',
///   contentTextStyle: StacTextStyle(color: '#FFFFFF'),
///   behavior: SnackBarBehavior.floating,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "backgroundColor": "#323232",
///   "elevation": 6.0,
///   "contentTextStyle": {"color": "#FFFFFF"},
///   "actionTextColor": "#FF9800",
///   "behavior": "floating",
///   "showCloseIcon": true
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacSnackBarThemeData implements StacElement {
  /// Creates a [StacSnackBarThemeData] with the given properties.
  const StacSnackBarThemeData({
    this.behavior,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.width,
    this.contentTextStyle,
    this.actionTextColor,
    this.disabledActionTextColor,
    this.insetPadding,
    this.dismissDirection,
    this.showCloseIcon,
    this.closeIconColor,
    this.actionOverflowThreshold,
    this.actionBackgroundColor,
    this.disabledActionBackgroundColor,
  });

  /// The behavior of the snack bar.
  final StacSnackBarBehavior? behavior;

  /// The background color of the snack bar.
  final String? backgroundColor;

  /// The z-coordinate at which to place this snack bar relative to its parent.
  final double? elevation;

  /// The shape of the snack bar's border.
  final StacShapeBorder? shape;

  /// The width of the snack bar.
  final double? width;

  /// The text style for the snack bar's content.
  final StacTextStyle? contentTextStyle;

  /// The color of the snack bar's action text.
  final String? actionTextColor;

  /// The color of the snack bar's disabled action text.
  final String? disabledActionTextColor;

  /// The padding around the snack bar's content.
  final StacEdgeInsets? insetPadding;

  /// The direction in which the snack bar can be dismissed.
  final StacDismissDirection? dismissDirection;

  /// Whether to show a close icon on the snack bar.
  final bool? showCloseIcon;

  /// The color of the close icon.
  final String? closeIconColor;

  /// The threshold for action overflow.
  final double? actionOverflowThreshold;

  /// The background color of the snack bar's action.
  final String? actionBackgroundColor;

  /// The background color of the snack bar's disabled action.
  final String? disabledActionBackgroundColor;

  /// Creates a [StacSnackBarThemeData] from JSON.
  factory StacSnackBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarThemeDataFromJson(json);

  /// Converts this snack bar theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSnackBarThemeDataToJson(this);
}
