import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/borders/stac_border/stac_border.dart';
import 'package:stac_core/foundation/borders/stac_border_radius/stac_border_radius.dart';

part 'stac_table_border.g.dart';

/// A Stac model describing the border to paint around a `Table`.
///
/// This model intentionally avoids setting defaults. Consumers should provide
/// defaults in their parse extensions to keep model definitions declarative.
@JsonSerializable()
class StacTableBorder extends StacElement {
  /// Creates a [StacTableBorder].
  const StacTableBorder({
    this.color,
    @DoubleConverter() this.width,
    this.style,
    this.borderRadius,
  });

  /// Border color as hex or named color.
  final String? color;

  /// Border stroke width in logical pixels.
  @DoubleConverter()
  final double? width;

  /// Border style (e.g., solid or none).
  final StacBorderStyle? style;

  /// Corner radii for rounded borders.
  final StacBorderRadius? borderRadius;

  /// Creates a [StacTableBorder] from a JSON map.
  factory StacTableBorder.fromJson(Map<String, dynamic> json) =>
      _$StacTableBorderFromJson(json);

  @override
  /// Converts this [StacTableBorder] to a JSON map.
  Map<String, dynamic> toJson() => _$StacTableBorderToJson(this);
}
