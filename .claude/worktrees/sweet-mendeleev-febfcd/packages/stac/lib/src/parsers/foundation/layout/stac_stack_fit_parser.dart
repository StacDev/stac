import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacStackFitParser on StacStackFit {
  StackFit get parse {
    switch (this) {
      case StacStackFit.loose:
        return StackFit.loose;
      case StacStackFit.expand:
        return StackFit.expand;
      case StacStackFit.passthrough:
        return StackFit.passthrough;
    }
  }
}
