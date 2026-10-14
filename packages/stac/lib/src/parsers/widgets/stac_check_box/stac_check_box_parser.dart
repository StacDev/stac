import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_material_tap_target_size_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac/src/state/stac_input_binding.dart';

class StacCheckBoxParser extends StacParser<StacCheckBox> {
  const StacCheckBoxParser();

  @override
  String get type => WidgetType.checkBox.name;

  @override
  StacCheckBox getModel(Map<String, dynamic> json) =>
      StacCheckBox.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCheckBox model) {
    return _StacCheckBox(model, StacFormScope.maybeOf(context));
  }
}

class _StacCheckBox extends StatefulWidget {
  const _StacCheckBox(this.model, this.formScope);

  final StacCheckBox model;
  final StacFormScope? formScope;

  @override
  State<_StacCheckBox> createState() => _StacCheckBoxState();
}

class _StacCheckBoxState extends State<_StacCheckBox>
    with StacBoundInput<_StacCheckBox, bool> {
  bool? _currentValue;

  @override
  String? get bindPath => widget.model.bind;

  @override
  String? get formFieldId => widget.model.id;

  @override
  bool? get initialValue => widget.model.value;

  @override
  bool? convertBound(Object? value) =>
      value == null || value is bool ? value as bool? : stacIsTruthy(value);

  @override
  void showBound(bool? value) => _currentValue = value;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.model.value;
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.value;
    }
  }

  @override
  void didUpdateWidget(covariant _StacCheckBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    // A bound value, such as "{{agreed}}", changed.
    if (oldWidget.model.value != widget.model.value) {
      _currentValue = widget.model.value;
      if (widget.model.id != null) {
        widget.formScope?.formData[widget.model.id!] = widget.model.value;
      }
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
        writeBound(value);
        widget.model.onChanged.parseWithValue(context, value);
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
