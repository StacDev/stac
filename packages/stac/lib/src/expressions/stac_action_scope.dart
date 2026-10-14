import 'dart:async';

/// Values available to an action while it runs, such as `$value` in an
/// input's `onChanged`.
///
/// Input parsers run their actions inside [run], so the action's JSON can
/// read what changed:
///
/// ```json
/// {
///   "type": "textField",
///   "onChanged": {
///     "actionType": "setValue",
///     "values": [{ "key": "query", "value": "{{$value}}" }]
///   }
/// }
/// ```
///
/// The values reach nested actions too, including ones that run after an
/// `await`, such as the follow-up `action` of a `setValue`.
abstract final class StacActionScope {
  static final Object _zoneKey = Object();

  /// The values visible to the action that is currently running.
  static Map<String, Object?> get current {
    return (Zone.current[_zoneKey] as Map<String, Object?>?) ?? const {};
  }

  /// Runs [body] with [values] visible to the actions it starts, layered
  /// over the values already visible.
  static R run<R>(Map<String, Object?> values, R Function() body) {
    return runZoned(
      body,
      zoneValues: {
        _zoneKey: Map<String, Object?>.unmodifiable({...current, ...values}),
      },
    );
  }
}
