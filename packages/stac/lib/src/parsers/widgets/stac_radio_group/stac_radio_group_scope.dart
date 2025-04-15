import 'package:flutter/widgets.dart';
import 'package:stac/src/utils/log.dart';

class StacRadioGroupScope extends InheritedWidget {
  const StacRadioGroupScope({
    super.key,
    required this.radioGroupValue,
    required this.onSelect,
    required super.child,
  });

  final ValueNotifier<dynamic> radioGroupValue;
  final Function(dynamic value) onSelect;

  static StacRadioGroupScope? of(BuildContext context) {
    final StacRadioGroupScope? result =
        context.dependOnInheritedWidgetOfExactType<StacRadioGroupScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
          "StacRadioGroupScope.of() called with a context that does not contain a StacRadioGroupScope.");
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
