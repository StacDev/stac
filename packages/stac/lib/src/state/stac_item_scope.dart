import 'package:flutter/widgets.dart';
import 'package:stac_core/stac_core.dart';

/// Gives the widgets built for one entry of a list the entry (`$item`) and
/// its position (`$index`).
///
/// Widgets register `$item` or `$index` as the aspect they read, so a
/// widget that reads only `$index` does not rebuild when its entry changes.
/// Entries are compared by identity first and then by value, so rebuilding
/// a list with equal entries rebuilds none of them.
class StacItemScope extends InheritedModel<String> {
  /// Creates a scope for [item] at [index].
  const StacItemScope({
    super.key,
    required this.item,
    required this.index,
    required super.child,
  });

  /// The aspect for reading the entry.
  static const String itemAspect = r'$item';

  /// The aspect for reading the position.
  static const String indexAspect = r'$index';

  /// The entry.
  final Object? item;

  /// The position of [item] in its list, starting at 0.
  final int index;

  /// The nearest scope above [context], or `null` outside a list.
  ///
  /// With an [aspect], [context] rebuilds when that part of the scope
  /// changes.
  static StacItemScope? maybeOf(BuildContext context, {String? aspect}) {
    if (aspect == null) {
      return context.getInheritedWidgetOfExactType<StacItemScope>();
    }
    return InheritedModel.inheritFrom<StacItemScope>(context, aspect: aspect);
  }

  bool _sameItem(StacItemScope oldWidget) {
    return identical(oldWidget.item, item) ||
        stacDeepEquals(oldWidget.item, item);
  }

  @override
  bool updateShouldNotify(StacItemScope oldWidget) {
    return oldWidget.index != index || !_sameItem(oldWidget);
  }

  @override
  bool updateShouldNotifyDependent(
    StacItemScope oldWidget,
    Set<String> dependencies,
  ) {
    if (dependencies.contains(itemAspect) && !_sameItem(oldWidget)) {
      return true;
    }
    return dependencies.contains(indexAspect) && oldWidget.index != index;
  }
}
