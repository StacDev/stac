import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

import 'stac_image.dart';

class StacImageParser extends StacParser<StacImage> {
  const StacImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  StacImage getModel(Map<String, dynamic> json) => StacImage.fromJson(json);

  @override
  Widget parse(BuildContext context, StacImage model) {
    switch (model.imageType) {
      case StacImageType.network:
        return _networkImage(model, context);
      case StacImageType.file:
        return _fileImage(model, context);
      case StacImageType.asset:
        return _assetImage(model, context);
    }
  }

  Widget _networkImage(StacImage model, BuildContext context) =>
      CachedNetworkImage(
        imageUrl: model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width?.parse,
        height: model.height?.parse,
        fit: model.fit,
        errorWidget: (context, error, stackTrace) {
          return const SizedBox();
        },
      );

  Widget _fileImage(StacImage model, BuildContext context) => Image.file(
        File(model.src),
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width?.parse,
        height: model.height?.parse,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );

  Widget _assetImage(StacImage model, BuildContext context) => Image.asset(
        model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width?.parse,
        height: model.height?.parse,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
}
