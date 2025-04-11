import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_opacity/stac_opacity_parser.dart';

part 'stac_opacity.freezed.dart';
part 'stac_opacity.g.dart';

@freezed
abstract class StacOpacity with _$StacOpacity {
  const factory StacOpacity({
    required double opacity,
    required Map<String, dynamic> child,
  }) = _StacOpacity;

  factory StacOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacOpacityFromJson(json);
}
