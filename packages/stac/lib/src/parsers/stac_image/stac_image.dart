import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/stac_alignment/stac_alignment.dart';

export 'package:stac/src/parsers/stac_image/stac_image_parser.dart';

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
    double? width,
    double? height,
    BoxFit? fit,
  }) = _StacImage;

  factory StacImage.fromJson(Map<String, dynamic> json) =>
      _$StacImageFromJson(json);
}
