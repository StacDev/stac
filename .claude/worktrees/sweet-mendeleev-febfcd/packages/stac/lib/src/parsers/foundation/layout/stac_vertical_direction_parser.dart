import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacVerticalDirectionParser on StacVerticalDirection {
  VerticalDirection get parse {
    switch (this) {
      case StacVerticalDirection.up:
        return VerticalDirection.up;
      case StacVerticalDirection.down:
        return VerticalDirection.down;
    }
  }
}
