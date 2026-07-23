import 'package:flutter/material.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/effects/stac_effects_parsers.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_rect_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_box_fit_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_image_repeat_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_logger/stac_logger.dart';

extension StacDecorationImageParser on StacDecorationImage {
  DecorationImage? get parse {
    late ImageProvider image;
    switch (imageType) {
      case StacImageType.network:
        image = NetworkImage(src);
        break;
      case StacImageType.file:
        Log.w("StacDecorationImageParser: File image not supported on web");
        break;
      case StacImageType.asset:
        image = AssetImage(src);
        break;
      default:
        image = NetworkImage(src);
    }

    return DecorationImage(
      image: image,
      fit: fit?.parse,
      alignment: alignment?.parse ?? Alignment.center,
      centerSlice: centerSlice?.parse,
      repeat: repeat?.parse ?? ImageRepeat.noRepeat,
      matchTextDirection: matchTextDirection ?? false,
      scale: scale ?? 1.0,
      opacity: opacity ?? 1.0,
      filterQuality: filterQuality?.parse ?? FilterQuality.medium,
      invertColors: invertColors ?? false,
      isAntiAlias: isAntiAlias ?? false,
    );
  }
}
