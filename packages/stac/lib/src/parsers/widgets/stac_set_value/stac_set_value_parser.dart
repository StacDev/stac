import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/utils/variable_resolver.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSetValueParser extends StacParser<StacSetValue> {
  const StacSetValueParser();

  @override
  String get type => WidgetType.setValue.name;

  @override
  StacSetValue getModel(Map<String, dynamic> json) =>
      StacSetValue.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSetValue model) {
    return _SetValueWidget(model: model);
  }
}

class _SetValueWidget extends StatefulWidget {
  const _SetValueWidget({required this.model});

  final StacSetValue model;

  @override
  State<_SetValueWidget> createState() => _SetValueWidgetState();
}

class _SetValueWidgetState extends State<_SetValueWidget> {
  final StacRegistry _stacRegistry = StacRegistry.instance;

  @override
  void initState() {
    super.initState();

    for (final value in widget.model.values) {
      final key = value['key'] as String;
      final persist = value['persist'] == true;
      // A persisted key that has a value, such as one `Stac.initialize`
      // restored, keeps it: the widget's value is only its default.
      final current = _stacRegistry.getValue(key);
      if ((persist || _stacRegistry.isPersisted(key)) && current != null) {
        // A key this widget starts persisting saves the value it has.
        if (persist && !_stacRegistry.isPersisted(key)) {
          _stacRegistry.setValue(key, current, persist: true);
        }
        continue;
      }
      _stacRegistry.setValue(key, value['value'], persist: persist);
    }
  }

  @override
  void dispose() {
    for (final value in widget.model.values) {
      final key = value['key'] as String;
      // Persisted values outlive the widget.
      if (!_stacRegistry.isPersisted(key)) {
        _stacRegistry.removeValue(key);
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.model.child == null) {
      return const SizedBox();
    }

    // Convert the StacWidget to JSON, resolve variables, then parse it back
    final childJson = widget.model.child!.toJson();

    final resolvedJson = resolveVariablesInJson(childJson, _stacRegistry);

    return Stac.fromJson(resolvedJson, context) ?? const SizedBox();
  }
}
