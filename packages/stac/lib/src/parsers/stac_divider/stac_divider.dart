import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_divider_parser.dart';

part 'stac_divider.freezed.dart';
part 'stac_divider.g.dart';

@freezed
class StacDivider with _$StacDivider {
  const factory StacDivider({
    double? thickness,
    double? height,
    String? color,
  }) = _StacDivider;

  factory StacDivider.fromJson(Map<String, dynamic> json) =>
      _$StacDividerFromJson(json);
}
