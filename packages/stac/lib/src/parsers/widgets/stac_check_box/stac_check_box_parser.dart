import 'package:flutter/material.dart';
import 'package:stac/src/framework/stac.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacCheckBoxParser extends StacParser<StacCheckBox> {
  const StacCheckBoxParser();

  @override
  String get type => WidgetType.checkBox.name;

  @override
  StacCheckBox getModel(Map<String, dynamic> json) =>
      StacCheckBox.fromJson(json);

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
  bool? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.model.value;
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _currentValue,
      tristate: widget.model.tristate ?? false,
      onChanged: (bool? value) {
        setState(() {
          _currentValue = value ?? false;
        });
        if (widget.model.id != null) {
          widget.formScope?.formData[widget.model.id!] = value;
        }
        if (widget.model.onChanged != null) {
          Stac.onCallFromJson(widget.model.onChanged!.toJson(), context);
        }
      },
      mouseCursor: widget.model.mouseCursor?.parse,
      activeColor: widget.model.activeColor?.toColor(context),
      fillColor: widget.model.fillColor != null
          ? WidgetStateProperty.all(widget.model.fillColor!.toColor(context))
          : null,
      checkColor: widget.model.checkColor?.toColor(context),
      focusColor: widget.model.focusColor?.toColor(context),
      hoverColor: widget.model.hoverColor?.toColor(context),
      overlayColor: widget.model.overlayColor != null
          ? WidgetStateProperty.all(widget.model.overlayColor!.toColor(context))
          : null,
      splashRadius: widget.model.splashRadius,
      materialTapTargetSize: widget.model.materialTapTargetSize?.parse,
      autofocus: widget.model.autofocus ?? false,
      isError: widget.model.isError ?? false,
    );
  }
}
