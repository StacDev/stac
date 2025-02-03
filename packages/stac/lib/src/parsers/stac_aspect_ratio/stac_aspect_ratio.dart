import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_aspect_ratio/stac_aspect_ratio_parser.dart';

part 'stac_aspect_ratio.freezed.dart';
part 'stac_aspect_ratio.g.dart';

@freezed
class StacAspectRatio with _$StacAspectRatio {
  const factory StacAspectRatio({
    @Default(1) double aspectRatio,
    Map<String, dynamic>? child,
  }) = _StacAspectRatio;

  factory StacAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$StacAspectRatioFromJson(json);
}
