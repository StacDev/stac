import 'package:freezed_annotation/freezed_annotation.dart';

import '../stac_bytes/stac_bytes.dart';
import '../stac_double/stac_double.dart';

part 'stac_svg_image.freezed.dart';

part 'stac_svg_image.g.dart';

@Freezed(unionKey: 'subtype')
abstract class StacSvgImage with _$StacSvgImage {
  @FreezedUnionValue('asset')
  const factory StacSvgImage.asset({
    required String asset,
    String? semanticsLabel,
    bool? matchTextDirection,
    StacColorFilter? colorFilter,
    StacDouble? width,
    StacDouble? height,
  }) = StacSvgAsset;

  @FreezedUnionValue('network')
  const factory StacSvgImage.network({
    required String url,
    String? semanticsLabel,
    bool? matchTextDirection,
    StacColorFilter? colorFilter,
    StacDouble? width,
    StacDouble? height,
  }) = StacSvgNetwork;

  @FreezedUnionValue('file')
  const factory StacSvgImage.file({
    required String path,
    String? semanticsLabel,
    bool? matchTextDirection,
    StacColorFilter? colorFilter,
    StacDouble? width,
    StacDouble? height,
  }) = StacSvgFile;

  @FreezedUnionValue('memory')
  const factory StacSvgImage.memory({
    required StacBytes bytes,
    String? semanticsLabel,
    bool? matchTextDirection,
    StacColorFilter? colorFilter,
    StacDouble? width,
    StacDouble? height,
  }) = StacSvgMemory;

  @FreezedUnionValue('string')
  const factory StacSvgImage.string({
    required String svgString,
    String? semanticsLabel,
    bool? matchTextDirection,
    StacColorFilter? colorFilter,
    StacDouble? width,
    StacDouble? height,
  }) = StacSvgString;

  factory StacSvgImage.fromJson(Map<String, dynamic> json) =>
      _$StacSvgImageFromJson(json);
}

@Freezed(unionKey: 'filterType')
abstract class StacColorFilter with _$StacColorFilter {
  @FreezedUnionValue('mode')
  const factory StacColorFilter.mode({
    required String color,
    required String blendMode,
  }) = StacColorFilterMode;

  @FreezedUnionValue('matrix')
  const factory StacColorFilter.matrix({
    required List<double> matrix,
  }) = StacColorFilterMatrix;

  @FreezedUnionValue('linearToSrgbGamma')
  const factory StacColorFilter.linearToSrgbGamma() =
      StacColorFilterLinearToSrgbGamma;

  @FreezedUnionValue('srgbToLinearGamma')
  const factory StacColorFilter.srgbToLinearGamma() =
      StacColorFilterSrgbToLinearGamma;

  factory StacColorFilter.fromJson(Map<String, dynamic> json) =>
      _$StacColorFilterFromJson(json);
}
