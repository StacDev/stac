import 'package:flutter/cupertino.dart';
import 'package:stac_logger/stac_logger.dart';

class StacFormScope extends InheritedWidget {
  const StacFormScope({
    super.key,
    required super.child,
    required this.formData,
    required this.formKey,
  });

  final Map<String, dynamic> formData;
  final GlobalKey<FormState> formKey;

  /// The nearest form scope, or `null` outside a form. Unlike [of], this
  /// does not log when there is none.
  static StacFormScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StacFormScope>();
  }

  static StacFormScope? of(BuildContext context) {
    final StacFormScope? result = context
        .dependOnInheritedWidgetOfExactType<StacFormScope>();

    if (result != null) {
      return result;
    } else {
      Log.e(
        "StacFormScope.of() called with a context that does not contain a StacFormScope.",
      );
      return null;
    }
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget.child != child;
  }
}
