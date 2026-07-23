import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextOverflowParser on StacTextOverflow {
  TextOverflow get parse {
    switch (this) {
      case StacTextOverflow.clip:
        return TextOverflow.clip;
      case StacTextOverflow.fade:
        return TextOverflow.fade;
      case StacTextOverflow.ellipsis:
        return TextOverflow.ellipsis;
      case StacTextOverflow.visible:
        return TextOverflow.visible;
    }
  }
}
