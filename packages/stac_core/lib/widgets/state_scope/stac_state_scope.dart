import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_state_scope.g.dart';

/// A Stac widget that gives its [child] local state.
///
/// The variables in [state] are created when the widget is first built and
/// live as long as it does. Widgets inside read them by name, and a
/// `setValue` action inside writes to them when it targets one of their
/// names. Values can be expressions, which are evaluated once, when the
/// scope is created. When a value changes, the widgets that read it rebuild.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacStateScope(
///   state: {'count': 0},
///   child: StacColumn(
///     children: [
///       StacText(data: 'Count: {{count}}'),
///       StacElevatedButton(
///         child: StacText(data: 'Add'),
///         onPressed: StacSetValueAction(
///           values: [
///             {'path': 'count', 'op': 'increment'},
///           ],
///         ),
///       ),
///     ],
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "stateScope",
///   "state": { "count": 0 },
///   "child": {
///     "type": "column",
///     "children": [
///       { "type": "text", "data": "Count: {{count}}" },
///       {
///         "type": "elevatedButton",
///         "child": { "type": "text", "data": "Add" },
///         "onPressed": {
///           "actionType": "setValue",
///           "values": [{ "path": "count", "op": "increment" }]
///         }
///       }
///     ]
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacStateScope extends StacWidget {
  /// Creates a [StacStateScope] with initial [state] for its [child].
  const StacStateScope({this.state = const {}, this.child});

  /// The variables this scope declares, with their initial values.
  final Map<String, dynamic> state;

  /// The widget that can read and write [state].
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.stateScope.name;

  /// Creates a [StacStateScope] from a JSON map.
  factory StacStateScope.fromJson(Map<String, dynamic> json) =>
      _$StacStateScopeFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacStateScopeToJson(this);
}
