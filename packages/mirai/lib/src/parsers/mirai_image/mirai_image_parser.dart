import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:mirai/src/parsers/mirai_image/mirai_image.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiImageParser extends MiraiParser<MiraiImage> {
  const MiraiImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  MiraiImage getModel(Map<String, dynamic> json) => MiraiImage.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiImage model) {
    switch (model.imageType) {
      case MiraiImageType.network:
        return _networkImage(model, context);
      case MiraiImageType.file:
        return _fileImage(model, context);
      case MiraiImageType.asset:
        return _assetImage(model, context);
    }
  }

  Widget _networkImage(MiraiImage model, BuildContext context) =>
      CachedNetworkImage(
        imageUrl: model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorWidget: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
  Widget _fileImage(MiraiImage model, BuildContext context) => Image.file(
        File(model.src),
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );

  Widget _assetImage(MiraiImage model, BuildContext context) => Image.asset(
        model.src,
        alignment: model.alignment.value,
        color: model.color?.toColor(context),
        width: model.width,
        height: model.height,
        fit: model.fit,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
}
