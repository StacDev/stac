import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/action_parsers/stac_snack_bar/stac_snack_bar_action.dart';
import 'package:stac/src/parsers/stac_duration/stac_duration.dart';
import 'package:stac/src/parsers/stac_shape_border/stac_shape_border.dart';
import 'package:stac/src/parsers/parsers.dart';

export 'stac_snack_bar_parser.dart';

part 'stac_snack_bar.freezed.dart';
part 'stac_snack_bar.g.dart';

@freezed
abstract class StacSnackBar with _$StacSnackBar {
  const factory StacSnackBar({
    required Map<String, dynamic> content,
    String? backgroundColor,
    double? elevation,
    StacEdgeInsets? margin,
    StacEdgeInsets? padding,
    double? width,
    StacShapeBorder? shape,
    HitTestBehavior? hitTestBehavior,
    SnackBarBehavior? behavior,
    StacSnackBarAction? action,
    double? actionOverflowThreshold,
    bool? showCloseIcon,
    String? closeIconColor,
    @Default(StacDuration(milliseconds: 4000)) StacDuration duration,
    Map<String, dynamic>? onVisible,
    DismissDirection? dismissDirection,
    @Default(Clip.hardEdge) Clip clipBehavior,
  }) = _StacSnackBar;

  factory StacSnackBar.fromJson(Map<String, dynamic> json) =>
      _$StacSnackBarFromJson(json);
}
