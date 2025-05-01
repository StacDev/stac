import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacFormParser extends StacParser<StacForm> {
  const StacFormParser();

  @override
  StacForm getModel(Map<String, dynamic> json) => StacForm.fromJson(json);

  @override
  String get type => WidgetType.form.name;

  @override
  Widget parse(BuildContext context, StacForm model) {
    return _FormWidget(model);
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget(this.model);

  final StacForm model;

  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final Map<String, dynamic> _formData = {};

  final _formKey = GlobalKey<FormState>();

  void setFormData({required String key, required value}) {
    _formData[key] = value;
  }

  @override
  Widget build(BuildContext context) {
    return StacFormScope(
      formData: _formData,
      formKey: _formKey,
      child: Builder(
        builder: (context) {
          return Form(
            key: StacFormScope.of(context)?.formKey,
            child:
                Stac.fromJson(widget.model.child, context) ?? const SizedBox(),
          );
        },
      ),
    );
  }
}
