import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_border_radius.g.dart';

/// A Stac representation of border radius for rounded corners.
///
/// This class defines the radius values for each corner of a rectangular border.
/// It supports various input formats including single values, arrays, and
/// individual corner specifications for flexible JSON configuration.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// // All corners with same radius
/// const StacBorderRadius.all(8.0)
///
/// // Individual corners
/// const StacBorderRadius(
///   topLeft: 8.0,
///   topRight: 4.0,
///   bottomLeft: 4.0,
///   bottomRight: 8.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Examples:
/// ```json
/// // Single value for all corners
/// 8.0
///
/// // Array format [topLeft, topRight, bottomLeft, bottomRight]
/// [8.0, 4.0, 4.0, 8.0]
///
/// // Object format
/// {
///   "topLeft": 8.0,
///   "topRight": 4.0,
///   "bottomLeft": 4.0,
///   "bottomRight": 8.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacBorderRadius implements StacElement {
  /// Creates a border radius with optional individual corner values.
  ///
  /// All parameters are optional and default to null, which means no radius
  /// will be applied to that corner.
  const StacBorderRadius({
    this.topLeft,
    this.topRight,
    this.bottomLeft,
    this.bottomRight,
  });

  /// Creates a border radius with all corners set to the same value.
  const StacBorderRadius.all(double radius)
    : this(
        topLeft: radius,
        topRight: radius,
        bottomLeft: radius,
        bottomRight: radius,
      );

  /// Creates a border radius with individual values for each corner.
  ///
  /// This factory method allows you to specify different radius values
  /// for each corner individually.
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// StacBorderRadius.only(
  ///   topLeft: 8.0,
  ///   topRight: 4.0,
  ///   bottomLeft: 4.0,
  ///   bottomRight: 8.0,
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  /// JSON Example:
  /// ```json
  /// {
  ///   "topLeft": 8.0,
  ///   "topRight": 4.0,
  ///   "bottomLeft": 4.0,
  ///   "bottomRight": 8.0
  /// }
  /// ```
  /// {@end-tool}
  const StacBorderRadius.only({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) : this(
         topLeft: topLeft,
         topRight: topRight,
         bottomLeft: bottomLeft,
         bottomRight: bottomRight,
       );

  /// Creates a border radius with symmetric horizontal corners.
  ///
  /// This factory method creates a border radius where left corners
  /// have the same radius and right corners have the same radius.
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// StacBorderRadius.horizontal(
  ///   left: 8.0,
  ///   right: 4.0,
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  /// JSON Example:
  /// ```json
  /// {
  ///   "topLeft": 8.0,
  ///   "topRight": 4.0,
  ///   "bottomLeft": 8.0,
  ///   "bottomRight": 4.0
  /// }
  /// ```
  /// {@end-tool}
  const StacBorderRadius.horizontal({double? left, double? right})
    : this(
        topLeft: left,
        topRight: right,
        bottomLeft: left,
        bottomRight: right,
      );

  /// Creates a border radius with symmetric vertical corners.
  ///
  /// This factory method creates a border radius where top corners
  /// have the same radius and bottom corners have the same radius.
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// StacBorderRadius.vertical(
  ///   top: 8.0,
  ///   bottom: 4.0,
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  /// JSON Example:
  /// ```json
  /// {
  ///   "topLeft": 8.0,
  ///   "topRight": 8.0,
  ///   "bottomLeft": 4.0,
  ///   "bottomRight": 4.0
  /// }
  /// ```
  /// {@end-tool}
  const StacBorderRadius.vertical({double? top, double? bottom})
    : this(
        topLeft: top,
        topRight: top,
        bottomLeft: bottom,
        bottomRight: bottom,
      );

  /// Creates a circular border radius.
  ///
  /// This factory method creates a border radius that forms a perfect circle
  /// when applied to a square widget. For non-square widgets, it creates
  /// an elliptical shape.
  ///
  /// {@tool snippet}
  /// Dart Example:
  /// ```dart
  /// StacBorderRadius.circular(20.0)
  /// ```
  /// {@end-tool}
  ///
  /// {@tool snippet}
  /// JSON Example:
  /// ```json
  /// {
  ///   "topLeft": 20.0,
  ///   "topRight": 20.0,
  ///   "bottomLeft": 20.0,
  ///   "bottomRight": 20.0
  /// }
  /// ```
  /// {@end-tool}
  const StacBorderRadius.circular(double radius)
    : this(
        topLeft: radius,
        topRight: radius,
        bottomLeft: radius,
        bottomRight: radius,
      );

  /// The radius for the top-left corner in logical pixels.
  ///
  /// If null, no radius will be applied to this corner.
  final double? topLeft;

  /// The radius for the top-right corner in logical pixels.
  ///
  /// If null, no radius will be applied to this corner.
  final double? topRight;

  /// The radius for the bottom-left corner in logical pixels.
  ///
  /// If null, no radius will be applied to this corner.
  final double? bottomLeft;

  /// The radius for the bottom-right corner in logical pixels.
  ///
  /// If null, no radius will be applied to this corner.
  final double? bottomRight;

  /// Creates a [StacBorderRadius] from JSON data.
  ///
  /// Supports multiple input formats:
  /// - A single number: applies to all corners
  /// - An array of 4 numbers: [topLeft, topRight, bottomLeft, bottomRight]
  /// - An object with individual corner properties
  ///
  /// Throws [ArgumentError] if the input format is invalid.
  factory StacBorderRadius.fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "topLeft": json,
        "topRight": json,
        "bottomLeft": json,
        "bottomRight": json,
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "topLeft": json[0],
        "topRight": json[1],
        "bottomLeft": json[2],
        "bottomRight": json[3],
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacBorderRadiusFromJson(resultantJson);
  }

  /// Converts this [StacBorderRadius] to a JSON representation.
  @override
  Map<String, dynamic> toJson() => _$StacBorderRadiusToJson(this);
}
