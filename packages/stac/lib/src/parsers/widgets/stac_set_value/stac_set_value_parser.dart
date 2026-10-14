import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/state/stac_state_writer.dart';
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

/// Writes its values when created and removes them when disposed.
///
/// Entries with `key` write app state, as they always have. For state that
/// belongs to part of a screen, `stateScope` is the better fit.
class _SetValueWidget extends StatefulWidget {
  const _SetValueWidget({required this.model});

  final StacSetValue model;

  @override
  State<_SetValueWidget> createState() => _SetValueWidgetState();
}

class _SetValueWidgetState extends State<_SetValueWidget> {
  List<StacStateWrite>? _written;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _written ??= StacStateWriter.apply(context, widget.model.values);
  }

  @override
  void dispose() {
    for (final write in _written ?? const <StacStateWrite>[]) {
      write.undo();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.model.child.parse(context) ?? const SizedBox();
  }
}
