import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_scrollbar_theme_data.g.dart';

/// A Stac model representing Flutter's [ScrollbarThemeData].
///
/// Defines the theme for scrollbars.
@JsonSerializable()
class StacScrollbarThemeData implements StacElement {
  const StacScrollbarThemeData({
    this.thumbVisibility,
    this.thickness,
    this.trackVisibility,
    this.radius,
    this.thumbColor,
    this.trackColor,
    this.trackBorderColor,
    this.crossAxisMargin,
    this.mainAxisMargin,
    this.minThumbLength,
    this.interactive,
  });

  final bool? thumbVisibility;
  final double? thickness;
  final bool? trackVisibility;
  final double? radius;
  final String? thumbColor;
  final String? trackColor;
  final String? trackBorderColor;
  final double? crossAxisMargin;
  final double? mainAxisMargin;
  final double? minThumbLength;
  final bool? interactive;

  factory StacScrollbarThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacScrollbarThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacScrollbarThemeDataToJson(this);
}

