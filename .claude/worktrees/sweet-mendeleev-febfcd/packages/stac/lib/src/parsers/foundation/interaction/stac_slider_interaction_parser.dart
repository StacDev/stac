import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacSliderInteractionParser on StacSliderInteraction {
  SliderInteraction get parse {
    switch (this) {
      case StacSliderInteraction.tapAndSlide:
        return SliderInteraction.tapAndSlide;
      case StacSliderInteraction.tapOnly:
        return SliderInteraction.tapOnly;
      case StacSliderInteraction.slideOnly:
        return SliderInteraction.slideOnly;
      case StacSliderInteraction.slideThumb:
        return SliderInteraction.slideThumb;
    }
  }
}
