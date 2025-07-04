import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_decoration_image/stac_decoration_image.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_rect/stac_rect.dart';

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
      scale: this?.scale.parse ?? 1.0,
      opacity: this?.opacity.parse ?? 1.0,
      filterQuality: this?.filterQuality ?? FilterQuality.low,
      invertColors: this?.invertColors ?? false,
      isAntiAlias: this?.isAntiAlias ?? false,
    );
  }
}
