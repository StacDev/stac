import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/expression_resolver.dart';
import 'package:stac/src/utils/placeholders.dart';
import 'package:stac/src/utils/schedule_rebuild.dart';
import 'package:stac/src/utils/variable_resolver.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacObserverParser extends StacParser<StacObserver> {
  const StacObserverParser();

  @override
  String get type => WidgetType.observer.name;

  @override
  StacObserver getModel(Map<String, dynamic> json) =>
      StacObserver.fromJson(json);

  @override
  Widget parse(BuildContext context, StacObserver model) {
    return _Observer(model: model);
  }
}

class _Observer extends StatefulWidget {
  const _Observer({required this.model});

  final StacObserver model;

  @override
  State<_Observer> createState() => _ObserverState();
}

class _ObserverState extends State<_Observer> {
  final StacRegistry _registry = StacRegistry.instance;
  late List<String> _keys;

  @override
  void initState() {
    super.initState();
    _keys = _keysOf(widget.model);
    _listen(_keys);
  }

  @override
  void didUpdateWidget(covariant _Observer oldWidget) {
    super.didUpdateWidget(oldWidget);
    final keys = _keysOf(widget.model);
    if (!listEquals(keys, _keys)) {
      _unlisten(_keys);
      _keys = keys;
      _listen(_keys);
    }
  }

  @override
  void dispose() {
    _unlisten(_keys);
    super.dispose();
  }

  List<String> _keysOf(StacObserver model) {
    final keys = model.keys;
    if (keys != null) return keys;
    final json = model.child?.toJson();
    return {...placeholderKeys(json), ..._conditionKeys(json)}.toList();
  }

  void _listen(List<String> keys) {
    for (final key in keys) {
      _registry.listen(key).addListener(_changed);
    }
  }

  void _unlisten(List<String> keys) {
    for (final key in keys) {
      _registry.listen(key).removeListener(_changed);
    }
  }

  void _changed() => scheduleRebuild(() {
    if (mounted) {
      setState(() {});
    }
  });

  @override
  Widget build(BuildContext context) {
    final child = widget.model.child;
    if (child == null) {
      return const SizedBox();
    }
    final json = resolveVariablesInJson(child.toJson(), _registry);
    return Stac.fromJson(json, context) ?? const SizedBox();
  }
}

// The state keys that conditions of conditionals in [json] read by name, such
// as `items` in `length(items) > 0`. Keys in placeholders are found already.
List<String> _conditionKeys(dynamic json) {
  final keys = <String>[];
  void collect(dynamic node) {
    if (node is Map) {
      final condition = node['condition'];
      if (node['type'] == WidgetType.conditional.name && condition is String) {
        keys.addAll(
          ExpressionResolver.dependencies(
            condition.replaceAll(placeholderPattern, 'null'),
          ),
        );
      }
      node.values.forEach(collect);
    } else if (node is List) {
      node.forEach(collect);
    }
  }

  collect(json);
  return keys;
}
