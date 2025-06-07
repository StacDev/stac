import 'dart:typed_data';
import 'dart:ui';

import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_image_filter/stac_image_filter.dart';

class StacImageFilterParser {
  static ImageFilter? parse(StacImageFilter? filter) {
    if (filter == null) return null;

    switch (filter.type.toLowerCase()) {
      case 'blur':
        final sigmaX = filter.sigmaX.parse;
        final sigmaY = filter.sigmaY?.parse ?? sigmaX;
        return ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY);

      case 'matrix':
        if (filter.matrix != null && filter.matrix!.length == 16) {
          final matrixValues = filter.matrix!.map((e) => e.parse).toList();
          return ImageFilter.matrix(Float64List.fromList(matrixValues));
        }
        return null;

      case 'dilate':
        final radiusX = filter.radiusX.parse;
        final radiusY = filter.radiusY?.parse ?? radiusX;
        return ImageFilter.dilate(radiusX: radiusX, radiusY: radiusY);

      case 'erode':
        final radiusX = filter.radiusX.parse;
        final radiusY = filter.radiusY?.parse ?? radiusX;
        return ImageFilter.erode(radiusX: radiusX, radiusY: radiusY);

      case 'compose':
        final inner = parse(filter.inner);
        final outer = parse(filter.outer);

        if (inner != null && outer != null) {
          return ImageFilter.compose(inner: inner, outer: outer);
        } else {
          return null;
        }

      default:
        return null;
    }
  }
}
