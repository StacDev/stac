import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacClipParser on StacClip {
  Clip get parse {
    switch (this) {
      case StacClip.none:
        return Clip.none;
      case StacClip.hardEdge:
        return Clip.hardEdge;
      case StacClip.antiAlias:
        return Clip.antiAlias;
      case StacClip.antiAliasWithSaveLayer:
        return Clip.antiAliasWithSaveLayer;
    }
  }
}
