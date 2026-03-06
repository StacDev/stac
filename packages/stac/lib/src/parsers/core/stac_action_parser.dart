import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

extension StacActionParserExtension on StacAction? {
  FutureOr<dynamic> parse(BuildContext context) {
    if (this == null) {
      return null;
    }

    return Stac.onCallFromJson(this!.toJson(), context);
  }
}
