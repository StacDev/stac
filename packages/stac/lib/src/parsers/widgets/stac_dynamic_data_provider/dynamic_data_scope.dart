import 'package:flutter/widgets.dart';
import 'package:stac/src/utils/template_utils.dart';
import 'package:stac_logger/stac_logger.dart';

/// InheritedWidget that exposes data from [DynamicDataProvider] ancestors
/// to their subtrees.
///
/// Each scope holds a map of provider IDs to their fetched data. When
/// providers are nested, each scope merges the parent's data with its own,
/// making all ancestor providers accessible to any descendant.
class DynamicDataScope extends InheritedWidget {
  const DynamicDataScope({
    super.key,
    required super.child,
    required this.dataMap,
  });

  /// Map of provider IDs to their extracted response data.
  final Map<String, dynamic> dataMap;

  /// Returns the nearest [DynamicDataScope] from the widget tree,
  /// or `null` if none is found.
  static DynamicDataScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DynamicDataScope>();
  }

  /// Returns the nearest [DynamicDataScope] without registering a dependency.
  /// Useful for one-time reads that should not trigger rebuilds.
  static DynamicDataScope? maybeOf(BuildContext context) {
    return context
            .getElementForInheritedWidgetOfExactType<DynamicDataScope>()
            ?.widget
        as DynamicDataScope?;
  }

  /// Returns the data for a given [providerId], or `null` if not found.
  dynamic getData(String providerId) {
    return dataMap[providerId];
  }

  /// Resolves a `{{providerId.path.to.value}}` reference against the scope.
  ///
  /// Splits [expression] on the first `.` to get the provider ID, then
  /// extracts the nested value from that provider's data using the
  /// remaining path segments.
  dynamic resolveExpression(String expression) {
    final dotIndex = expression.indexOf('.');
    if (dotIndex == -1) {
      return dataMap[expression];
    }

    final providerId = expression.substring(0, dotIndex);
    final path = expression.substring(dotIndex + 1);
    final providerData = dataMap[providerId];

    if (providerData == null) {
      Log.w('DynamicDataScope: No provider found with id "$providerId"');
      return null;
    }

    return extractNestedData(providerData, path.split('.'));
  }

  @override
  bool updateShouldNotify(covariant DynamicDataScope oldWidget) {
    return !_mapsEqual(dataMap, oldWidget.dataMap);
  }

  static bool _mapsEqual(Map<String, dynamic> a, Map<String, dynamic> b) {
    if (a.length != b.length) return false;
    for (final key in a.keys) {
      if (!b.containsKey(key) || a[key] != b[key]) return false;
    }
    return true;
  }
}
