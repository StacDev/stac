import 'package:flutter/material.dart';
import 'package:stac_core/stac_core.dart';

extension StacBoxConstraintsParser on StacBoxConstraints {
  BoxConstraints get parse {
    return BoxConstraints(
      minWidth: minWidth ?? 0.0,
      maxWidth: maxWidth ?? double.infinity,
      minHeight: minHeight ?? 0.0,
      maxHeight: maxHeight ?? double.infinity,
    );
  }
}
