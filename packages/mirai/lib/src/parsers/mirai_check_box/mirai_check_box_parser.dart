import 'package:flutter/material.dart';
import 'package:mirai/src/parsers/mirai_check_box/mirai_check_box.dart';
import 'package:mirai/src/parsers/mirai_form/mirai_form_scope.dart';
import 'package:mirai/src/parsers/mirai_material_color/mirai_material_color.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiCheckBoxParser extends MiraiParser<MiraiCheckBox> {
  const MiraiCheckBoxParser();

  @override
  MiraiCheckBox getModel(Map<String, dynamic> json) =>
      MiraiCheckBox.fromJson(json);

  @override
  String get type => WidgetType.checkBox.name;

  @override
  Widget parse(BuildContext context, MiraiCheckBox model) {
    return _MiraiCheckBox(model, MiraiFormScope.of(context));
  }
}

class _MiraiCheckBox extends StatefulWidget {
  const _MiraiCheckBox(this.model, this.formScope);

  final MiraiCheckBox model;
  final MiraiFormScope? formScope;

  @override
  State<_MiraiCheckBox> createState() => _MiraiCheckBoxState();
}

class _MiraiCheckBoxState extends State<_MiraiCheckBox> {
  bool isMarkChecked = false;

  @override
  void initState() {
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.value;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isMarkChecked,
      tristate: widget.model.tristate,
      onChanged: (value) {
        setState(() {
          isMarkChecked = !isMarkChecked;
        });
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
      },
      mouseCursor: widget.model.mouseCursor?.value,
      activeColor: widget.model.activeColor.toColor(context),
      fillColor:
          WidgetStateProperty.all(widget.model.fillColor?.parse(context)),
      checkColor: widget.model.checkColor.toColor(context),
      focusColor: widget.model.focusColor.toColor(context),
      hoverColor: widget.model.hoverColor.toColor(context),
      overlayColor:
          WidgetStateProperty.all(widget.model.overlayColor?.parse(context)),
      splashRadius: widget.model.splashRadius,
      materialTapTargetSize: widget.model.materialTapTargetSize,
      autofocus: widget.model.autofocus,
      isError: widget.model.isError,
    );
  }
}
