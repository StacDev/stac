import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_alignment/stac_alignment.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_image_parser.dart';

part 'stac_image.freezed.dart';
part 'stac_image.g.dart';

enum StacImageType { file, network, asset }

@freezed
abstract class StacImage with _$StacImage {
  const factory StacImage({
    required String src,
    @Default(StacAlignment.center) StacAlignment alignment,
    @Default(StacImageType.network) StacImageType imageType,
    String? color,
    StacDouble? width,
    StacDouble? height,
    BoxFit? fit,
  }) = _StacImage;

  factory StacImage.fromJson(Map<String, dynamic> json) =>
      _$StacImageFromJson(json);
}
