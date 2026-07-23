import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacVisualDensityParser on StacVisualDensity {
  VisualDensity get parse {
    return VisualDensity(
      horizontal: horizontal ?? 0.0,
      vertical: vertical ?? 0.0,
    );
  }
}
