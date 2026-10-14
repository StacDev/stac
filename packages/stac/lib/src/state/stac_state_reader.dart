import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/expressions/stac_action_scope.dart';
import 'package:stac/src/state/stac_item_scope.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_core/stac_core.dart';

/// Reads Stac state for expressions.
///
/// A plain name such as `count` is looked up from the innermost scope
/// outward: local `stateScope` state, then the screen, then the app. Keys
/// written with `setValue` may contain dots (`user.name`); a path matches
/// the longest such key first. Reserved names reach a level directly:
///
/// | Name | Value |
/// |------|-------|
/// | `$app` | App state |
/// | `$screen` | The screen's state |
/// | `$form` | The field values of the enclosing form, by field `id` |
/// | `$args` | The arguments the screen was opened with |
/// | `$item`, `$index` | The current entry and its position, inside an item template |
/// | `$device` | `width`, `height`, `orientation`, `breakpoint`, `isTablet`, `brightness`, `platform`, `textScale` |
/// | `$value` | The value an input reported, inside its callback |
/// | `$result` | A network request's response, inside its result actions |
class StacStateReader extends StacScopeReader {
  StacStateReader._(this._node, this._context, this._watch, this._values);

  /// A reader for building [context]. Reading a variable makes [context]
  /// rebuild when that variable changes.
  factory StacStateReader.watching(BuildContext context) {
    return StacStateReader._(
      StacScopeNode.of(context),
      context,
      true,
      const {},
    );
  }

  /// A reader for an action run from [context]. It also sees the running
  /// action's values, such as `$value`, and never registers dependencies.
  factory StacStateReader.forAction(BuildContext? context) {
    final mounted = context != null && context.mounted;
    return StacStateReader._(
      mounted ? StacScopeNode.of(context) : StacScopeNode.app,
      mounted ? context : null,
      false,
      StacActionScope.current,
    );
  }

  /// A reader for [node] alone, without a widget.
  factory StacStateReader.forNode(StacScopeNode node) {
    return StacStateReader._(node, null, false, StacActionScope.current);
  }

  final StacScopeNode _node;
  final BuildContext? _context;
  final bool _watch;
  final Map<String, Object?> _values;

  /// The innermost level this reader reads.
  StacScopeNode get node => _node;

  void _depend(String aspect) {
    final context = _context;
    if (!_watch || context == null) return;
    context.dependOnInheritedWidgetOfExactType<StacScopeModel>(aspect: aspect);
  }

  /// The item scope that [aspect] (`$item` or `$index`) reads, if any.
  StacItemScope? _itemScope(String aspect) {
    final context = _context;
    if (context == null || !context.mounted) return null;
    return StacItemScope.maybeOf(context, aspect: _watch ? aspect : null);
  }

  Object? _item(String name) {
    final scope = _itemScope(name);
    if (scope == null) return stacUnbound;
    return name == StacItemScope.itemAspect ? scope.item : scope.index;
  }

  @override
  Object? lookup(String name) {
    if (_values.containsKey(name)) return _values[name];
    switch (name) {
      case r'$app':
        _depend(r'$app');
        return StacScopeNode.app.store.data;
      case r'$screen':
        _depend(r'$screen');
        return _node.screen.store.data;
      case r'$form':
        _depend(r'$form');
        return _node.form?.store.data ?? stacUnbound;
      case r'$args':
        return _node.arguments;
      case r'$device':
        return _device();
      case r'$item':
      case r'$index':
        return _item(name);
    }
    _depend(name);
    for (final level in _node.chain) {
      if (!level.holdsNames) continue;
      final data = level.store.data;
      if (data.containsKey(name)) return data[name];
    }
    return stacUnbound;
  }

  @override
  Object? lookupPath(List<String> segments) {
    if (segments.isEmpty) return stacUnbound;
    final root = segments.first;
    if (_values.containsKey(root)) {
      return walkStacPath(_values[root], segments, 1);
    }
    switch (root) {
      case r'$app':
        return _inLevel(StacScopeNode.app, r'$app', segments);
      case r'$screen':
        return _inLevel(_node.screen, r'$screen', segments);
      case r'$form':
        final form = _node.form;
        if (form == null) return stacUnbound;
        return _inLevel(form, r'$form', segments);
      case r'$args':
        return walkStacPath(_node.arguments, segments, 1);
      case r'$device':
        if (segments.length == 1) return _device();
        return walkStacPath(_deviceValue(segments[1]), segments, 2);
      case r'$item':
      case r'$index':
        return walkStacPath(_item(root), segments, 1);
    }
    for (final level in _node.chain) {
      if (!level.holdsNames) continue;
      final found = _longestKey(level.store.data, segments, 0);
      if (found != null) {
        _depend(found.key);
        return walkStacPath(found.value, segments, found.end);
      }
    }
    _depend(root);
    return stacUnbound;
  }

  Object? _inLevel(StacScopeNode level, String namespace, List<String> path) {
    final data = level.store.data;
    if (path.length == 1) {
      _depend(namespace);
      return data;
    }
    final found = _longestKey(data, path, 1);
    if (found == null) {
      _depend('$namespace.${path[1]}');
      return stacUnbound;
    }
    _depend('$namespace.${found.key}');
    return walkStacPath(found.value, path, found.end);
  }

  /// Finds the longest key in [data] made of `path[start..end]` joined with
  /// dots, so legacy keys like `user.name` win over nested lookups.
  static ({String key, Object? value, int end})? _longestKey(
    Map<String, Object?> data,
    List<String> path,
    int start,
  ) {
    for (var end = path.length; end > start; end--) {
      final key = end == start + 1
          ? path[start]
          : path.sublist(start, end).join('.');
      if (data.containsKey(key)) {
        return (key: key, value: data[key], end: end);
      }
    }
    return null;
  }

  static const List<String> _deviceKeys = [
    'width',
    'height',
    'orientation',
    'breakpoint',
    'isTablet',
    'brightness',
    'platform',
    'textScale',
  ];

  Map<String, Object?> _device() {
    return {for (final key in _deviceKeys) key: _deviceValue(key)};
  }

  Object? _deviceValue(String key) {
    final context = _context;
    if (key == 'platform') {
      return kIsWeb ? 'web' : defaultTargetPlatform.name.toLowerCase();
    }
    if (context == null || !context.mounted) return stacUnbound;
    final data = _watch
        ? null
        : context.getInheritedWidgetOfExactType<MediaQuery>()?.data;
    Size? size() => _watch ? MediaQuery.maybeSizeOf(context) : data?.size;
    switch (key) {
      case 'width':
        return size()?.width;
      case 'height':
        return size()?.height;
      case 'orientation':
        final value = size();
        if (value == null) return null;
        return value.width > value.height ? 'landscape' : 'portrait';
      case 'breakpoint':
        final width = size()?.width;
        if (width == null) return null;
        if (width < 600) return 'compact';
        if (width < 840) return 'medium';
        return 'expanded';
      case 'isTablet':
        final value = size();
        return value == null ? null : value.shortestSide >= 600;
      case 'brightness':
        final brightness = _watch
            ? MediaQuery.maybePlatformBrightnessOf(context)
            : data?.platformBrightness;
        return brightness?.name;
      case 'textScale':
        final scaler = _watch
            ? MediaQuery.maybeTextScalerOf(context)
            : data?.textScaler;
        return scaler?.scale(1);
    }
    return stacUnbound;
  }
}
