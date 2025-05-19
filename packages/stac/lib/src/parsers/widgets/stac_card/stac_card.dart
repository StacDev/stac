import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_shape_border/stac_shape_border.dart';

export 'stac_card_parser.dart';

part 'stac_card.freezed.dart';
part 'stac_card.g.dart';

@freezed
abstract class StacCard with _$StacCard {
  const factory StacCard({
    String? color,
    String? shadowColor,
    String? surfaceTintColor,
    StacDouble? elevation,
    StacShapeBorder? shape,
    @Default(true) bool borderOnForeground,
    StacEdgeInsets? margin,
    Clip? clipBehavior,
    Map<String, dynamic>? child,
    @Default(true) bool semanticContainer,
  }) = _StacCard;

  factory StacCard.fromJson(Map<String, dynamic> json) =>
      _$StacCardFromJson(json);
}
