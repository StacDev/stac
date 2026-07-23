import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_beveled_rectangle_border/stac_beveled_rectangle_border.dart';
import 'package:stac_core/foundation/borders/stac_border_side/stac_border_side.dart';
import 'package:stac_core/foundation/borders/stac_circle_border/stac_circle_border.dart';
import 'package:stac_core/foundation/borders/stac_continuous_rectangle_border/stac_continuous_rectangle_border.dart';
import 'package:stac_core/foundation/borders/stac_rounded_rectangle_border/stac_rounded_rectangle_border.dart';

/// Types of shape borders supported by the Stac framework.
enum StacShapeBorderType {
  /// Circular border shape.
  circleBorder,

  /// Rounded rectangle border with customizable corner radius.
  roundedRectangleBorder,

  /// Continuous rectangle border with smooth curves.
  continuousRectangleBorder,

  /// Beveled rectangle border with angled corners.
  beveledRectangleBorder,
}

/// Abstract base class for Stac shape borders.
///
/// Defines the common interface for all shape border implementations.
/// Each shape border type extends this class and provides its own
/// specific properties and behavior.
///
/// ```dart
/// // Example usage with RoundedRectangleBorder
/// StacRoundedRectangleBorder(
///   borderRadius: StacBorderRadius.all(8.0),
///   side: StacBorderSide(width: 1.0, color: StacColors.grey),
/// )
/// ```
///
/// ```json
/// {
///   "type": "roundedRectangle",
///   "borderRadius": {"all": 8.0},
///   "side": {"width": 1.0, "color": "#808080"}
/// }
/// ```
@JsonSerializable()
abstract class StacShapeBorder implements StacElement {
  /// Creates a [StacShapeBorder] with the given properties.
  const StacShapeBorder({this.side, required this.type});

  /// The border side properties.
  final StacBorderSide? side;

  /// The type identifier for this shape border.
  /// Must be implemented by subclasses.
  @JsonKey(includeToJson: true)
  final StacShapeBorderType type;

  /// Creates a [StacShapeBorder] from JSON.
  /// This factory method delegates to the appropriate subclass
  /// based on the "type" field in the JSON.
  factory StacShapeBorder.fromJson(Map<String, dynamic> json) {
    final dynamic rawType = json['type'];
    final String? typeString = rawType is String ? rawType : null;

    // Resolve string to enum; support missing or alias values and provide a safe default
    StacShapeBorderType? resolvedType;

    if (typeString != null) {
      for (final enumValue in StacShapeBorderType.values) {
        if (enumValue.name == typeString) {
          resolvedType = enumValue;
          break;
        }
      }

      // Fallback aliases (legacy/short names)
      resolvedType ??= () {
        switch (typeString) {
          case 'roundedRectangle':
          case 'roundedRectangleBorder':
            return StacShapeBorderType.roundedRectangleBorder;
          case 'circle':
          case 'circleBorder':
            return StacShapeBorderType.circleBorder;
          case 'continuousRectangle':
          case 'continuousRectangleBorder':
            return StacShapeBorderType.continuousRectangleBorder;
          case 'beveledRectangle':
          case 'beveledRectangleBorder':
            return StacShapeBorderType.beveledRectangleBorder;
        }
        return null;
      }();
    }

    // If still unknown or missing, default to rounded rectangle (most common)
    resolvedType ??= StacShapeBorderType.roundedRectangleBorder;

    switch (resolvedType) {
      case StacShapeBorderType.roundedRectangleBorder:
        return StacRoundedRectangleBorder.fromJson(json);
      case StacShapeBorderType.circleBorder:
        return StacCircleBorder.fromJson(json);

      case StacShapeBorderType.continuousRectangleBorder:
        return StacContinuousRectangleBorder.fromJson(json);
      case StacShapeBorderType.beveledRectangleBorder:
        return StacBeveledRectangleBorder.fromJson(json);
    }
  }
}
