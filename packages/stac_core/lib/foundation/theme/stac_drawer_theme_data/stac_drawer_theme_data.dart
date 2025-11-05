import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';

part 'stac_drawer_theme_data.g.dart';

/// A Stac model representing Flutter's [DrawerThemeData].
///
/// Defines the theme for drawers.
@JsonSerializable()
class StacDrawerThemeData implements StacElement {
  const StacDrawerThemeData({
    this.backgroundColor,
    this.scrimColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.shape,
    this.endShape,
    this.width,
    this.clipBehavior,
  });

  final String? backgroundColor;
  final String? scrimColor;
  final double? elevation;
  final String? shadowColor;
  final String? surfaceTintColor;
  final StacShapeBorder? shape;
  final StacShapeBorder? endShape;
  final double? width;
  final Clip? clipBehavior;

  factory StacDrawerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDrawerThemeDataToJson(this);
}

