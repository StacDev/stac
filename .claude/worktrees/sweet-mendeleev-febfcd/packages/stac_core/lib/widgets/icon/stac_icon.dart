import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_icon.g.dart';

/// A Stac model representing Flutter's [Icon] widget.
///
/// Displays a graphical symbol that represents an application, file type,
/// or action.
///
/// ```dart
/// StacIcon(
///   icon: 'home',
///   iconType: StacIconType.material,
///   size: 24.0,
///   color: StacColors.black,
/// )
/// ```
///
/// ```json
/// {
///   "type": "icon",
///   "icon": "home",
///   "iconType": "material",
///   "size": 24.0,
///   "color": "#000000"
/// }
/// ```
@JsonSerializable()
class StacIcon extends StacWidget {
  /// Creates an icon widget with the specified properties.
  const StacIcon({
    required this.icon,
    this.iconType = StacIconType.material,
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
    this.applyTextScaling,
    this.blendMode,
  });

  /// The name/key of the icon (as defined in icon utils maps).
  final String icon;

  /// The icon library to use.
  final StacIconType iconType;

  /// Size of the icon in logical pixels.
  @DoubleConverter()
  final double? size;

  /// Fill for the icon.
  @DoubleConverter()
  final double? fill;

  /// Weight for the icon.
  @DoubleConverter()
  final double? weight;

  /// Grade for the icon.
  @DoubleConverter()
  final double? grade;

  /// Optical size for the icon.
  @DoubleConverter()
  final double? opticalSize;

  /// Color of the icon.
  final String? color;

  /// Shadows for the icon.
  final List<StacShadow>? shadows;

  /// Semantic label for accessibility.
  final String? semanticLabel;

  /// The text direction to use for resolving certain icons.
  final StacTextDirection? textDirection;

  /// Whether to apply text scaling to the icon.
  final bool? applyTextScaling;

  /// Blend mode for the icon.
  final StacBlendMode? blendMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.icon.name;

  /// Creates a [StacIcon] from JSON.
  factory StacIcon.fromJson(Map<String, dynamic> json) =>
      _$StacIconFromJson(json);

  /// Converts this [StacIcon] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacIconToJson(this);
}
