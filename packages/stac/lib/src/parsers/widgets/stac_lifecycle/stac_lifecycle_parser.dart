import 'dart:convert';

import 'package:material_ui/material_ui.dart';
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
  bool _loadScheduled = false;

  // The child's key, replaced when another lifecycle takes this one's place.
  // Actions run with the context under it, so a request the old onLoad
  // started finds its context gone when it finishes, and its result doesn't
  // overwrite the new screen's state.
  GlobalKey _actionsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scheduleLoad();
  }

  @override
  void didUpdateWidget(covariant _Lifecycle oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A lifecycle with other actions in the same place, such as the next
    // tab's, is another screen: the old one's onDispose runs, then the new
    // one's onLoad.
    if (!_sameActions(oldWidget.model, widget.model)) {
      _run(
        oldWidget.model.onDispose,
        'onDispose',
        _actionsKey.currentContext ?? context,
      );
      _actionsKey = GlobalKey();
      _scheduleLoad();
    }
  }

  // After the frame, so the action can use the screen it is on.
  void _scheduleLoad() {
    if (_loadScheduled) return;
    _loadScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadScheduled = false;
      final actionsContext = _actionsKey.currentContext;
      if (mounted && actionsContext != null) {
        _run(widget.model.onLoad, 'onLoad', actionsContext);
      }
    });
  }

  static bool _sameActions(StacLifecycle a, StacLifecycle b) =>
      _encode(a.onLoad) == _encode(b.onLoad) &&
      _encode(a.onDispose) == _encode(b.onDispose);

  static String? _encode(StacAction? action) {
    if (action == null) return null;
    final json = action.toJson();
    try {
      return jsonEncode(json);
    } catch (_) {
      return '$json';
    }
  }

  @override
  void dispose() {
    _run(widget.model.onDispose, 'onDispose', context);
    super.dispose();
  }

  // Starts [action] with [context] without waiting for it, and logs a
  // failure whether the action throws right away or its future fails later.
  void _run(StacAction? action, String hook, BuildContext context) {
    if (action == null) return;
    Future<dynamic>.sync(() => action.parse(context)).catchError((Object e) {
      Log.w('$hook failed: $e');
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _actionsKey,
      child: widget.model.child.parse(context) ?? const SizedBox(),
    );
  }
}
