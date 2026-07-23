import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTileModeParser on StacTileMode {
  TileMode get parse {
    switch (this) {
      case StacTileMode.clamp:
        return TileMode.clamp;
      case StacTileMode.repeated:
        return TileMode.repeated;
      case StacTileMode.mirror:
        return TileMode.mirror;
      case StacTileMode.decal:
        return TileMode.decal;
    }
  }
}
