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

  /// Runs the action with `$value` bound to [value].
  ///
  /// Use it for callbacks that report a new value, such as `onChanged`, so
  /// the action can read it with `{{$value}}`.
  FutureOr<dynamic> parseWithValue(BuildContext context, Object? value) {
    if (this == null) {
      return null;
    }

    return StacActionScope.run({r'$value': value}, () => parse(context));
  }
}
