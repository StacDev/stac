import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_default_bottom_navigation_controller/stac_default_bottom_navigation_controller.dart';
import 'package:stac/src/utils/widget_type.dart';
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
  const _DefaultBottomNavigationControllerWidget({
    required this.model,
  });

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
      child: Builder(
        builder: (context) =>
            Stac.fromJson(widget.model.child, context) ?? const SizedBox(),
      ),
    );
  }
}

class BottomNavigationScope extends InheritedWidget {
  const BottomNavigationScope({
    super.key,
    required super.child,
    required this.length,
    required this.controller,
  });

  final int length;
  final BottomNavigationController controller;

  static BottomNavigationScope? of(BuildContext context) {
    final BottomNavigationScope? result =
        context.dependOnInheritedWidgetOfExactType<BottomNavigationScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
          "BottomNavigationScope.of() called with a context that does not contain a BottomNavigationScope.");
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}

class BottomNavigationController extends ChangeNotifier {
  BottomNavigationController({
    this.initialIndex = 0,
    required this.length,
  }) : _index = initialIndex;

  final int initialIndex;
  final int length;

  int _index = 0;
  int get index => _index;
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
