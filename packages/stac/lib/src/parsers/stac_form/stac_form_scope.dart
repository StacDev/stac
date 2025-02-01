import 'package:flutter/cupertino.dart';
import 'package:stac/src/utils/log.dart';

class StacFormScope extends InheritedWidget {
  const StacFormScope({
    super.key,
    required super.child,
    required this.formData,
    required this.formKey,
  });

  final Map<String, dynamic> formData;
  final GlobalKey<FormState> formKey;

  static StacFormScope? of(BuildContext context) {
    final StacFormScope? result =
        context.dependOnInheritedWidgetOfExactType<StacFormScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
          "StacFormScope.of() called with a context that does not contain a StacFormScope.");
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
