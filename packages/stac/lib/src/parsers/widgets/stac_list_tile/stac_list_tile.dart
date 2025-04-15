import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_list_tile_parser.dart';

part 'stac_list_tile.freezed.dart';
part 'stac_list_tile.g.dart';

@freezed
abstract class StacListTile with _$StacListTile {
  const factory StacListTile({
    Map<String, dynamic>? onTap,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? leading,
    Map<String, dynamic>? title,
    Map<String, dynamic>? subtitle,
    Map<String, dynamic>? trailing,
    @Default(false) bool isThreeLine,
    bool? dense,
    ListTileStyle? style,
    String? selectedColor,
    String? iconColor,
    String? textColor,
    StacEdgeInsets? contentPadding,
    @Default(true) bool enabled,
    @Default(false) bool selected,
    String? focusColor,
    String? hoverColor,
    @Default(false) bool autofocus,
    String? tileColor,
    String? selectedTileColor,
    bool? enableFeedback,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
  }) = _StacListTile;

  factory StacListTile.fromJson(Map<String, dynamic> json) =>
      _$StacListTileFromJson(json);
}
