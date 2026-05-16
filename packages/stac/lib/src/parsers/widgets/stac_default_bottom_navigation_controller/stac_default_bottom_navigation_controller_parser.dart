// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_default_navigation_controller/stac_default_navigation_controller_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// Deprecated. Use [NavigationScope] instead.
@Deprecated('Use NavigationScope instead. Will be removed in a future release.')
typedef BottomNavigationScope = NavigationScope;

/// Deprecated. Use [NavigationController] instead.
@Deprecated(
  'Use NavigationController instead. Will be removed in a future release.',
)
typedef BottomNavigationController = NavigationController;

/// Parser for the deprecated `defaultBottomNavigationController` widget
/// type. Delegates to [StacDefaultNavigationControllerParser] so that the
/// new [NavigationScope] / [NavigationController] are produced and remain
/// interoperable with non-deprecated consumers.
class StacDefaultBottomNavigationControllerParser
    extends StacParser<StacDefaultBottomNavigationController> {
  const StacDefaultBottomNavigationControllerParser();

  @override
  String get type => WidgetType.defaultBottomNavigationController.name;

  @override
  StacDefaultBottomNavigationController getModel(Map<String, dynamic> json) =>
      StacDefaultBottomNavigationController.fromJson(json);

  @override
  Widget parse(
    BuildContext context,
    StacDefaultBottomNavigationController model,
  ) {
    return const StacDefaultNavigationControllerParser().parse(
      context,
      StacDefaultNavigationController(
        length: model.length,
        initialIndex: model.initialIndex,
        child: model.child,
      ),
    );
  }
}
