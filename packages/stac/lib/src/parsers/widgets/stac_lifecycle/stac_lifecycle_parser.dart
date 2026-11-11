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
        _run(widget.model.onLoad, 'onLoad');
      }
    });
  }

  @override
  void dispose() {
    _run(widget.model.onDispose, 'onDispose');
    super.dispose();
  }

  // Starts [action] without waiting for it, and logs a failure whether the
  // action throws right away or its future fails later.
  void _run(StacAction? action, String hook) {
    if (action == null) return;
    Future<dynamic>.sync(() => action.parse(context)).catchError((Object e) {
      Log.w('$hook failed: $e');
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.model.child.parse(context) ?? const SizedBox();
  }
}
