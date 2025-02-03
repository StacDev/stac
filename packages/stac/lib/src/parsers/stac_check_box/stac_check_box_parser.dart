import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_check_box/stac_check_box.dart';
import 'package:stac/src/parsers/stac_form/stac_form_scope.dart';
import 'package:stac/src/parsers/stac_material_color/stac_material_color.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCheckBoxParser extends StacParser<StacCheckBox> {
  const StacCheckBoxParser();

  @override
  StacCheckBox getModel(Map<String, dynamic> json) =>
      StacCheckBox.fromJson(json);

  @override
  String get type => WidgetType.checkBox.name;

  @override
  Widget parse(BuildContext context, StacCheckBox model) {
    return _StacCheckBox(model, StacFormScope.of(context));
  }
}

class _StacCheckBox extends StatefulWidget {
  const _StacCheckBox(this.model, this.formScope);

  final StacCheckBox model;
  final StacFormScope? formScope;

  @override
  State<_StacCheckBox> createState() => _StacCheckBoxState();
}

class _StacCheckBoxState extends State<_StacCheckBox> {
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
