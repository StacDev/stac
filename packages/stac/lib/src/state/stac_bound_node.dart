import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_framework/stac_framework.dart';

/// Builds one Stac widget whose own properties contain placeholders or a
/// condition.
///
/// The placeholders are resolved when the widget builds, and reading a
/// variable makes this widget, and only this one, rebuild when it changes.
/// When the parent rebuilds with the same JSON and nothing this widget read
/// has changed, the previous result is reused.
class StacBoundNode extends StatefulWidget {
  /// Creates a node for [json], built by [parser].
  const StacBoundNode({super.key, required this.json, required this.parser});

  /// The widget JSON, with its placeholders.
  final Map<String, dynamic> json;

  /// The parser for the widget's type.
  final StacParser<dynamic> parser;

  @override
  State<StacBoundNode> createState() => _StacBoundNodeState();
}

class _StacBoundNodeState extends State<StacBoundNode> {
  Widget? _built;
  bool _stale = true;
  bool _listeningToApp = false;
  bool _rebuildScheduled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _stale = true;
    // Outside any scope there is no model to depend on, so listen to app
    // state directly.
    final inScope = StacScopeNode.isInScope(context);
    if (!inScope && !_listeningToApp) {
      StacScopeNode.app.addListener(_onAppChange);
      _listeningToApp = true;
    } else if (inScope && _listeningToApp) {
      StacScopeNode.app.removeListener(_onAppChange);
      _listeningToApp = false;
    }
  }

  @override
  void didUpdateWidget(covariant StacBoundNode oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!identical(oldWidget.json, widget.json) ||
        !identical(oldWidget.parser, widget.parser)) {
      _stale = true;
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    _stale = true;
  }

  @override
  void dispose() {
    if (_listeningToApp) StacScopeNode.app.removeListener(_onAppChange);
    super.dispose();
  }

  void _onAppChange() {
    if (!mounted) return;
    final binding = SchedulerBinding.instance;
    if (binding.schedulerPhase != SchedulerPhase.persistentCallbacks) {
      setState(() => _stale = true);
      return;
    }
    if (_rebuildScheduled) return;
    _rebuildScheduled = true;
    binding.addPostFrameCallback((_) {
      _rebuildScheduled = false;
      if (mounted) setState(() => _stale = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final built = _built;
    if (!_stale && built != null) return built;
    _stale = false;
    return _built = StacService.buildBoundNode(
      context,
      widget.json,
      widget.parser,
    );
  }
}
