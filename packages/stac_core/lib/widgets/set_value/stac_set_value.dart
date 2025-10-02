import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_set_value.g.dart';

/// A Stac widget that sets values in the application state.
///
/// This widget allows you to set multiple key-value pairs in the application's
/// state and optionally render a child widget. It's useful for managing
/// application state through JSON configuration.
///
/// ```dart
/// StacSetValue(
///   values: [
///     {"key": "userName", "value": "John Doe"},
///     {"key": "isLoggedIn", "value": true},
///   ],
///   child: StacText(data: 'Welcome!'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "setValue",
///   "values": [
///     {"key": "userName", "value": "John Doe"},
///     {"key": "isLoggedIn", "value": true}
///   ],
///   "child": {"type": "text", "data": "Welcome!"}
/// }
/// ```
@JsonSerializable()
class StacSetValue extends StacWidget {
  /// Creates a [StacSetValue] widget.
  ///
  /// The [values] parameter contains a list of key-value pairs to set in
  /// the application state. The [child] parameter is an optional widget
  /// to render after the values are set.
  const StacSetValue({this.values = const [], this.child});

  /// List of key-value pairs to set in the application state.
  final List<Map<String, dynamic>> values;

  /// The child widget to render after the values are set.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.setValue.name;

  /// Creates a [StacSetValue] from a JSON map.
  factory StacSetValue.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSetValueToJson(this);
}
