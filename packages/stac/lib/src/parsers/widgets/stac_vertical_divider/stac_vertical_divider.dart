import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_vertical_divider_parser.dart';

part 'stac_vertical_divider.freezed.dart';
part 'stac_vertical_divider.g.dart';

@freezed
abstract class StacVerticalDivider with _$StacVerticalDivider {
  const factory StacVerticalDivider({
    StacDouble? width,
    StacDouble? thickness,
    StacDouble? indent,
    StacDouble? endIndent,
    String? color,
  }) = _StacVerticalDivider;

  factory StacVerticalDivider.fromJson(Map<String, dynamic> json) =>
      _$StacVerticalDividerFromJson(json);
}
