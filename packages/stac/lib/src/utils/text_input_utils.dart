import 'package:flutter/material.dart';

enum StacTextAlignVertical {
  top,
  center,
  bottom;

  TextAlignVertical get value {
    switch (this) {
      case StacTextAlignVertical.top:
        return TextAlignVertical.top;
      case StacTextAlignVertical.center:
        return TextAlignVertical.center;
      case StacTextAlignVertical.bottom:
        return TextAlignVertical.bottom;
    }
  }
}

enum StacTextInputType {
  text,
  multiline,
  number,
  phone,
  datetime,
  emailAddress,
  url,
  visiblePassword,
  name,
  streetAddress,
  none;

  TextInputType get value {
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
      default:
        return TextInputType.none;
    }
  }
}
