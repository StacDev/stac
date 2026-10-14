import 'package:flutter/widgets.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacStateScopeParser extends StacParser<StacStateScope> {
  const StacStateScopeParser();

  @override
  String get type => WidgetType.stateScope.name;

  @override
  StacStateScope getModel(Map<String, dynamic> json) =>
      StacStateScope.fromJson(json);

  @override
  Widget parse(BuildContext context, StacStateScope model) {
    return _StateScope(model: model);
  }
}

class _StateScope extends StatefulWidget {
  const _StateScope({required this.model});

  final StacStateScope model;

  @override
  State<_StateScope> createState() => _StateScopeState();
}

class _StateScopeState extends State<_StateScope> {
  StacScopeNode? _node;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_node != null) return;
    // Initial values may read the enclosing state; they are evaluated once.
    final initial = stacJsonResolver.resolveValue(
      widget.model.state,
      StacStateReader.forAction(context),
    );
    _node = StacScopeNode.local(
      StacScopeNode.of(context),
      state: initial is Map<String, dynamic> ? initial : const {},
      debugLabel: 'stateScope',
    );
  }

  @override
  void dispose() {
    _node?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StacScopeHost(
      node: _node!,
      child: Builder(
        builder: (scoped) =>
            widget.model.child.parse(scoped) ?? const SizedBox.shrink(),
      ),
    );
  }
}
