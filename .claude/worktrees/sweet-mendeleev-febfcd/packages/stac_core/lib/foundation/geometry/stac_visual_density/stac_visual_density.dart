import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_visual_density.g.dart';

/// A Stac model representing Flutter's [VisualDensity] class.
///
/// Defines the visual density of a widget, which affects the size of
/// interactive elements like buttons and form fields.
///
/// ```dart
/// StacVisualDensity(
///   horizontal: -1.0,
///   vertical: -1.0,
/// )
/// ```
///
/// ```json
/// {
///   "horizontal": -1.0,
///   "vertical": -1.0
/// }
/// ```
@JsonSerializable()
class StacVisualDensity extends StacElement {
  /// Creates a [StacVisualDensity] with the given density values.
  const StacVisualDensity({this.horizontal, this.vertical});

  /// The horizontal density adjustment.
  /// Negative values make the widget more compact horizontally.
  @DoubleConverter()
  final double? horizontal;

  /// The vertical density adjustment.
  /// Negative values make the widget more compact vertically.
  @DoubleConverter()
  final double? vertical;

  /// Creates a [StacVisualDensity] from JSON.
  factory StacVisualDensity.fromJson(Map<String, dynamic> json) =>
      _$StacVisualDensityFromJson(json);

  /// Converts this visual density to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacVisualDensityToJson(this);
}
