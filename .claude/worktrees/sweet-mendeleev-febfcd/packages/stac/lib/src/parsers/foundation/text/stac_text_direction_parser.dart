import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextDirectionParser on StacTextDirection {
  TextDirection get parse {
    switch (this) {
      case StacTextDirection.rtl:
        return TextDirection.rtl;
      case StacTextDirection.ltr:
        return TextDirection.ltr;
    }
  }
}
