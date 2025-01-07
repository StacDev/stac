import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/parsers/mirai_radio_group/mirai_radio_group_scope.dart';
import 'package:mirai/src/utils/widget_type.dart';

import '../mirai_form/mirai_form_scope.dart';

class MiraiRadioGroupParser extends MiraiParser<MiraiRadioGroup> {
  const MiraiRadioGroupParser();

  @override
  String get type => WidgetType.radioGroup.name;

  @override
  MiraiRadioGroup getModel(Map<String, dynamic> json) =>
      MiraiRadioGroup.fromJson(json);

  @override
  Widget parse(BuildContext context, MiraiRadioGroup model) {
    return _RadioGroupWidget(
      model: model,
      formScope: MiraiFormScope.of(context),
    );
  }
}

class _RadioGroupWidget extends StatefulWidget {
  const _RadioGroupWidget({
    required this.model,
    required this.formScope,
  });

  final MiraiRadioGroup model;
  final MiraiFormScope? formScope;

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

  void _updateGroupValue(dynamic value) {
    groupValue.value = value;
    _saveValueInFormData();
  }

  void _saveValueInFormData() {
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = groupValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    final MiraiRadioGroup model = widget.model;

    return MiraiRadioGroupScope(
      radioGroupValue: groupValue,
      onSelect: _updateGroupValue,
      child: Builder(builder: (context) {
        return Mirai.fromJson(model.child, context) ?? const SizedBox();
      }),
    );
  }
}
