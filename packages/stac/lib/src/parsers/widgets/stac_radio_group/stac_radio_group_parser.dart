import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRadioGroupParser extends StacParser<StacRadioGroup> {
  const StacRadioGroupParser();

  @override
  String get type => WidgetType.radioGroup.name;

  @override
  StacRadioGroup getModel(Map<String, dynamic> json) =>
      StacRadioGroup.fromJson(json);

  @override
  Widget parse(BuildContext context, StacRadioGroup model) {
    return _RadioGroupWidget(model, StacFormScope.of(context));
  }
}

class _RadioGroupWidget extends StatefulWidget {
  const _RadioGroupWidget(this.model, this.formScope);

  final StacRadioGroup model;
  final StacFormScope? formScope;

  @override
  State<_RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<_RadioGroupWidget> {
  dynamic _groupValue;

  @override
  void initState() {
    super.initState();
    setState(() {
      _groupValue = widget.model.groupValue;
    });

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

    // Call the onChanged action if provided
    if (widget.model.onChanged != null) {
      widget.model.onChanged!.parse(context);
    }
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
