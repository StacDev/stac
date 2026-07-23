import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBlendModeParser on StacBlendMode {
  BlendMode get parse {
    switch (this) {
      case StacBlendMode.clear:
        return BlendMode.clear;
      case StacBlendMode.src:
        return BlendMode.src;
      case StacBlendMode.dst:
        return BlendMode.dst;
      case StacBlendMode.srcOver:
        return BlendMode.srcOver;
      case StacBlendMode.dstOver:
        return BlendMode.dstOver;
      case StacBlendMode.srcIn:
        return BlendMode.srcIn;
      case StacBlendMode.dstIn:
        return BlendMode.dstIn;
      case StacBlendMode.srcOut:
        return BlendMode.srcOut;
      case StacBlendMode.dstOut:
        return BlendMode.dstOut;
      case StacBlendMode.srcATop:
        return BlendMode.srcATop;
      case StacBlendMode.dstATop:
        return BlendMode.dstATop;
      case StacBlendMode.xor:
        return BlendMode.xor;
      case StacBlendMode.plus:
        return BlendMode.plus;
      case StacBlendMode.modulate:
        return BlendMode.modulate;
      case StacBlendMode.screen:
        return BlendMode.screen;
      case StacBlendMode.overlay:
        return BlendMode.overlay;
      case StacBlendMode.darken:
        return BlendMode.darken;
      case StacBlendMode.lighten:
        return BlendMode.lighten;
      case StacBlendMode.colorDodge:
        return BlendMode.colorDodge;
      case StacBlendMode.colorBurn:
        return BlendMode.colorBurn;
      case StacBlendMode.hardLight:
        return BlendMode.hardLight;
      case StacBlendMode.softLight:
        return BlendMode.softLight;
      case StacBlendMode.difference:
        return BlendMode.difference;
      case StacBlendMode.exclusion:
        return BlendMode.exclusion;
      case StacBlendMode.multiply:
        return BlendMode.multiply;
      case StacBlendMode.hue:
        return BlendMode.hue;
      case StacBlendMode.saturation:
        return BlendMode.saturation;
      case StacBlendMode.color:
        return BlendMode.color;
      case StacBlendMode.luminosity:
        return BlendMode.luminosity;
    }
  }
}
