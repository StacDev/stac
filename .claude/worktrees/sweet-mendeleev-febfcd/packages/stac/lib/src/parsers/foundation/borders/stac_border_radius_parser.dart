import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBorderRadiusParser on StacBorderRadius {
  BorderRadius get parse {
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft ?? 0.0),
      topRight: Radius.circular(topRight ?? 0.0),
      bottomLeft: Radius.circular(bottomLeft ?? 0.0),
      bottomRight: Radius.circular(bottomRight ?? 0.0),
    );
  }
}
