import 'package:json_annotation/json_annotation.dart';

/// Base interface for all STAC elements that can be serialized to JSON
abstract class StacElement {
  /// Creates a [StacElement] that represents a base element.
  const StacElement();

  /// Converts this element to a JSON map
  dynamic toJson();
}

/// Base class for all STAC widgets
/// This is a concrete implementation that can hold raw JSON data,
/// used primarily by JSON converters for deserialization
@JsonSerializable()
class StacWidget extends StacElement {
  /// Creates a [StacWidget] that represents a widget.
  const StacWidget({this.jsonData});

  /// Raw JSON data for this widget
  final Map<String, dynamic>? jsonData;

  /// The type of the widget
  @JsonKey(includeToJson: true)
  String get type => throw UnimplementedError();

  /// Creates a new widget from a JSON map
  factory StacWidget.fromJson(Map<String, dynamic> json) {
    return StacWidget(jsonData: json);
  }

  /// Converts this widget to a JSON map
  @override
  Map<String, dynamic> toJson() => jsonData ?? {};
}
