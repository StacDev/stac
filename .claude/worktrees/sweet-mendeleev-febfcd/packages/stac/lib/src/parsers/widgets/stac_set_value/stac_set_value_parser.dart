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
      _stacRegistry.setValue(value['key'] as String, value['value']);
    }
  }

  @override
  void dispose() {
    for (final value in widget.model.values) {
      _stacRegistry.removeValue(value['key'] as String);
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
