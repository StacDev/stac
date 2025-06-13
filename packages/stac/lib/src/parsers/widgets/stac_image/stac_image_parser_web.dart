import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';
import 'package:stac_logger/stac_logger.dart';

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
        Log.w("StacImageParser: File image not supported on web");
        return const SizedBox();
      case StacImageType.asset:
        return _assetImage(model, context);
    }
  }

  Widget _networkImage(StacImage model, BuildContext context) {
    if (model.src.contains(".svg")) {
      return SvgPicture.network(
        model.src,
        alignment: model.alignment.value,
        colorFilter: model.color != null
            ? ColorFilter.mode(model.color.toColor(context)!, BlendMode.srcIn)
            : null,
        width: model.width?.parse,
        height: model.height?.parse,
        fit: model.fit ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    } else {
      return Image.network(
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
  }

  Widget _assetImage(StacImage model, BuildContext context) {
    if (!model.src.endsWith(".svg")) {
      return Image.asset(
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
    } else {
      return SvgPicture.asset(
        model.src,
        alignment: model.alignment.value,
        colorFilter: model.color != null
            ? ColorFilter.mode(model.color.toColor(context)!, BlendMode.srcIn)
            : null,
        width: model.width?.parse,
        height: model.height?.parse,
        fit: model.fit ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const SizedBox();
        },
      );
    }
  }
}
