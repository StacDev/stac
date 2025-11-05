import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/effects/stac_shadow/stac_shadow.dart';

part 'stac_icon_theme_data.g.dart';

/// A Stac model representing Flutter's [IconThemeData].
///
/// Defines the theme for icons.
@JsonSerializable()
class StacIconThemeData implements StacElement {
  const StacIconThemeData({
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.opacity,
    this.shadows,
  });

  final double? size;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final String? color;
  final double? opacity;
  final List<StacShadow>? shadows;

  factory StacIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacIconThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacIconThemeDataToJson(this);
}

