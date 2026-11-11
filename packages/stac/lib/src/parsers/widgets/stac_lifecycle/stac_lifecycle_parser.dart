import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_logger/stac_logger.dart';

class StacLifecycleParser extends StacParser<StacLifecycle> {
  const StacLifecycleParser();

  @override
  String get type => WidgetType.lifecycle.name;

  @override
  StacLifecycle getModel(Map<String, dynamic> json) =>
      StacLifecycle.fromJson(json);

  @override
  Widget parse(BuildContext context, StacLifecycle model) {
    return _Lifecycle(model: model);
  }
}

class _Lifecycle extends StatefulWidget {
  const _Lifecycle({required this.model});

  final StacLifecycle model;

  @override
  State<_Lifecycle> createState() => _LifecycleState();
}

class _LifecycleState extends State<_Lifecycle> {
  @override
  void initState() {
    super.initState();
    // After the first frame, so the action can use the screen it is on.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        widget.model.onLoad?.parse(context);
      }
    });
  }

  @override
  void dispose() {
    try {
      widget.model.onDispose?.parse(context);
    } catch (e) {
      Log.w('onDispose failed: $e');
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.model.child.parse(context) ?? const SizedBox();
  }
}
