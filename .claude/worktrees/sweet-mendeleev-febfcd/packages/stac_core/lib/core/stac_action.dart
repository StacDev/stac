import 'package:json_annotation/json_annotation.dart';

/// Base class for all Stac actions that can be performed on widgets.
///
/// Actions represent user interactions or system events that can be triggered
/// on Stac widgets. Each action type extends this base class and provides
/// specific functionality through the `actionType` getter.
///
/// Example usage:
/// ```dart
/// // Create a custom action
/// class CustomAction extends StacAction {
///   const CustomAction({super.jsonData});
///
///   @override
///   String get actionType => 'custom';
/// }
///
/// // Parse from JSON
/// final action = StacAction.fromJson({'type': 'custom', 'data': 'value'});
/// ```
///
/// JSON representation:
/// ```json
/// {
///   "type": "action_type",
///   "data": "action_specific_data"
/// }
/// ```
@JsonSerializable()
class StacAction {
  /// Creates a new StacAction instance.
  ///
  /// [jsonData] contains the raw JSON data for this action. This is used
  /// for serialization and deserialization purposes.
  const StacAction({this.jsonData});

  /// The raw JSON data associated with this action.
  ///
  /// This field stores the complete JSON representation of the action,
  /// including any action-specific properties and metadata.
  final Map<String, dynamic>? jsonData;

  /// The type identifier for this action.
  ///
  /// Each action subclass must override this getter to return a unique
  /// string identifier that distinguishes it from other action types.
  /// This identifier is used for routing and processing actions.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// String get actionType => 'navigate';
  /// ```
  @JsonKey(includeToJson: true)
  String get actionType => throw UnimplementedError();

  /// Creates a StacAction instance from JSON data.
  ///
  /// This factory constructor takes a JSON map and creates a StacAction
  /// instance. The JSON data is stored in the [jsonData] field for
  /// later processing by action-specific parsers.
  ///
  /// [json] - The JSON map containing action data
  ///
  /// Returns a new StacAction instance with the provided JSON data.
  factory StacAction.fromJson(Map<String, dynamic> json) {
    return StacAction(jsonData: json);
  }

  /// Converts this action to its JSON representation.
  ///
  /// Returns the raw JSON data associated with this action, or an empty
  /// map if no data is available.
  Map<String, dynamic> toJson() => jsonData ?? {};
}
