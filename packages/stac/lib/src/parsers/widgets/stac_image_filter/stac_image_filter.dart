import 'dart:typed_data';
import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_image_filter.freezed.dart';
part 'stac_image_filter.g.dart';

enum StacImageFilterType {
  blur,
  matrix,
  dilate,
  erode,
  compose,
}

@freezed
abstract class StacImageFilter with _$StacImageFilter {
  const factory StacImageFilter({
    required StacImageFilterType type,
    @Default(StacDouble(0.0)) StacDouble sigmaX,
    StacDouble? sigmaY,
    @Default(StacDouble(0.0)) StacDouble radiusX,
    StacDouble? radiusY,
    List<StacDouble>? matrix,
    StacImageFilter? inner,
    StacImageFilter? outer,
  }) = _StacImageFilter;

  factory StacImageFilter.fromJson(Map<String, dynamic> json) =>
      _$StacImageFilterFromJson(json);
}

extension StacImageFilterParser on StacImageFilter {
  ImageFilter? get parse {
    switch (type) {
      case StacImageFilterType.blur:
        final sigmaX = this.sigmaX.parse;
        final sigmaY = this.sigmaY?.parse ?? sigmaX;
        return ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY);

      case StacImageFilterType.matrix:
        if (matrix != null && matrix!.length == 16) {
          final matrixValues = matrix!.map((e) => e.parse).toList();
          return ImageFilter.matrix(Float64List.fromList(matrixValues));
        }
        return null;

      case StacImageFilterType.dilate:
        final radiusX = this.radiusX.parse;
        final radiusY = this.radiusY?.parse ?? radiusX;
        return ImageFilter.dilate(radiusX: radiusX, radiusY: radiusY);

      case StacImageFilterType.erode:
        final radiusX = this.radiusX.parse;
        final radiusY = this.radiusY?.parse ?? radiusX;
        return ImageFilter.erode(radiusX: radiusX, radiusY: radiusY);

      case StacImageFilterType.compose:
        final inner = this.inner?.parse;
        final outer = this.outer?.parse;

        if (inner != null && outer != null) {
          return ImageFilter.compose(inner: inner, outer: outer);
        } else {
          return null;
        }
    }
  }
}
