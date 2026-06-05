// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_navigation_view/stac_navigation_view_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// Parser for the deprecated `bottomNavigationView` widget type.
/// Delegates to [StacNavigationViewParser] so it shares behavior with the
/// new generic `navigationView`.
class StacBottomNavigationViewParser
    extends StacParser<StacBottomNavigationView> {
  const StacBottomNavigationViewParser();

  @override
  String get type => WidgetType.bottomNavigationView.name;

  @override
  StacBottomNavigationView getModel(Map<String, dynamic> json) =>
      StacBottomNavigationView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacBottomNavigationView model) {
    return const StacNavigationViewParser().parse(
      context,
      StacNavigationView(children: model.children),
    );
  }
}
