import 'package:flutter/widgets.dart';

import '../../utils/log.dart';

class MiraiRadioGroupScope extends InheritedWidget {
  const MiraiRadioGroupScope({
    super.key,
    required this.radioGroupValue,
    required this.onSelect,
    required super.child,
  });

  final ValueNotifier<dynamic> radioGroupValue;
  final Function(dynamic value) onSelect;

  static MiraiRadioGroupScope? of(BuildContext context) {
    final MiraiRadioGroupScope? result =
        context.dependOnInheritedWidgetOfExactType<MiraiRadioGroupScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
          "MiraiRadioGroupScope.of() called with a context that does not contain a MiraiRadioGroupScope.");
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
