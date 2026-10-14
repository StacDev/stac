import 'package:flutter/widgets.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_logger/stac_logger.dart';

/// A widget whose data a `refetch` action can load again.
abstract interface class StacRefetchable {
  /// The name `refetch` finds it by.
  String get id;

  /// The level of state holding its data.
  StacScopeNode get node;

  /// Sends the request again and completes when the response is handled.
  Future<void> refetch();
}

/// The data providers that are showing, by `id`.
abstract final class StacDataProviders {
  static final Map<String, List<StacRefetchable>> _live = {};

  /// Makes [provider] findable by its id.
  static void add(StacRefetchable provider) {
    (_live[provider.id] ??= []).add(provider);
  }

  /// Removes [provider], which was added with [id].
  static void remove(StacRefetchable provider, String id) {
    final providers = _live[id];
    if (providers == null) return;
    providers.remove(provider);
    if (providers.isEmpty) _live.remove(id);
  }

  /// Sends the requests of the providers named [id] that an action started
  /// at [context] refers to, and completes when they are handled.
  ///
  /// The nearest provider that encloses [context] is chosen first. When no
  /// enclosing provider has that name, every one on the same screen is
  /// refreshed, and when there is none on the screen, every one showing.
  static Future<void> refetch(BuildContext? context, String id) async {
    final providers = _live[id];
    if (providers == null || providers.isEmpty) {
      Log.w('refetch: no dataProvider named "$id" is showing');
      return;
    }
    final node = context != null && context.mounted
        ? StacScopeNode.of(context)
        : StacScopeNode.app;
    final targets = _choose(providers, node);
    await Future.wait([for (final provider in targets) provider.refetch()]);
  }

  static List<StacRefetchable> _choose(
    List<StacRefetchable> providers,
    StacScopeNode node,
  ) {
    for (final level in node.chain) {
      for (final provider in providers) {
        if (identical(provider.node, level)) return [provider];
      }
    }
    final screen = node.screen;
    final onScreen = [
      for (final provider in providers)
        if (identical(provider.node.screen, screen)) provider,
    ];
    return onScreen.isNotEmpty ? onScreen : List.of(providers);
  }
}
