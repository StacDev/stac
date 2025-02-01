import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac/stac.dart';

class StacFormValidateParser extends StacActionParser<StacFormValidate> {
  const StacFormValidateParser();

  @override
  String get actionType => ActionType.validateForm.name;

  @override
  StacFormValidate getModel(Map<String, dynamic> json) =>
      StacFormValidate.fromJson(json);

  @override
  FutureOr onCall(BuildContext context, StacFormValidate model) {
    final isValid =
        StacFormScope.of(context)?.formKey.currentState?.validate() ?? false;

    if (isValid) {
      return Stac.onCallFromJson(model.isValid, context);
    } else {
      return Stac.onCallFromJson(model.isNotValid, context);
    }
  }
}
