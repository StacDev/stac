import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/stac_registry.dart';
import 'package:stac/src/utils/placeholders.dart';
import 'package:stac/src/utils/schedule_rebuild.dart';
import 'package:stac/src/utils/variable_resolver.dart';
import 'package:stac_core/stac_core.dart';

/// Builds a widget whose children come from `items` and `itemTemplate`.
///
/// When [itemTemplate] is null, [builder] gets [children] as they are. Else
/// one child is built per entry of [items], or [emptyTemplate] alone when
/// there are none. An [items] value that is a `{{placeholder}}` is read from
/// state, and the widget is rebuilt whenever that key changes.
///
/// With [emptyBuilder], an empty list shows [emptyTemplate] through it
/// instead, for a widget such as a grid that would otherwise put it in one
/// cell.
Widget buildWithItems(
  BuildContext context, {
  required dynamic items,
  required StacWidget? itemTemplate,
  required StacWidget? emptyTemplate,
  required List<StacWidget>? children,
  required Widget Function(BuildContext context, List<StacWidget>? children)
  builder,
  Widget Function(BuildContext context, StacWidget emptyTemplate)? emptyBuilder,
}) {
  // A `dynamicView` fills an itemTemplate without `items`; that is not a
  // binding.
  if (itemTemplate == null || items == null) {
    return builder(context, children);
  }
  return _ItemsBuilder(
    items: items,
    itemTemplate: itemTemplate,
    emptyTemplate: emptyTemplate,
    builder: builder,
    emptyBuilder: emptyBuilder,
  );
}

// Children built for entries that each have a different `id`, by child, so
// a child's widget state, such as typed text or a ticked box, stays with its
// entry when entries are added, removed or moved.
final Expando<Key> _itemKeys = Expando<Key>();

/// The key of [child] when it was built for an entry with an `id` that no
/// other entry has. List widgets put it on the child's widget.
Key? itemKey(StacWidget child) => _itemKeys[child];

/// The index in [children] of the child with [key], for a lazy list's
/// `findItemIndexCallback`, so a keyed child keeps its state when it moves.
int? itemIndexOfKey(List<StacWidget>? children, Key key) {
  if (children == null) return null;
  final index = children.indexWhere((child) => itemKey(child) == key);
  return index < 0 ? null : index;
}

/// The children for [items]: [itemTemplate] filled once per entry, or
/// [emptyTemplate] when there are no entries. When every entry is a map with
/// an `id` that no other entry has, each child is keyed by it (see
/// [itemKey]).
List<StacWidget> templateChildren(
  List<dynamic> items,
  StacWidget itemTemplate,
  StacWidget? emptyTemplate,
) {
  if (items.isEmpty) {
    return [?emptyTemplate];
  }
  final registry = StacRegistry.instance;
  final template = itemTemplate.toJson();
  final ids = [for (final item in items) item is Map ? item['id'] : null];
  final keyed = !ids.contains(null) && ids.toSet().length == ids.length;
  return [
    for (var i = 0; i < items.length; i++)
      _keyed(
        keyed ? ValueKey<Object?>(ids[i]) : null,
        StacWidget.fromJson(
          resolveVariablesInJson(
                resolvePlaceholders(
                  template,
                  (path) => _itemValue(items[i], path),
                  skipEntry: _isNestedTemplate,
                  expressionEntry: isExpressionEntry,
                ),
                registry,
              )
              as Map<String, dynamic>,
        ),
      ),
  ];
}

StacWidget _keyed(Key? key, StacWidget child) {
  if (key != null) _itemKeys[child] = key;
  return child;
}

// A list inside the template fills its own itemTemplate from its own
// entries. Its `items` are still read from this entry.
bool _isNestedTemplate(Map<dynamic, dynamic> json, String key) =>
    key == 'itemTemplate' && json['items'] != null;

// `{{item}}` is the entry itself; `{{item.x}}` and `{{x}}` read into it. A
// field whose name has a dot, such as `user.name`, matches before a path.
Object? _itemValue(dynamic item, String path) {
  if (path == 'item') return item;
  if (path.startsWith('item.') || path.startsWith('item[')) {
    return readPath(item, path.substring(4));
  }
  if (item is! Map) return null;
  if (item.containsKey(path)) return item[path];
  return readPath(item, path);
}

class _ItemsBuilder extends StatefulWidget {
  const _ItemsBuilder({
    required this.items,
    required this.itemTemplate,
    required this.emptyTemplate,
    required this.builder,
    required this.emptyBuilder,
  });

  final dynamic items;
  final StacWidget itemTemplate;
  final StacWidget? emptyTemplate;
  final Widget Function(BuildContext context, List<StacWidget>? children)
  builder;
  final Widget Function(BuildContext context, StacWidget emptyTemplate)?
  emptyBuilder;

  @override
  State<_ItemsBuilder> createState() => _ItemsBuilderState();
}

class _ItemsBuilderState extends State<_ItemsBuilder> {
  final StacRegistry _registry = StacRegistry.instance;
  List<String> _keys = const [];

  @override
  void initState() {
    super.initState();
    _listen();
  }

  @override
  void didUpdateWidget(covariant _ItemsBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      _unlisten();
      _listen();
    }
  }

  @override
  void dispose() {
    _unlisten();
    super.dispose();
  }

  // The state key `items` refers to, when it is a placeholder.
  String? get _path {
    final items = widget.items;
    return items is String ? singlePlaceholder(items) : null;
  }

  void _listen() {
    final path = _path;
    if (path == null) return;
    _keys = watchedKeys(path);
    for (final key in _keys) {
      _registry.listen(key).addListener(_changed);
    }
  }

  void _unlisten() {
    for (final key in _keys) {
      _registry.listen(key).removeListener(_changed);
    }
    _keys = const [];
  }

  void _changed() => scheduleRebuild(() {
    if (mounted) {
      setState(() {});
    }
  });

  List<dynamic> get _items {
    final path = _path;
    final value = path == null ? widget.items : registryValue(_registry, path);
    return value is List ? value : const [];
  }

  @override
  Widget build(BuildContext context) {
    final items = _items;
    final emptyTemplate = widget.emptyTemplate;
    final emptyBuilder = widget.emptyBuilder;
    if (items.isEmpty && emptyTemplate != null && emptyBuilder != null) {
      return emptyBuilder(context, emptyTemplate);
    }
    return widget.builder(
      context,
      templateChildren(items, widget.itemTemplate, emptyTemplate),
    );
  }
}
