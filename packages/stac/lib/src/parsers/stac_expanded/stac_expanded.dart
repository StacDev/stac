import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_expanded_parser.dart';

part 'stac_expanded.freezed.dart';
part 'stac_expanded.g.dart';

@freezed
class StacExpanded with _$StacExpanded {
  const factory StacExpanded({
    @Default(1) int flex,
    Map<String, dynamic>? child,
  }) = _StacExpanded;

  factory StacExpanded.fromJson(Map<String, dynamic> json) =>
      _$StacExpandedFromJson(json);
}
