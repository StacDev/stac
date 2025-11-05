import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_divider_theme_data.g.dart';

/// A Stac model representing Flutter's [DividerThemeData].
///
/// Defines the theme for dividers.
@JsonSerializable()
class StacDividerThemeData implements StacElement {
  const StacDividerThemeData({
    this.color,
    this.space,
    this.thickness,
    this.indent,
    this.endIndent,
  });

  final String? color;
  final double? space;
  final double? thickness;
  final double? indent;
  final double? endIndent;

  factory StacDividerThemeData.fromJson(Map<String, dynamic> json) =>
      _$StacDividerThemeDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDividerThemeDataToJson(this);
}
