import 'package:flutter/widgets.dart';

/// A [FutureBuilder] that creates its future when it's first built, and again
/// only when it's rebuilt with a different [futureKey].
///
/// A future created in `build` starts the work again on every rebuild: the
/// widget shows its loading state, loads again, and builds what it shows from
/// scratch. With this widget, a rebuild with the same [futureKey] keeps the
/// future it has.
class KeyedFutureBuilder<T> extends StatefulWidget {
  /// Creates a builder that runs [createFuture] when first built, and again
  /// when [futureKey] changes.
  const KeyedFutureBuilder({
    super.key,
    required this.futureKey,
    required this.createFuture,
    required this.builder,
  });

  /// What the future loads, such as a route name. A rebuild runs
  /// [createFuture] again only when this changes, compared with `==`.
  final Object? futureKey;

  /// Starts the work whose result [builder] shows.
  final Future<T> Function() createFuture;

  /// Builds from the future's latest snapshot, as [FutureBuilder.builder] does.
  final AsyncWidgetBuilder<T> builder;

  @override
  State<KeyedFutureBuilder<T>> createState() => _KeyedFutureBuilderState<T>();
}

class _KeyedFutureBuilderState<T> extends State<KeyedFutureBuilder<T>> {
  late Future<T> _future;

  @override
  void initState() {
    super.initState();
    _future = widget.createFuture();
  }

  @override
  void didUpdateWidget(KeyedFutureBuilder<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.futureKey != oldWidget.futureKey) {
      _future = widget.createFuture();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(future: _future, builder: widget.builder);
  }
}
