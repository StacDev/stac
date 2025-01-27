import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/action_type.dart';

class MiraiDrawerActionParser extends MiraiActionParser<dynamic> {
  const MiraiDrawerActionParser();

  @override
  String get actionType => ActionType.openDrawer.name;

  @override
  getModel(Map<String, dynamic> json) => json;

  @override
  FutureOr onCall(BuildContext context, dynamic model) {
    miraiScaffoldKey.currentState?.openDrawer();
  }
}
