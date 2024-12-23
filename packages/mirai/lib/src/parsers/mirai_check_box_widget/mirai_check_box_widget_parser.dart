import 'package:flutter/material.dart';
import 'package:mirai/src/parsers/mirai_check_box_widget/mirai_check_box_widget.dart';
import 'package:mirai/src/parsers/mirai_form/mirai_form_scope.dart';
import 'package:mirai/src/parsers/mirai_material_color/mirai_material_color.dart';
import 'package:mirai/src/utils/color_utils.dart';
import 'package:mirai/src/utils/widget_type.dart';
import 'package:mirai_framework/mirai_framework.dart';

class MiraiCheckBoxWidgetParser extends MiraiParser<MiraiCheckBoxWidget> {
  const MiraiCheckBoxWidgetParser();

  @override
  MiraiCheckBoxWidget getModel(Map<String, dynamic> json) =>
      MiraiCheckBoxWidget.fromJson(json);

  @override
  String get type => WidgetType.checkBox.name;

  @override
  Widget parse(BuildContext context, MiraiCheckBoxWidget model) {
    return _MiraiCheckBoxWidget(model, MiraiFormScope.of(context));
  }
}

class _MiraiCheckBoxWidget extends StatefulWidget {
  const _MiraiCheckBoxWidget(this.model, this.formScope);

  final MiraiCheckBoxWidget model;
  final MiraiFormScope? formScope;

  @override
  State<_MiraiCheckBoxWidget> createState() => __MiraiCheckBoxWidgetState();
}

class __MiraiCheckBoxWidgetState extends State<_MiraiCheckBoxWidget> {
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
        onChanged: (value) {
          setState(() {
            isMarkChecked = !isMarkChecked;
          });
          if (widget.model.id != null) {
            widget.formScope?.formData[widget.model.id!] = value;
          }
        },
        activeColor: widget.model.activeColor.toColor(context),
        fillColor:
            WidgetStateProperty.all(widget.model.fillColor?.parse(context)),
        checkColor: widget.model.checkColor.toColor(context),
        tristate: widget.model.tristate,
        focusColor: widget.model.focusColor.toColor(context),
        hoverColor: widget.model.hoverColor.toColor(context),
        overlayColor:
            WidgetStateProperty.all(widget.model.overlayColor?.parse(context)),
        splashRadius: widget.model.splashRadius,
        autofocus: widget.model.autofocus,
        isError: widget.model.isError);
  }
}
