import 'package:flutter/services.dart';
import 'package:stac_core/stac_core.dart';

extension StacMaxLengthEnforcementParser on StacMaxLengthEnforcement {
  MaxLengthEnforcement get parse {
    switch (this) {
      case StacMaxLengthEnforcement.none:
        return MaxLengthEnforcement.none;
      case StacMaxLengthEnforcement.enforced:
        return MaxLengthEnforcement.enforced;
    }
  }
}
