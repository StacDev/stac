import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_aspect_ratio_parser.dart';

part 'stac_aspect_ratio.freezed.dart';
part 'stac_aspect_ratio.g.dart';

@freezed
abstract class StacAspectRatio with _$StacAspectRatio {
  const factory StacAspectRatio({
    @Default(StacDouble(1)) StacDouble aspectRatio,
    Map<String, dynamic>? child,
  }) = _StacAspectRatio;

  factory StacAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$StacAspectRatioFromJson(json);
}
