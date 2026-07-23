import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextLeadingDistributionParser on StacTextLeadingDistribution {
  TextLeadingDistribution get parse {
    switch (this) {
      case StacTextLeadingDistribution.proportional:
        return TextLeadingDistribution.proportional;
      case StacTextLeadingDistribution.even:
        return TextLeadingDistribution.even;
    }
  }
}
