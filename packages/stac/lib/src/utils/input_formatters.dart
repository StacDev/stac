import 'package:flutter/services.dart';
import 'package:stac/src/utils/log.dart';

enum InputFormatterType {
  allow,
  deny;

  TextInputFormatter format(String rule) {
    try {
      switch (this) {
        case InputFormatterType.allow:
          return FilteringTextInputFormatter.allow(RegExp(rule));

        case InputFormatterType.deny:
          return FilteringTextInputFormatter.deny(RegExp(rule));
      }
    } catch (e) {
      Log.e(e);
      return FilteringTextInputFormatter.allow(RegExp(''));
    }
  }
}
