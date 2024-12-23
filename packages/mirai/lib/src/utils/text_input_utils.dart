import 'package:flutter/material.dart';

enum MiraiTextAlignVertical {
  top,
  center,
  bottom;

  TextAlignVertical get value {
    switch (this) {
      case MiraiTextAlignVertical.top:
        return TextAlignVertical.top;
      case MiraiTextAlignVertical.center:
        return TextAlignVertical.center;
      case MiraiTextAlignVertical.bottom:
        return TextAlignVertical.bottom;
    }
  }
}

enum MiraiTextInputType {
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
      case MiraiTextInputType.text:
        return TextInputType.text;
      case MiraiTextInputType.multiline:
        return TextInputType.multiline;
      case MiraiTextInputType.number:
        return TextInputType.number;
      case MiraiTextInputType.phone:
        return TextInputType.phone;
      case MiraiTextInputType.datetime:
        return TextInputType.datetime;
      case MiraiTextInputType.emailAddress:
        return TextInputType.emailAddress;
      case MiraiTextInputType.url:
        return TextInputType.url;
      case MiraiTextInputType.visiblePassword:
        return TextInputType.visiblePassword;
      case MiraiTextInputType.name:
        return TextInputType.name;
      case MiraiTextInputType.streetAddress:
        return TextInputType.streetAddress;
      default:
        return TextInputType.none;
    }
  }
}
