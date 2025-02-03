import 'package:flutter/material.dart';

enum StacScrollPhysics {
  never,
  bouncing,
  clamping,
  fixed,
  page;

  ScrollPhysics get parse {
    switch (this) {
      case StacScrollPhysics.bouncing:
        return const BouncingScrollPhysics();

      case StacScrollPhysics.clamping:
        return const ClampingScrollPhysics();

      case StacScrollPhysics.fixed:
        return const FixedExtentScrollPhysics();

      case StacScrollPhysics.page:
        return const PageScrollPhysics();

      default:
        return const NeverScrollableScrollPhysics();
    }
  }
}
