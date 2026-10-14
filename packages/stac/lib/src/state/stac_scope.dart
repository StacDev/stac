import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:stac/src/state/stac_item_scope.dart';
import 'package:stac/src/state/stac_scope_kind.dart';
import 'package:stac/src/state/stac_state_observer.dart';
import 'package:stac/src/state/stac_store.dart';

export 'package:stac/src/state/stac_scope_kind.dart';

/// The app-wide state, available to every Stac screen as `$app`.
final StacStore stacAppStore = StacStore();

/// One level of Stac state: the app, a screen, a local level made by a
/// `stateScope` or a `dataProvider`, or a form.
///
/// Levels form a chain from the innermost outward to the app. A node
/// notifies its listeners when its own state or any outer level changes.
class StacScopeNode extends ChangeNotifier implements StacStateLevel {
  StacScopeNode._(
    this.kind,
    this.store,
    this.parent,
    this.arguments, {
    this.ownsStore = true,
    this.debugLabel,
  }) {
    store.addListener(notifyListeners);
    parent?.addListener(notifyListeners);
    StacStateEvents.levelCreated(this);
  }

  /// A screen level, below the app level.
  factory StacScopeNode.screen({
    Map<String, Object?> state = const {},
    Map<String, Object?> arguments = const {},
    String? debugLabel,
  }) {
    return StacScopeNode._(
      StacScopeKind.screen,
      StacStore(state),
      app,
      freezeStacValue(arguments) as Map<String, Object?>,
      debugLabel: debugLabel,
    );
  }

  /// A form level below [parent], holding the form's field values.
  factory StacScopeNode.form(StacScopeNode parent, {String? debugLabel}) {
    return StacScopeNode._(
      StacScopeKind.form,
      StacStore(),
      parent,
      parent.arguments,
      debugLabel: debugLabel,
    );
  }

  /// A local level below [parent], declaring [state].
  factory StacScopeNode.local(
    StacScopeNode parent, {
    Map<String, Object?> state = const {},
    String? debugLabel,
  }) {
    return StacScopeNode._(
      StacScopeKind.local,
      StacStore(state),
      parent,
      parent.arguments,
      debugLabel: debugLabel,
    );
  }

  /// The app level, backed by [stacAppStore].
  static final StacScopeNode app = StacScopeNode._(
    StacScopeKind.app,
    stacAppStore,
    null,
    const {},
    ownsStore: false,
  );

  /// The node providing state at [context], or [app] when there is none.
  static StacScopeNode of(BuildContext context) {
    if (!context.mounted) return app;
    return context.getInheritedWidgetOfExactType<StacScopeModel>()?.node ?? app;
  }

  /// Whether [context] is inside a screen or local scope.
  static bool isInScope(BuildContext context) {
    return context.getInheritedWidgetOfExactType<StacScopeModel>() != null;
  }

  /// What kind of level this is.
  @override
  final StacScopeKind kind;

  /// The state of this level.
  @override
  final StacStore store;

  /// The next level outward, or `null` for the app level.
  @override
  final StacScopeNode? parent;

  /// The arguments the screen was opened with (`$args`).
  @override
  final Map<String, Object?> arguments;

  /// A short description for debugging tools, such as a route name.
  @override
  final String? debugLabel;

  /// Whether this node disposes [store] when it is disposed.
  final bool ownsStore;

  bool _disposed = false;

  /// Whether [dispose] has been called.
  bool get isDisposed => _disposed;

  /// This level and every level outward, ending with the app level.
  Iterable<StacScopeNode> get chain sync* {
    StacScopeNode? node = this;
    while (node != null) {
      yield node;
      node = node.parent;
    }
  }

  /// The nearest screen level, or the app level outside a screen.
  StacScopeNode get screen {
    return chain.firstWhere(
      (node) =>
          node.kind == StacScopeKind.screen || node.kind == StacScopeKind.app,
    );
  }

  /// The nearest form level, or `null` outside a form.
  StacScopeNode? get form {
    for (final node in chain) {
      if (node.kind == StacScopeKind.form) return node;
    }
    return null;
  }

  /// Whether a plain name can be read from or written to this level.
  ///
  /// Form levels are only reachable through `$form`.
  bool get holdsNames => kind != StacScopeKind.form;

  /// The state of each level of [chain].
  List<Map<String, Object?>> snapshot() {
    return [for (final node in chain) node.store.data];
  }

  @override
  void dispose() {
    _disposed = true;
    StacStateEvents.levelDisposed(this);
    store.removeListener(notifyListeners);
    if (parent?.isDisposed == false) parent!.removeListener(notifyListeners);
    if (ownsStore) store.dispose();
    super.dispose();
  }

  @override
  String toString() => 'StacScopeNode(${describeStacStateLevel(this)})';
}

/// Exposes a [StacScopeNode] to the widgets below it and rebuilds the ones
/// that read a variable when that variable changes.
///
/// Widgets register the variables they read as aspects: a plain name such
/// as `count` (looked up through the whole chain), or `$app.name`,
/// `$screen.name`, `$form.name`, `$app`, `$screen` and `$form`.
class StacScopeModel extends InheritedModel<String> {
  /// Creates a model for [node].
  StacScopeModel({super.key, required this.node, required super.child})
    : snapshot = node.snapshot(),
      _kinds = [for (final level in node.chain) level.kind];

  /// The innermost level.
  final StacScopeNode node;

  /// The state of each level when this model was built.
  final List<Map<String, Object?>> snapshot;

  final List<StacScopeKind> _kinds;

  @override
  bool updateShouldNotify(StacScopeModel oldWidget) {
    if (!identical(oldWidget.node, node)) return true;
    if (oldWidget.snapshot.length != snapshot.length) return true;
    for (var i = 0; i < snapshot.length; i++) {
      if (!identical(oldWidget.snapshot[i], snapshot[i])) return true;
    }
    return false;
  }

  @override
  bool updateShouldNotifyDependent(
    StacScopeModel oldWidget,
    Set<String> dependencies,
  ) {
    if (!identical(oldWidget.node, node) ||
        oldWidget.snapshot.length != snapshot.length) {
      return true;
    }
    for (final aspect in dependencies) {
      if (!oldWidget._find(aspect).matches(_find(aspect))) return true;
    }
    return false;
  }

  @override
  bool isSupportedAspect(Object aspect) => true;

  _Found _find(String aspect) {
    if (aspect.startsWith(r'$')) {
      final dot = aspect.indexOf('.');
      final namespace = dot < 0 ? aspect : aspect.substring(0, dot);
      final level = switch (namespace) {
        r'$app' => _kinds.length - 1,
        r'$screen' => _kinds.indexWhere(
          (kind) => kind == StacScopeKind.screen || kind == StacScopeKind.app,
        ),
        r'$form' => _kinds.indexOf(StacScopeKind.form),
        _ => -1,
      };
      if (level < 0) return const _Found(-1, null, false);
      final data = snapshot[level];
      if (dot < 0) return _Found(level, data, true);
      final key = aspect.substring(dot + 1);
      return _Found(level, data[key], data.containsKey(key));
    }
    for (var i = 0; i < snapshot.length; i++) {
      if (_kinds[i] == StacScopeKind.form) continue;
      if (snapshot[i].containsKey(aspect)) {
        return _Found(i, snapshot[i][aspect], true);
      }
    }
    return const _Found(-1, null, false);
  }
}

final class _Found {
  const _Found(this.level, this.value, this.exists);

  final int level;
  final Object? value;
  final bool exists;

  bool matches(_Found other) {
    if (level != other.level || exists != other.exists) return false;
    if (identical(value, other.value)) return true;
    if (value is Map || value is List) return false;
    return value == other.value;
  }
}

/// Provides [node] to [child] and rebuilds dependents when it changes.
///
/// Changes made while the tree is building, such as a `setValue` widget
/// writing state as it is created, are applied after the frame.
class StacScopeHost extends StatefulWidget {
  /// Creates a host for [node].
  const StacScopeHost({super.key, required this.node, required this.child});

  /// The level of state to provide.
  final StacScopeNode node;

  /// The widget below this one.
  final Widget child;

  @override
  State<StacScopeHost> createState() => _StacScopeHostState();
}

class _StacScopeHostState extends State<StacScopeHost> {
  bool _rebuildScheduled = false;

  @override
  void initState() {
    super.initState();
    widget.node.addListener(_onChange);
  }

  @override
  void didUpdateWidget(covariant StacScopeHost oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (identical(oldWidget.node, widget.node)) return;
    if (!oldWidget.node.isDisposed) oldWidget.node.removeListener(_onChange);
    widget.node.addListener(_onChange);
  }

  @override
  void dispose() {
    if (!widget.node.isDisposed) widget.node.removeListener(_onChange);
    super.dispose();
  }

  void _onChange() {
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
    return StacScopeModel(node: widget.node, child: widget.child);
  }
}

/// Gives [child] its own screen state (`$screen`) and the [arguments] it was
/// opened with (`$args`).
///
/// Every Stac screen is wrapped in one: [Stac.fromJson] adds it when there
/// is no scope above, and navigation adds it to the screens it opens.
class StacScreenScope extends StatefulWidget {
  /// Creates a screen scope.
  const StacScreenScope({
    super.key,
    this.arguments = const {},
    this.state = const {},
    this.debugLabel,
    required this.child,
  });

  /// The arguments the screen was opened with, read when it is created.
  final Map<String, Object?> arguments;

  /// The initial screen state, read when the screen is created.
  final Map<String, Object?> state;

  /// A short description for debugging tools, such as the route name.
  final String? debugLabel;

  /// The screen.
  final Widget child;

  @override
  State<StacScreenScope> createState() => _StacScreenScopeState();
}

class _StacScreenScopeState extends State<StacScreenScope> {
  late final StacScopeNode _node = StacScopeNode.screen(
    state: widget.state,
    arguments: widget.arguments,
    debugLabel: widget.debugLabel,
  );

  @override
  void dispose() {
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StacScopeHost(node: _node, child: widget.child);
  }
}

/// Shows [builder]'s content with the state visible at [context].
///
/// Dialogs, bottom sheets and snack bars are built in their own routes or
/// overlays, outside the screen that opened them. This keeps them reading
/// and writing that screen's state, and reading the list item (`$item`,
/// `$index`) they were opened from, as it was when they opened.
Widget stacScopedContent(BuildContext context, WidgetBuilder builder) {
  final item = context.mounted ? StacItemScope.maybeOf(context) : null;
  Widget content = Builder(builder: builder);
  if (item != null) {
    content = StacItemScope(item: item.item, index: item.index, child: content);
  }
  return StacScopeHost(node: StacScopeNode.of(context), child: content);
}
