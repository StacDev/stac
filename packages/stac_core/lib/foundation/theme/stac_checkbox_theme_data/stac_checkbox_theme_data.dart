import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_shape_border/stac_shape_border.dart';
import 'package:stac_core/foundation/geometry/stac_visual_density/stac_visual_density.dart';
import 'package:stac_core/foundation/interaction/stac_mouse_cursor.dart';

part 'stac_checkbox_theme_data.g.dart';

/// A Stac model representing Flutter's [CheckboxThemeData].
///
/// Defines the theme for checkboxes.
@JsonSerializable()
class StacCheckboxThemeData implements StacElement {
  const StacCheckboxThemeData({
    this.mouseCursor,
    this.fillColor,
    this.checkColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.shape,
    this.side,
  });

  final StacMouseCursor? mouseCursor;
  final String? fillColor;
  final String? checkColor;
  final String? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final StacVisualDensity? visualDensity;
  final StacShapeBorder? shape;
  final StacBorderSide? side;

  factory StacCheckboxThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacCheckboxThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacCheckboxThemeDataToJson(this);
}

