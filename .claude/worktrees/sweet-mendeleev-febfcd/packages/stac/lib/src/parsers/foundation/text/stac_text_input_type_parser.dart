import 'package:flutter/services.dart';
import 'package:stac_core/stac_core.dart';

extension StacTextInputTypeParser on StacTextInputType {
  TextInputType get parse {
    switch (this) {
      case StacTextInputType.text:
        return TextInputType.text;
      case StacTextInputType.multiline:
        return TextInputType.multiline;
      case StacTextInputType.number:
        return TextInputType.number;
      case StacTextInputType.phone:
        return TextInputType.phone;
      case StacTextInputType.datetime:
        return TextInputType.datetime;
      case StacTextInputType.emailAddress:
        return TextInputType.emailAddress;
      case StacTextInputType.url:
        return TextInputType.url;
      case StacTextInputType.visiblePassword:
        return TextInputType.visiblePassword;
      case StacTextInputType.name:
        return TextInputType.name;
      case StacTextInputType.streetAddress:
        return TextInputType.streetAddress;
      case StacTextInputType.none:
        return TextInputType.none;
    }
  }
}
