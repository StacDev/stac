import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';

part 'stac_card_theme_data.g.dart';

/// A Stac model representing Flutter's [CardThemeData].
///
/// Defines the theme for cards.
@JsonSerializable()
class StacCardThemeData implements StacElement {
  const StacCardThemeData({
    this.clipBehavior,
    this.color,
    this.shadowColor,
    this.surfaceTintColor,
    this.elevation,
    this.margin,
    this.shape,
  });

  final Clip? clipBehavior;
  final String? color;
  final String? shadowColor;
  final String? surfaceTintColor;
  final double? elevation;
  final StacEdgeInsets? margin;
  final StacBorder? shape;

  factory StacCardThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCardThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCardThemeDataToJson(this);
}

