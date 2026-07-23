import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacEdgeInsetsParser on StacEdgeInsets {
  EdgeInsets get parse {
    return EdgeInsets.only(
      left: left ?? 0,
      right: right ?? 0,
      top: top ?? 0,
      bottom: bottom ?? 0,
    );
  }
}
