import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';

export 'stac_drawer_parser.dart';

part 'stac_drawer.freezed.dart';
part 'stac_drawer.g.dart';

@freezed
abstract class StacDrawer with _$StacDrawer {
  const factory StacDrawer({
    String? backgroundColor,
    StacDouble? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    StacShapeBorder? shape,
    StacDouble? width,
    Map<String, dynamic>? child,
    String? semanticLabel,
    Clip? clipBehavior,
  }) = _StacDrawer;

  factory StacDrawer.fromJson(Map<String, dynamic> json) =>
      _$StacDrawerFromJson(json);
}
