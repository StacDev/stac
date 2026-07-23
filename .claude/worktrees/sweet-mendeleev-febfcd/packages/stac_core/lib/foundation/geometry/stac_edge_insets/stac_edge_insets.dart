import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_edge_insets.g.dart';

/// A Stac representation of edge insets for padding and margins.
///
/// This class defines spacing around the edges of a widget. It supports various
/// input formats including single values, arrays, and individual edge specifications
/// for flexible JSON configuration.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// // All edges with same value
/// const StacEdgeInsets.all(16.0)
///
/// // Individual edges
/// const StacEdgeInsets(
///   left: 8.0,
///   top: 16.0,
///   right: 8.0,
///   bottom: 16.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Examples:
/// ```json
/// // Single value for all edges
/// 16.0
///
/// // Array format [left, top, right, bottom]
/// [8.0, 16.0, 8.0, 16.0]
///
/// // Object format
/// {
///   "left": 8.0,
///   "top": 16.0,
///   "right": 8.0,
///   "bottom": 16.0
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacEdgeInsets extends StacElement {
  /// Creates edge insets with optional individual edge values.
  const StacEdgeInsets({this.left, this.top, this.right, this.bottom});

  /// The left edge inset in logical pixels.
  final double? left;

  /// The top edge inset in logical pixels.
  final double? top;

  /// The right edge inset in logical pixels.
  final double? right;

  /// The bottom edge inset in logical pixels.
  final double? bottom;

  /// Creates edge insets with the same value for all edges.
  const StacEdgeInsets.all(double value)
    : this(left: value, top: value, right: value, bottom: value);

  /// Creates edge insets with only specified edges set.
  const StacEdgeInsets.only({this.left, this.top, this.right, this.bottom});

  /// Creates edge insets with symmetric horizontal and vertical values.
  const StacEdgeInsets.symmetric({double? vertical, double? horizontal})
    : this(
        left: horizontal,
        top: vertical,
        right: horizontal,
        bottom: vertical,
      );

  /// Creates edge insets with only horizontal (left and right) values.
  const StacEdgeInsets.horizontal(double value)
    : this.symmetric(horizontal: value);

  /// Creates edge insets with only vertical (top and bottom) values.
  const StacEdgeInsets.vertical(double value) : this.symmetric(vertical: value);

  /// Creates a [StacEdgeInsets] from dynamic JSON input.
  ///
  /// Supports multiple input formats:
  /// - A single number: applies to all edges
  /// - An array of 4 numbers: [left, top, right, bottom]
  /// - An object with individual edge properties
  ///
  /// Throws [ArgumentError] if the input format is invalid.
  factory StacEdgeInsets.fromJson(dynamic json) {
    Map<String, dynamic> resultantJson;

    if (json is num) {
      resultantJson = {
        "left": json,
        "top": json,
        "right": json,
        "bottom": json,
      };
    } else if (json is List<dynamic> && json.length == 4) {
      bool allElementsNum = json.every((element) => element is num);
      if (!allElementsNum) {
        throw ArgumentError('Invalid input format for StacEdgeInsets');
      }
      resultantJson = {
        "left": json[0],
        "top": json[1],
        "right": json[2],
        "bottom": json[3],
      };
    } else if (json is Map<String, dynamic>) {
      resultantJson = json;
    } else {
      throw ArgumentError('Invalid input format for StacEdgeInsets');
    }

    return _$StacEdgeInsetsFromJson(resultantJson);
  }

  /// Converts this [StacEdgeInsets] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacEdgeInsetsToJson(this);
}
