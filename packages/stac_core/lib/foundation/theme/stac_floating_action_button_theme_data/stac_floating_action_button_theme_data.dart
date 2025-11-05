import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_floating_action_button_theme_data.g.dart';

/// A Stac model representing Flutter's [FloatingActionButtonThemeData].
///
/// Defines the theme for floating action buttons.
@JsonSerializable()
class StacFloatingActionButtonThemeData implements StacElement {
  const StacFloatingActionButtonThemeData({
    this.foregroundColor,
    this.backgroundColor,
    this.focusColor,
    this.hoverColor,
    this.splashColor,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.disabledElevation,
    this.highlightElevation,
    this.enableFeedback,
    this.iconSize,
    this.extendedIconLabelSpacing,
    this.extendedPadding,
    this.extendedTextStyle,
  });

  final String? foregroundColor;
  final String? backgroundColor;
  final String? focusColor;
  final String? hoverColor;
  final String? splashColor;
  final double? elevation;
  final double? focusElevation;
  final double? hoverElevation;
  final double? disabledElevation;
  final double? highlightElevation;
  final bool? enableFeedback;
  final double? iconSize;
  final double? extendedIconLabelSpacing;
  final StacEdgeInsets? extendedPadding;
  final StacTextStyle? extendedTextStyle;

  factory StacFloatingActionButtonThemeData.fromJson(
          Map<String, dynamic> json) =>
      _$StacFloatingActionButtonThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$StacFloatingActionButtonThemeDataToJson(this);
}

