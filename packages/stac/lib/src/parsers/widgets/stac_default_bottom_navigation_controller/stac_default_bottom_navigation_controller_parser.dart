import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

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
    return _DefaultBottomNavigationControllerWidget(model: model);
  }
}

class _DefaultBottomNavigationControllerWidget extends StatefulWidget {
  const _DefaultBottomNavigationControllerWidget({required this.model});

  final StacDefaultBottomNavigationController model;

  @override
  State<_DefaultBottomNavigationControllerWidget> createState() =>
      _DefaultBottomNavigationControllerWidgetState();
}

class _DefaultBottomNavigationControllerWidgetState
    extends State<_DefaultBottomNavigationControllerWidget> {
  late BottomNavigationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = BottomNavigationController(
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
    return BottomNavigationScope(
      length: widget.model.length,
      controller: _controller,
      child: widget.model.child.parse(context) ?? const SizedBox(),
    );
  }
}

/// An inherited widget that provides bottom navigation state to descendant widgets.
///
/// This widget is typically created by [StacDefaultBottomNavigationController]
/// and provides access to the [BottomNavigationController] and navigation length
/// to child widgets like [StacBottomNavigationBar] and [StacBottomNavigationView].
class BottomNavigationScope extends InheritedWidget {
  /// Creates a [BottomNavigationScope] with the specified properties.
  const BottomNavigationScope({
    super.key,
    required super.child,
    required this.length,
    required this.controller,
  });

  /// The number of bottom navigation items.
  final int length;

  /// The controller that manages the current navigation index.
  final BottomNavigationController controller;

  /// Returns the [BottomNavigationScope] from the widget tree.
  ///
  /// Returns null if no [BottomNavigationScope] is found in the widget tree.
  static BottomNavigationScope? of(BuildContext context) {
    final BottomNavigationScope? result = context
        .dependOnInheritedWidgetOfExactType<BottomNavigationScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
        "BottomNavigationScope.of() called with a context that does not contain a BottomNavigationScope.",
      );
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}

/// A controller that manages the state of a bottom navigation bar.
///
/// This controller tracks the current selected index and notifies listeners
/// when the index changes. It is used by [BottomNavigationScope] to coordinate
/// between [StacBottomNavigationBar] and [StacBottomNavigationView].
class BottomNavigationController extends ChangeNotifier {
  /// Creates a [BottomNavigationController] with the specified properties.
  BottomNavigationController({this.initialIndex = 0, required this.length})
    : _index = initialIndex;

  /// The initial index when the controller is created.
  final int initialIndex;

  /// The number of navigation items.
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
