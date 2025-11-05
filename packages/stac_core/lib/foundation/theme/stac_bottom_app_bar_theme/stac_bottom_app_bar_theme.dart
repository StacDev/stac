import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/geometry/stac_edge_insets/stac_edge_insets.dart';

part 'stac_bottom_app_bar_theme.g.dart';

/// A Stac model representing Flutter's [BottomAppBarTheme].
///
/// Defines the theme for bottom app bars.
@JsonSerializable()
class StacBottomAppBarThemeData implements StacElement {
  const StacBottomAppBarThemeData({
    this.color,
    this.elevation,
    this.height,
    this.surfaceTintColor,
    this.shadowColor,
    this.padding,
  });

  final String? color;
  final double? elevation;
  final double? height;
  final String? surfaceTintColor;
  final String? shadowColor;
  final StacEdgeInsets? padding;

  factory StacBottomAppBarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacBottomAppBarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacBottomAppBarThemeDataToJson(this);
}
