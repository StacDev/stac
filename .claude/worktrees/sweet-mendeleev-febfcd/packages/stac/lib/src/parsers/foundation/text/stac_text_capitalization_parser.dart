import 'package:flutter/services.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextCapitalizationParser on StacTextCapitalization {
  TextCapitalization get parse {
    switch (this) {
      case StacTextCapitalization.none:
        return TextCapitalization.none;
      case StacTextCapitalization.characters:
        return TextCapitalization.characters;
      case StacTextCapitalization.words:
        return TextCapitalization.words;
      case StacTextCapitalization.sentences:
        return TextCapitalization.sentences;
    }
  }
}
