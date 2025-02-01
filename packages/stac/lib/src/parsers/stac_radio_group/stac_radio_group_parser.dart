import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_radio_group/stac_radio_group_scope.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

import '../stac_form/stac_form_scope.dart';

class StacRadioGroupParser extends StacParser<StacRadioGroup> {
  const StacRadioGroupParser();

  @override
  String get type => WidgetType.radioGroup.name;

  @override
  StacRadioGroup getModel(Map<String, dynamic> json) =>
      StacRadioGroup.fromJson(json);

  @override
  Widget parse(BuildContext context, StacRadioGroup model) {
    return _RadioGroupWidget(
      model: model,
      formScope: StacFormScope.of(context),
    );
  }
}

class _RadioGroupWidget extends StatefulWidget {
  const _RadioGroupWidget({
    required this.model,
    required this.formScope,
  });

  final StacRadioGroup model;
  final StacFormScope? formScope;

  @override
  State<_RadioGroupWidget> createState() => __RadioGroupWidgetState();
}

class __RadioGroupWidgetState extends State<_RadioGroupWidget> {
  late ValueNotifier<dynamic> groupValue;

  @override
  void initState() {
    super.initState();
    groupValue = ValueNotifier<dynamic>(widget.model.groupValue);
    _saveValueInFormData();
  }

  @override
  void dispose() {
    groupValue.dispose();
    super.dispose();
  }

  void _updateGroupValue(dynamic value) {
    groupValue.value = value;
    _saveValueInFormData();
  }

  void _saveValueInFormData() {
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = groupValue.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    final StacRadioGroup model = widget.model;

    return StacRadioGroupScope(
      radioGroupValue: groupValue,
      onSelect: _updateGroupValue,
      child: Builder(builder: (context) {
        return Stac.fromJson(model.child, context) ?? const SizedBox();
      }),
    );
  }
}
