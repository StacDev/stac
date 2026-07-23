import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacOptionsViewOpenDirectionParser on StacOptionsViewOpenDirection {
  OptionsViewOpenDirection get parse {
    switch (this) {
      case StacOptionsViewOpenDirection.up:
        return OptionsViewOpenDirection.up;
      case StacOptionsViewOpenDirection.down:
        return OptionsViewOpenDirection.down;
    }
  }
}
