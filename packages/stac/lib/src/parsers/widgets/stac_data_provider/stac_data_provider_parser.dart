import 'dart:async';

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/expressions/stac_expression_runtime.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/services/stac_data_loader.dart';
import 'package:stac/src/state/stac_data_providers.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac/src/state/stac_state_reader.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacDataProviderParser extends StacParser<StacDataProvider> {
  const StacDataProviderParser();

  @override
  String get type => WidgetType.dataProvider.name;

  @override
  StacDataProvider getModel(Map<String, dynamic> json) =>
      StacDataProvider.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDataProvider model) {
    return _DataProvider(model: model);
  }
}

/// Which of its widgets a provider shows.
enum _Content { child, loader, error }

class _DataProvider extends StatefulWidget {
  const _DataProvider({required this.model});

  final StacDataProvider model;

  @override
  State<_DataProvider> createState() => _DataProviderState();
}

/// Holds the provider's data in its own level of state, under its `id`.
///
/// The request is resolved against the state around the provider, so a
/// placeholder in it sends the request again when the value it reads
/// changes.
class _DataProviderState extends State<_DataProvider>
    implements StacRefetchable {
  StacScopeNode? _node;
  late final StacDataLoader _loader = StacDataLoader(onChange: _onChange);
  Map<String, dynamic>? _request;
  String? _targetPath;
  String? _registeredId;
  _Content _content = _Content.child;
  bool _rebuildScheduled = false;

  @override
  String get id => widget.model.id;

  @override
  StacScopeNode get node => _node!;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_node == null) {
      _node = StacScopeNode.local(
        StacScopeNode.of(context),
        state: {id: const StacDataState(isLoading: true).toJson()},
        debugLabel: 'dataProvider $id',
      );
      _register();
    }
    _sync();
  }

  @override
  void didUpdateWidget(covariant _DataProvider oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model.id != id) {
      final store = _node!.store;
      store.removeKey(oldWidget.model.id);
      store.setKey(id, _loader.state.toJson());
      _register();
    }
    _sync();
  }

  @override
  void dispose() {
    final registered = _registeredId;
    if (registered != null) StacDataProviders.remove(this, registered);
    _loader.dispose();
    _node?.dispose();
    super.dispose();
  }

  void _register() {
    final registered = _registeredId;
    if (registered != null) StacDataProviders.remove(this, registered);
    _registeredId = id;
    StacDataProviders.add(this);
  }

  /// Sends the request when it, or the target path, differs from the last
  /// one sent.
  void _sync() {
    final request = stacJsonResolver.resolveAction(
      widget.model.request.toJson(),
      StacStateReader.watching(context),
    );
    final targetPath = widget.model.targetPath;
    if (_request != null &&
        targetPath == _targetPath &&
        stacDeepEquals(request, _request)) {
      return;
    }
    _request = request;
    _targetPath = targetPath;
    unawaited(_load(request));
  }

  Future<void> _load(Map<String, dynamic> request) {
    return _loader.load(
      context,
      StacNetworkRequest.fromJson(request),
      targetPath: _targetPath,
      resolve: false,
    );
  }

  @override
  Future<void> refetch() {
    final request = _request;
    if (!mounted || request == null) return Future.value();
    return _load(request);
  }

  void _onChange(StacDataState state) {
    final node = _node;
    if (node == null || node.isDisposed) return;
    node.store.setKey(id, state.toJson());
    final content = _contentFor(state);
    if (content == _content) return;
    _content = content;
    _rebuild();
  }

  _Content _contentFor(StacDataState state) {
    if (state.hasData) return _Content.child;
    final model = widget.model;
    if (state.isLoading && model.loaderWidget != null) return _Content.loader;
    if (state.error != null && model.errorWidget != null) {
      return _Content.error;
    }
    return _Content.child;
  }

  void _rebuild() {
    if (!mounted) return;
    final binding = SchedulerBinding.instance;
    if (binding.schedulerPhase != SchedulerPhase.persistentCallbacks) {
      setState(() {});
      return;
    }
    if (_rebuildScheduled) return;
    _rebuildScheduled = true;
    binding.addPostFrameCallback((_) {
      _rebuildScheduled = false;
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    _content = _contentFor(_loader.state);
    final content = switch (_content) {
      _Content.child => model.child,
      _Content.loader => model.loaderWidget,
      _Content.error => model.errorWidget,
    };
    return StacScopeHost(
      node: _node!,
      child: Builder(
        builder: (scoped) => content.parse(scoped) ?? const SizedBox.shrink(),
      ),
    );
  }
}
