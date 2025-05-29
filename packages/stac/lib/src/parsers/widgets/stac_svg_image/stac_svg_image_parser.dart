import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stac/src/parsers/widgets/stac_bytes/stac_bytes.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_svg_image/stac_svg_image.dart';
import 'package:stac/src/utils/utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSvgImageParser extends StacParser<StacSvgImage> {
  const StacSvgImageParser();

  @override
  String get type => WidgetType.svgImage.name;

  @override
  StacSvgImage getModel(Map<String, dynamic> json) =>
      StacSvgImage.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSvgImage model) {
    return switch (model) {
      StacSvgAsset asset => SvgPicture.asset(
          asset.asset,
          width: asset.width?.parse,
          height: asset.height?.parse,
          semanticsLabel: asset.semanticsLabel,
          matchTextDirection: asset.matchTextDirection ?? false,
          colorFilter: model.colorFilter?.toColorFilter(context),
        ),
      StacSvgNetwork network => SvgPicture.network(
          network.url,
          width: network.width?.parse,
          height: network.height?.parse,
          semanticsLabel: network.semanticsLabel,
          matchTextDirection: network.matchTextDirection ?? false,
          colorFilter: model.colorFilter?.toColorFilter(context),
        ),
      StacSvgFile file => SvgPicture.file(
          File(file.path),
          width: file.width?.parse,
          height: file.height?.parse,
          semanticsLabel: file.semanticsLabel,
          matchTextDirection: file.matchTextDirection ?? false,
          colorFilter: model.colorFilter?.toColorFilter(context),
        ),
      StacSvgMemory memory => SvgPicture.memory(
          memory.bytes.parse,
          width: memory.width?.parse,
          height: memory.height?.parse,
          semanticsLabel: memory.semanticsLabel,
          matchTextDirection: memory.matchTextDirection ?? false,
          colorFilter: model.colorFilter?.toColorFilter(context),
        ),
      StacSvgString string => SvgPicture.string(
          string.svgString,
          width: string.width?.parse,
          height: string.height?.parse,
          semanticsLabel: string.semanticsLabel,
          matchTextDirection: string.matchTextDirection ?? false,
          colorFilter: model.colorFilter?.toColorFilter(context),
        ),
      _ => throw UnimplementedError('Unsupported StacSvgImage subtype: $model'),
    };
  }
}

extension StacColorFilterX on StacColorFilter {
  ColorFilter toColorFilter(BuildContext context) {
    return switch (this) {
      StacColorFilterMode mode => ColorFilter.mode(
          mode.color.toColor(context)!,
          _blendModeFromString(mode.blendMode),
        ),
      StacColorFilterMatrix matrix => ColorFilter.matrix(matrix.matrix),
      StacColorFilterLinearToSrgbGamma() =>
        const ColorFilter.linearToSrgbGamma(),
      StacColorFilterSrgbToLinearGamma() =>
        const ColorFilter.srgbToLinearGamma(),
      StacColorFilter() => throw UnimplementedError(),
    };
  }

  BlendMode _blendModeFromString(String s) {
    switch (s) {
      case 'clear':
        return BlendMode.clear;
      case 'src':
        return BlendMode.src;
      case 'dst':
        return BlendMode.dst;
      case 'srcOver':
        return BlendMode.srcOver;
      case 'dstOver':
        return BlendMode.dstOver;
      case 'srcIn':
        return BlendMode.srcIn;
      case 'dstIn':
        return BlendMode.dstIn;
      case 'srcOut':
        return BlendMode.srcOut;
      case 'dstOut':
        return BlendMode.dstOut;
      case 'srcATop':
        return BlendMode.srcATop;
      case 'dstATop':
        return BlendMode.dstATop;
      case 'xor':
        return BlendMode.xor;
      case 'plus':
        return BlendMode.plus;
      case 'modulate':
        return BlendMode.modulate;
      case 'screen':
        return BlendMode.screen;
      case 'overlay':
        return BlendMode.overlay;
      case 'darken':
        return BlendMode.darken;
      case 'lighten':
        return BlendMode.lighten;
      case 'colorDodge':
        return BlendMode.colorDodge;
      case 'colorBurn':
        return BlendMode.colorBurn;
      case 'hardLight':
        return BlendMode.hardLight;
      case 'softLight':
        return BlendMode.softLight;
      case 'difference':
        return BlendMode.difference;
      case 'exclusion':
        return BlendMode.exclusion;
      case 'multiply':
        return BlendMode.multiply;
      case 'hue':
        return BlendMode.hue;
      case 'saturation':
        return BlendMode.saturation;
      case 'color':
        return BlendMode.color;
      case 'luminosity':
        return BlendMode.luminosity;
      default:
        return BlendMode.srcIn;
    }
  }
}
