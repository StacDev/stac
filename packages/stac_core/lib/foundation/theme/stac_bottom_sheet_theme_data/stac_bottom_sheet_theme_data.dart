import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/geometry/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac_core/foundation/geometry/stac_size/stac_size.dart';

part 'stac_bottom_sheet_theme_data.g.dart';

/// A Stac model representing Flutter's [BottomSheetThemeData].
///
/// Defines the theme for bottom sheets.
@JsonSerializable()
class StacBottomSheetThemeData implements StacElement {
  const StacBottomSheetThemeData({
    this.backgroundColor,
    this.surfaceTintColor,
    this.elevation,
    this.modalBackgroundColor,
    this.modalBarrierColor,
    this.shadowColor,
    this.modalElevation,
    this.shape,
    this.showDragHandle,
    this.dragHandleColor,
    this.dragHandleSize,
    this.clipBehavior,
    this.constraints,
  });

  final String? backgroundColor;
  final String? surfaceTintColor;
  final double? elevation;
  final String? modalBackgroundColor;
  final String? modalBarrierColor;
  final String? shadowColor;
  final double? modalElevation;
  final StacBorder? shape;
  final bool? showDragHandle;
  final String? dragHandleColor;
  final StacSize? dragHandleSize;
  final Clip? clipBehavior;
  final StacBoxConstraints? constraints;

  factory StacBottomSheetThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomSheetThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBottomSheetThemeDataToJson(this);
}

