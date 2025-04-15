import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_rect/stac_rect.dart';
import 'package:stac/stac.dart';

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
    @Default(1.0) double scale,
    @Default(1.0) double opacity,
    @Default(FilterQuality.low) FilterQuality filterQuality,
    @Default(false) bool invertColors,
    @Default(false) bool isAntiAlias,
  }) = _StacDecorationImage;

  factory StacDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$StacDecorationImageFromJson(json);
}

extension StacDecorationImageParser on StacDecorationImage? {
  DecorationImage? get parse {
    if (this?.src == null) return null;

    late ImageProvider image;
    switch (this?.imageType) {
      case StacDecorationImageType.network:
        image = NetworkImage(this?.src ?? '');
        break;
      case StacDecorationImageType.file:
        image = FileImage(File(this?.src ?? ''));
        break;
      case StacDecorationImageType.asset:
        image = AssetImage(this?.src ?? '');
        break;
      default:
        return null;
    }

    return DecorationImage(
      image: image,
      fit: this?.fit,
      alignment: this?.alignment.value ?? Alignment.center,
      centerSlice: this?.centerSlice?.parse,
      repeat: this?.repeat ?? ImageRepeat.noRepeat,
      matchTextDirection: this?.matchTextDirection ?? false,
      scale: this?.scale ?? 1.0,
      opacity: this?.opacity ?? 1.0,
      filterQuality: this?.filterQuality ?? FilterQuality.low,
      invertColors: this?.invertColors ?? false,
      isAntiAlias: this?.isAntiAlias ?? false,
    );
  }
}
