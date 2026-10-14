import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac/src/state/stac_input_binding.dart';

class StacRadioGroupParser extends StacParser<StacRadioGroup> {
  const StacRadioGroupParser();

  @override
  String get type => WidgetType.radioGroup.name;

  @override
  StacRadioGroup getModel(Map<String, dynamic> json) =>
      StacRadioGroup.fromJson(json);

  @override
  Widget parse(BuildContext context, StacRadioGroup model) {
    return _RadioGroupWidget(model, StacFormScope.maybeOf(context));
  }
}

class _RadioGroupWidget extends StatefulWidget {
  const _RadioGroupWidget(this.model, this.formScope);

  final StacRadioGroup model;
  final StacFormScope? formScope;

  @override
  State<_RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<_RadioGroupWidget>
    with StacBoundInput<_RadioGroupWidget, Object> {
  dynamic _groupValue;

  @override
  String? get bindPath => widget.model.bind;

  @override
  String? get formFieldId => widget.model.id;

  @override
  Object? get initialValue => widget.model.groupValue;

  @override
  Object? convertBound(Object? value) => value;

  @override
  void showBound(Object? value) => _groupValue = value;

  @override
  void initState() {
    super.initState();
    _groupValue = widget.model.groupValue;

    // Initialize form data if id is provided
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = widget.model.groupValue;
    }
  }

  @override
  void didUpdateWidget(covariant _RadioGroupWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.model.groupValue != widget.model.groupValue) {
      _groupValue = widget.model.groupValue;

      // Save to form data if id is provided
      if (widget.model.id != null && widget.formScope != null) {
        widget.formScope!.formData[widget.model.id!] = widget.model.groupValue;
      }
    }
  }

  void _onChanged(dynamic value) {
    setState(() {
      _groupValue = value;
    });

    // Save to form data if id is provided
    if (widget.model.id != null && widget.formScope != null) {
      widget.formScope!.formData[widget.model.id!] = value;
    }
    writeBound(value);

    // Call the onChanged action if provided
    widget.model.onChanged.parseWithValue(context, value);
  }

  @override
  Widget build(BuildContext context) {
    return RadioGroup<dynamic>(
      groupValue: _groupValue,
      onChanged: _onChanged,
      child: widget.model.child?.parse(context) ?? const SizedBox.shrink(),
    );
  }
}
