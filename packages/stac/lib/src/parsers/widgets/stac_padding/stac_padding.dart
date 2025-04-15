import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_padding_parser.dart';

part 'stac_padding.freezed.dart';
part 'stac_padding.g.dart';

@freezed
abstract class StacPadding with _$StacPadding {
  const factory StacPadding({
    required StacEdgeInsets padding,
    Map<String, dynamic>? child,
  }) = _StacPadding;

  factory StacPadding.fromJson(Map<String, dynamic> json) =>
      _$StacPaddingFromJson(json);
}
