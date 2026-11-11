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
Widget buildWithItems(
  BuildContext context, {
  required dynamic items,
  required StacWidget? itemTemplate,
  required StacWidget? emptyTemplate,
  required List<StacWidget>? children,
  required Widget Function(BuildContext context, List<StacWidget>? children)
  builder,
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
  );
}

/// The children for [items]: [itemTemplate] filled once per entry, or
/// [emptyTemplate] when there are no entries.
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
  return [
    for (final item in items)
      StacWidget.fromJson(
        resolveVariablesInJson(
              resolvePlaceholders(template, (path) => _itemValue(item, path)),
              registry,
            )
            as Map<String, dynamic>,
      ),
  ];
}

// `{{item}}` is the entry itself; `{{item.x}}` and `{{x}}` read into it.
Object? _itemValue(dynamic item, String path) {
  if (path == 'item') return item;
  if (path.startsWith('item.') || path.startsWith('item[')) {
    return readPath(item, path.substring(4));
  }
  return item is Map ? readPath(item, path) : null;
}

class _ItemsBuilder extends StatefulWidget {
  const _ItemsBuilder({
    required this.items,
    required this.itemTemplate,
    required this.emptyTemplate,
    required this.builder,
  });

  final dynamic items;
  final StacWidget itemTemplate;
  final StacWidget? emptyTemplate;
  final Widget Function(BuildContext context, List<StacWidget>? children)
  builder;

  @override
  State<_ItemsBuilder> createState() => _ItemsBuilderState();
}

class _ItemsBuilderState extends State<_ItemsBuilder> {
  final StacRegistry _registry = StacRegistry.instance;
  String? _key;

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
    _key = placeholderKeys('{{$path}}').first;
    _registry.listen(_key!).addListener(_changed);
  }

  void _unlisten() {
    final key = _key;
    if (key != null) {
      _registry.listen(key).removeListener(_changed);
      _key = null;
    }
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
    return widget.builder(
      context,
      templateChildren(_items, widget.itemTemplate, widget.emptyTemplate),
    );
  }
}
