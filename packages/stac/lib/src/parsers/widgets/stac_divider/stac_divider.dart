import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_divider_parser.dart';

part 'stac_divider.freezed.dart';
part 'stac_divider.g.dart';

@freezed
abstract class StacDivider with _$StacDivider {
  const factory StacDivider({
    StacDouble? thickness,
    StacDouble? height,
    String? color,
  }) = _StacDivider;

  factory StacDivider.fromJson(Map<String, dynamic> json) =>
      _$StacDividerFromJson(json);
}
