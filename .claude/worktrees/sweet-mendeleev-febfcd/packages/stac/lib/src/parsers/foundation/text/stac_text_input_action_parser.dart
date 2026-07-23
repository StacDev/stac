import 'package:flutter/services.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextInputActionParser on StacTextInputAction {
  TextInputAction get parse {
    switch (this) {
      case StacTextInputAction.none:
        return TextInputAction.none;
      case StacTextInputAction.unspecified:
        return TextInputAction.unspecified;
      case StacTextInputAction.done:
        return TextInputAction.done;
      case StacTextInputAction.go:
        return TextInputAction.go;
      case StacTextInputAction.search:
        return TextInputAction.search;
      case StacTextInputAction.send:
        return TextInputAction.send;
      case StacTextInputAction.next:
        return TextInputAction.next;
      case StacTextInputAction.previous:
        return TextInputAction.previous;
      case StacTextInputAction.continueAction:
        return TextInputAction.continueAction;
      case StacTextInputAction.join:
        return TextInputAction.join;
      case StacTextInputAction.route:
        return TextInputAction.route;
      case StacTextInputAction.emergencyCall:
        return TextInputAction.emergencyCall;
      case StacTextInputAction.newline:
        return TextInputAction.newline;
    }
  }
}
