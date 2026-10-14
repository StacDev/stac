import 'package:flutter/widgets.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/state/stac_item_scope.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

/// The children of a layout widget: the widgets in its `children`, with each
/// `forEach` among them replaced by its items, followed by one widget per
/// entry of its `items`.
///
/// Item widgets read their entry as `$item` and its position as `$index`.
/// They are built on demand by [build], so scrollable layouts can pass
/// [build] to their builder constructors.
class StacChildren {
  /// Collects [children], and one entry per element of [items] when
  /// [itemTemplate] is set.
  ///
  /// A placeholder in [items], or in the `items` of a `forEach` among
  /// [children], is read while building [context], so [context] rebuilds
  /// when the list changes.
  factory StacChildren(
    BuildContext context, {
    List<StacWidget>? children,
    Object? items,
    StacWidget? itemTemplate,
    String? keyPath,
  }) {
    final collector = _Collector(context);
    if (children != null) {
      for (var i = 0; i < children.length; i++) {
        collector.addChild(children[i], i);
      }
    }
    var itemsEmpty = false;
    if (itemTemplate != null) {
      final list = collector.resolveItems(items);
      itemsEmpty = list != null && list.isEmpty;
      collector.addItems(list, itemTemplate.toJson(), keyPath, 'items');
    } else if (items != null) {
      stacWarnOnce(
        'items without itemTemplate',
        '"items" has no "itemTemplate", so no items are shown.',
      );
    }
    return StacChildren._(collector.entries, collector.keys, itemsEmpty);
  }

  StacChildren._(this._entries, this._keys, this.itemsEmpty);

  final List<_Child> _entries;
  final Map<Key, int> _keys;

  /// Whether `items` was given and is an empty list.
  final bool itemsEmpty;

  /// The number of children.
  int get length => _entries.length;

  /// Whether there are no children.
  bool get isEmpty => _entries.isEmpty;

  /// Whether some children have keys from a `keyPath`.
  bool get hasKeys => _keys.isNotEmpty;

  /// Builds child [index] in [context].
  Widget build(BuildContext context, int index) {
    return _entries[index].build(context);
  }

  /// Builds every child in [context].
  List<Widget> buildAll(BuildContext context) {
    return [for (final entry in _entries) entry.build(context)];
  }

  /// The position of the child with [key], for the `findChildIndexCallback`
  /// of builder constructors, so item widgets follow their entries.
  int? indexOfKey(Key key) => _keys[key];

  /// The entry and position of child [index] when it was built from
  /// `items` or a `forEach`, or `null` for a plain child.
  ({Object? item, int index})? itemAt(int index) {
    if (index < 0 || index >= _entries.length) return null;
    final entry = _entries[index];
    if (entry is _ItemChild) return (item: entry.item, index: entry.index);
    return null;
  }

  /// The values an action started for child [index] can read: `$value` is
  /// [index], and item children add `$item` and `$index`.
  Map<String, Object?> actionValues(int index) {
    final item = itemAt(index);
    return {
      r'$value': index,
      if (item != null) ...{r'$item': item.item, r'$index': item.index},
    };
  }

  /// The widget to show instead of the layout: [emptyWidget] when `items`
  /// is an empty list, otherwise `null`.
  Widget? emptyReplacement(BuildContext context, StacWidget? emptyWidget) {
    if (!itemsEmpty || emptyWidget == null) return null;
    return emptyWidget.parse(context) ?? const SizedBox.shrink();
  }
}

class _Collector {
  _Collector(this.context);

  final BuildContext context;
  final List<_Child> entries = [];
  final Map<Key, int> keys = {};

  void addChild(StacWidget child, int position) {
    final json = child.toJson();
    if (json['type'] != WidgetType.forEach.name) {
      entries.add(_StaticChild(json));
      return;
    }
    final StacForEach model;
    try {
      model = StacForEach.fromJson(json);
    } catch (e) {
      Log.e('Invalid forEach: $e');
      return;
    }
    final list = resolveItems(model.items);
    if (list != null && list.isEmpty && model.emptyWidget != null) {
      entries.add(_StaticChild(model.emptyWidget!.toJson()));
      return;
    }
    addItems(list, model.itemTemplate.toJson(), model.keyPath, position);
  }

  /// Reads [items] as a list. A placeholder is resolved against the state
  /// visible at [context].
  List<Object?>? resolveItems(Object? items) {
    var value = items;
    if (value is String && StacTemplate.hasPlaceholderSyntax(value)) {
      value = stacJsonResolver.resolveValue(
        value,
        StacStateReader.watching(context),
      );
    }
    if (value == null || identical(value, stacUnbound)) return null;
    if (value is List) return value;
    stacWarnOnce(
      'items of type ${value.runtimeType}',
      '"items" must be a list, but it is a ${value.runtimeType}, '
          'so no items are shown.',
    );
    return null;
  }

  void addItems(
    List<Object?>? items,
    Map<String, dynamic> template,
    String? keyPath,
    Object source,
  ) {
    if (items == null) return;
    final segments = _keySegments(keyPath);
    final seen = <Object?>{};
    for (var index = 0; index < items.length; index++) {
      final item = items[index];
      Key? key;
      if (segments != null) {
        final value = walkStacPath(item, segments, 0);
        if (value != null && !identical(value, stacUnbound)) {
          if (seen.add(value)) {
            key = ValueKey<(Object, Object?)>((source, value));
            keys[key] = entries.length;
          } else {
            stacWarnOnce(
              'duplicate keyPath $keyPath',
              'Several items have the same "$keyPath" ($value); '
                  'they are matched by position instead.',
            );
          }
        }
      }
      entries.add(_ItemChild(template, item, index, key));
    }
  }

  static List<String>? _keySegments(String? keyPath) {
    if (keyPath == null || keyPath.trim().isEmpty) return null;
    try {
      return stacPathSegments(keyPath);
    } on ArgumentError catch (e) {
      stacWarnOnce(
        'keyPath $keyPath',
        'keyPath "$keyPath" is not a valid path: ${e.message}',
      );
      return null;
    }
  }
}

sealed class _Child {
  Widget build(BuildContext context);
}

final class _StaticChild extends _Child {
  _StaticChild(this.json);

  final Map<String, dynamic> json;

  @override
  Widget build(BuildContext context) {
    return StacService.fromJson(json, context) ?? const SizedBox.shrink();
  }
}

final class _ItemChild extends _Child {
  _ItemChild(this.template, this.item, this.index, this.key);

  final Map<String, dynamic> template;
  final Object? item;
  final int index;
  final Key? key;

  @override
  Widget build(BuildContext context) {
    return StacItemScope(
      key: key,
      item: item,
      index: index,
      child: StacItemBody(template: template),
    );
  }
}

/// Builds an item template below its [StacItemScope].
///
/// The built widget is kept while the template is the same instance and
/// nothing this element depends on changes, so rebuilding a list does not
/// rebuild the items whose entries did not change. Widgets in the template
/// that read `$item` or `$index` depend on the scope and rebuild on their
/// own.
class StacItemBody extends StatefulWidget {
  /// Creates the body for [template].
  const StacItemBody({super.key, required this.template});

  /// The item template's JSON.
  final Map<String, dynamic> template;

  @override
  State<StacItemBody> createState() => _StacItemBodyState();
}

class _StacItemBodyState extends State<StacItemBody> {
  Widget? _built;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _built = null;
  }

  @override
  void didUpdateWidget(covariant StacItemBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.template, widget.template)) _built = null;
  }

  @override
  void reassemble() {
    super.reassemble();
    _built = null;
  }

  @override
  Widget build(BuildContext context) {
    return _built ??=
        StacService.fromJson(widget.template, context) ??
        const SizedBox.shrink();
  }
}
