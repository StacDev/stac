import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/color_utils.dart';

part 'stac_bottom_navigation_bar_item.freezed.dart';
part 'stac_bottom_navigation_bar_item.g.dart';

@freezed
class StacBottomNavigationBarItem with _$StacBottomNavigationBarItem {
  const factory StacBottomNavigationBarItem({
    required Map<String, dynamic> icon,
    required String label,
    Map<String, dynamic>? activeIcon,
    String? backgroundColor,
    String? tooltip,
  }) = _StacBottomNavigationBarItem;

  factory StacBottomNavigationBarItem.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationBarItemFromJson(json);
}

extension StacBottomNavigationBarItemParser on StacBottomNavigationBarItem {
  BottomNavigationBarItem parse(BuildContext context) {
    return BottomNavigationBarItem(
      icon: Stac.fromJson(icon, context) ?? const SizedBox(),
      activeIcon: Stac.fromJson(activeIcon, context),
      label: label,
      backgroundColor: backgroundColor?.toColor(context),
      tooltip: tooltip,
    );
  }
}
