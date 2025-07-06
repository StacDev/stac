import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_rect/stac_rect.dart';
import 'package:stac/stac.dart';

export 'stac_decoration_image_parser_web.dart'
    if (dart.library.io) 'stac_decoration_image_parser_io.dart';

part 'stac_decoration_image.freezed.dart';
part 'stac_decoration_image.g.dart';

enum StacDecorationImageType { file, network, asset }

@freezed
abstract class StacDecorationImage with _$StacDecorationImage {
  const factory StacDecorationImage({
    required String src,
    BoxFit? fit,
    @Default(StacDecorationImageType.network) StacDecorationImageType imageType,
    @Default(StacAlignment.center) StacAlignment alignment,
    StacRect? centerSlice,
    @Default(ImageRepeat.noRepeat) ImageRepeat repeat,
    @Default(false) bool matchTextDirection,
    @Default(StacDouble(1.0)) StacDouble scale,
    @Default(StacDouble(1.0)) StacDouble opacity,
    @Default(FilterQuality.low) FilterQuality filterQuality,
    @Default(false) bool invertColors,
    @Default(false) bool isAntiAlias,
  }) = _StacDecorationImage;

  factory StacDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$StacDecorationImageFromJson(json);
}
