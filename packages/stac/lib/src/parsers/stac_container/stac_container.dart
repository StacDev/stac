import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_alignment/stac_alignment.dart';
import 'package:stac/src/parsers/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/stac_box_decoration/stac_box_decoration.dart';
import 'package:stac/src/parsers/stac_edge_insets/stac_edge_insets.dart';

export 'package:stac/src/parsers/stac_container/stac_container_parser.dart';

part 'stac_container.freezed.dart';
part 'stac_container.g.dart';

@freezed
class StacContainer with _$StacContainer {
  const factory StacContainer({
    StacAlignment? alignment,
    StacEdgeInsets? padding,
    StacBoxDecoration? decoration,
    StacBoxDecoration? foregroundDecoration,
    String? color,
    double? width,
    double? height,
    StacBoxConstraints? constraints,
    StacEdgeInsets? margin,
    Map<String, dynamic>? child,
    @Default(Clip.none) Clip clipBehavior,
  }) = _StacContainer;

  factory StacContainer.fromJson(Map<String, dynamic> json) =>
      _$StacContainerFromJson(json);
}
