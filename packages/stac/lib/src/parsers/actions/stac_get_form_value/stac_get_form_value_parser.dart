import 'package:flutter/material.dart';
import 'package:stac/src/parsers/actions/stac_get_form_value/stac_get_form_value.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/action_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacGetFormValueParser extends StacActionParser<StacGetFormValue> {
  const StacGetFormValueParser();

  @override
  String get actionType => ActionType.getFormValue.name;

  @override
  StacGetFormValue getModel(Map<String, dynamic> json) =>
      StacGetFormValue.fromJson(json);

  @override
  String? onCall(BuildContext context, StacGetFormValue model) {
    return StacFormScope.of(context)?.formData[model.id].toString();
  }
}
