import 'package:flutter/foundation.dart';
import 'package:stac/src/state/stac_scope_kind.dart';
import 'package:stac/src/state/stac_store.dart';
import 'package:stac_logger/stac_logger.dart';

/// A level of Stac state: the app, a screen, a local level made by a
/// `stateScope` or a `dataProvider`, or a form.
///
/// Levels are reported to [StacStateObserver]s and listed by
/// `Stac.stateLevels`, for logging and debugging tools.
abstract interface class StacStateLevel {
  /// What kind of level this is.
  StacScopeKind get kind;

  /// The level's state.
  StacStore get store;

  /// The next level outward, or `null` for the app level.
  StacStateLevel? get parent;

  /// The arguments of the screen this level belongs to (`$args`).
  Map<String, Object?> get arguments;

  /// A short description, such as a screen's route name or a data
  /// provider's id, or `null`.
  String? get debugLabel;
}

/// A change to Stac state, reported to [StacStateObserver.onChange].
@immutable
class StacStateChange {
  /// Creates a change.
  const StacStateChange({
    required this.store,
    required this.level,
    required this.segments,
    required this.previous,
    required this.value,
  });

  /// The state that changed.
  final StacStore store;

  /// The level holding [store], or `null` for a store that is not a level,
  /// such as one an app creates itself.
  final StacStateLevel? level;

  /// Where the change happened, as path segments from the top of [store].
  /// Empty when all of it was replaced or cleared.
  final List<String> segments;

  /// The value before the change, or `null` if there was none.
  final Object? previous;

  /// The value after the change, or `null` if it was removed.
  final Object? value;

  /// [segments] joined with dots, such as `cart.items.0`. Empty when all of
  /// the state changed.
  String get path => segments.join('.');

  @override
  String toString() {
    final owner = level;
    final where = owner == null ? 'store' : describeStacStateLevel(owner);
    return '$where ${segments.isEmpty ? '(all)' : path}: $previous -> $value';
  }
}

/// Receives changes to Stac state, for logging, analytics or debugging
/// tools.
///
/// ```dart
/// class LoggingObserver extends StacStateObserver {
///   @override
///   void onChange(StacStateChange change) => debugPrint('$change');
/// }
///
/// await Stac.initialize(stateObservers: [LoggingObserver()]);
/// ```
///
/// Observers are called synchronously, right after the change, and may be
/// called while widgets build. Schedule work such as `setState` for later.
abstract class StacStateObserver {
  /// Creates an observer.
  const StacStateObserver();

  /// Called after a value changes.
  void onChange(StacStateChange change) {}

  /// Called when a level of state is created, such as when a screen opens.
  void onLevelCreated(StacStateLevel level) {}

  /// Called when a level of state is discarded, such as when a screen
  /// closes.
  void onLevelDisposed(StacStateLevel level) {}
}

/// Keeps track of the levels of state and reports to the observers.
abstract final class StacStateEvents {
  /// The observers. Exposed as `Stac.stateObservers`.
  static final List<StacStateObserver> observers = [];

  static final List<StacStateLevel> _levels = [];
  static final Expando<StacStateLevel> _levelOf = Expando('stacStateLevel');

  /// The levels that exist, in the order they were created.
  static List<StacStateLevel> get levels => List.unmodifiable(_levels);

  /// Whether an observer is listening.
  static bool get isObserved => observers.isNotEmpty;

  /// Records [level] and tells the observers.
  static void levelCreated(StacStateLevel level) {
    _levels.add(level);
    _levelOf[level.store] = level;
    _notify((observer) => observer.onLevelCreated(level));
  }

  /// Forgets [level] and tells the observers.
  static void levelDisposed(StacStateLevel level) {
    _levels.remove(level);
    _notify((observer) => observer.onLevelDisposed(level));
  }

  /// Tells the observers that [store] changed at [segments].
  static void changed(
    StacStore store,
    List<String> segments,
    Object? previous,
    Object? value,
  ) {
    final change = StacStateChange(
      store: store,
      level: _levelOf[store],
      segments: List.unmodifiable(segments),
      previous: previous,
      value: value,
    );
    _notify((observer) => observer.onChange(change));
  }

  static void _notify(void Function(StacStateObserver observer) call) {
    if (observers.isEmpty) return;
    for (final observer in List.of(observers)) {
      try {
        call(observer);
      } catch (e, stackTrace) {
        Log.e('${observer.runtimeType} failed: $e\n$stackTrace');
      }
    }
  }
}

/// A short description of [level], such as `screen home_screen` or
/// `local dataProvider movies`.
String describeStacStateLevel(StacStateLevel level) {
  final label = level.debugLabel;
  return label == null ? level.kind.name : '${level.kind.name} $label';
}
