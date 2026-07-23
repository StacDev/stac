import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_table_column_width.g.dart';

/// Column width strategies supported by `Table`.
enum StacTableColumnWidthType {
  /// Width is a fixed number of logical pixels.
  fixedColumnWidth,

  /// Width is a multiple of the remaining space (flex factor).
  flexColumnWidth,

  /// Width is a fraction of the total available width.
  fractionColumnWidth,

  /// Width is the intrinsic size of the column's contents.
  intrinsicColumnWidth,
}

/// Configuration describing a single column's width behavior.
///
/// The [value] meaning depends on [type]:
/// - fixed: pixel width
/// - flex: flex factor
/// - fraction: fraction 0..1
/// - intrinsic: flex used by IntrinsicColumnWidth
@JsonSerializable()
class StacTableColumnWidth extends StacElement {
  /// Creates a [StacTableColumnWidth].
  const StacTableColumnWidth({
    this.type = StacTableColumnWidthType.flexColumnWidth,
    this.value,
  });

  /// Column width strategy.
  final StacTableColumnWidthType type;

  /// Numeric value whose semantic depends on [type].
  @DoubleConverter()
  final double? value;

  /// Creates a [StacTableColumnWidth] from a JSON map.
  factory StacTableColumnWidth.fromJson(Map<String, dynamic> json) =>
      _$StacTableColumnWidthFromJson(json);

  @override
  /// Converts this [StacTableColumnWidth] to a JSON map.
  Map<String, dynamic> toJson() => _$StacTableColumnWidthToJson(this);
}
