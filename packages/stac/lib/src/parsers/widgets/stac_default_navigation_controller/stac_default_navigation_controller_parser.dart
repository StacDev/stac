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

  int _clampIndex(int index, int length) {
    if (length <= 0) {
      return 0;
    }

    return index.clamp(0, length - 1);
  }

  @override
  void initState() {
    super.initState();

    _controller = NavigationController(
      length: widget.model.length,
      initialIndex: _clampIndex(
        widget.model.initialIndex ?? 0,
        widget.model.length,
      ),
    );

    _controller.addListener(_onIndexChange);
  }

  @override
  void didUpdateWidget(covariant _DefaultNavigationControllerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.model.length == widget.model.length &&
        oldWidget.model.initialIndex == widget.model.initialIndex) {
      return;
    }

    final nextIndex = oldWidget.model.initialIndex == widget.model.initialIndex
        ? _clampIndex(_controller.index, widget.model.length)
        : _clampIndex(widget.model.initialIndex ?? 0, widget.model.length);

    _controller.removeListener(_onIndexChange);
    _controller.dispose();
    _controller = NavigationController(
      length: widget.model.length,
      initialIndex: nextIndex,
    );
    _controller.addListener(_onIndexChange);
  }

  void _onIndexChange() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.removeListener(_onIndexChange);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NavigationScope(
      length: widget.model.length,
      controller: _controller,
      index: _controller.index,
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
    required this.index,
  });

  /// The number of navigation destinations.
  final int length;

  /// The controller that manages the current navigation index.
  final NavigationController controller;

  /// The current navigation index.
  final int index;

  /// Returns the [NavigationScope] from the widget tree, or `null` if none
  /// is found in scope.
  static NavigationScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NavigationScope>();
  }

  /// Returns the [NavigationScope] from the widget tree, or `null` if none
  /// is found in scope.
  static NavigationScope? of(BuildContext context) {
    final NavigationScope? result = maybeOf(context);

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
  bool updateShouldNotify(covariant NavigationScope oldWidget) {
    return oldWidget.length != length ||
        oldWidget.controller != controller ||
        oldWidget.index != index;
  }
}

/// A controller that manages the state of a navigation widget.
///
/// Tracks the current selected index and notifies listeners when the index
/// changes. Used by [NavigationScope] to coordinate between navigation
/// widgets and views.
class NavigationController extends ChangeNotifier {
  /// Creates a [NavigationController] with the specified properties.
  NavigationController({int initialIndex = 0, required this.length})
    : initialIndex = _clampIndex(initialIndex, length),
      _index = _clampIndex(initialIndex, length);

  /// The initial index when the controller is created.
  final int initialIndex;

  /// The number of navigation destinations.
  final int length;

  int _index = 0;

  /// The current selected index.
  int get index => _index;

  /// Sets the current selected index.
  set index(int value) => _changeIndex(value);

  static int _clampIndex(int index, int length) {
    if (length <= 0) {
      return 0;
    }

    return index.clamp(0, length - 1);
  }

  void _validateIndex(int value) {
    if (length <= 0) {
      if (value == 0) {
        return;
      }

      throw RangeError.range(value, 0, 0, 'value');
    }

    if (value < 0 || value >= length) {
      throw RangeError.range(value, 0, length - 1, 'value');
    }
  }

  void _changeIndex(int value) {
    _validateIndex(value);

    if (value == _index || length < 2) {
      return;
    }

    _index = value;
    notifyListeners();
  }
}
