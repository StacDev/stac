import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacDefaultNavigationControllerParser
    extends StacParser<StacDefaultNavigationController> {
  const StacDefaultNavigationControllerParser();

  @override
  String get type => WidgetType.defaultNavigationController.name;

  @override
  StacDefaultNavigationController getModel(Map<String, dynamic> json) =>
      StacDefaultNavigationController.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDefaultNavigationController model) {
    return _DefaultNavigationControllerWidget(model: model);
  }
}

class _DefaultNavigationControllerWidget extends StatefulWidget {
  const _DefaultNavigationControllerWidget({required this.model});

  final StacDefaultNavigationController model;

  @override
  State<_DefaultNavigationControllerWidget> createState() =>
      _DefaultNavigationControllerWidgetState();
}

class _DefaultNavigationControllerWidgetState
    extends State<_DefaultNavigationControllerWidget> {
  late NavigationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = NavigationController(
      length: widget.model.length,
      initialIndex: widget.model.initialIndex ?? 0,
    );

    _controller.addListener(_onIndexChange);
  }

  void _onIndexChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return NavigationScope(
      length: widget.model.length,
      controller: _controller,
      child: widget.model.child.parse(context) ?? const SizedBox(),
    );
  }
}

/// An inherited widget that exposes navigation state (selected index) to
/// descendant widgets such as [StacNavigationBar], [StacBottomNavigationBar]
/// and [StacNavigationView].
///
/// Typically created by [StacDefaultNavigationController].
class NavigationScope extends InheritedWidget {
  /// Creates a [NavigationScope] with the specified properties.
  const NavigationScope({
    super.key,
    required super.child,
    required this.length,
    required this.controller,
  });

  /// The number of navigation destinations.
  final int length;

  /// The controller that manages the current navigation index.
  final NavigationController controller;

  /// Returns the [NavigationScope] from the widget tree, or `null` if none
  /// is found in scope.
  static NavigationScope? of(BuildContext context) {
    final NavigationScope? result = context
        .dependOnInheritedWidgetOfExactType<NavigationScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
        "NavigationScope.of() called with a context that does not contain a NavigationScope.",
      );
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}

/// A controller that manages the state of a navigation widget.
///
/// Tracks the current selected index and notifies listeners when the index
/// changes. Used by [NavigationScope] to coordinate between navigation
/// widgets and views.
class NavigationController extends ChangeNotifier {
  /// Creates a [NavigationController] with the specified properties.
  NavigationController({this.initialIndex = 0, required this.length})
    : _index = initialIndex;

  /// The initial index when the controller is created.
  final int initialIndex;

  /// The number of navigation destinations.
  final int length;

  int _index = 0;

  /// The current selected index.
  int get index => _index;

  /// Sets the current selected index.
  set index(int value) => _changeIndex(value);

  void _changeIndex(int value) {
    assert(value >= 0 && (value < length || length == 0));

    if (value == _index || length < 2) {
      return;
    }

    _index = value;
    notifyListeners();
  }
}
