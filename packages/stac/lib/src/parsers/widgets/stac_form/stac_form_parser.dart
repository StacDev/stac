import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/forms/stac_autovalidate_mode_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/state/stac_scope.dart';
import 'package:stac_core/stac_core.dart';
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

  /// The form's own state level, readable inside it as `$form`.
  StacScopeNode? _node;

  void setFormData({required String key, required value}) {
    _formData[key] = value;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_node != null) return;
    final node = StacScopeNode.form(StacScopeNode.of(context));
    node.store.addListener(_mirrorValues);
    _node = node;
  }

  /// Keeps `formData`, which `getFormValue` and validators read, in step
  /// with `$form`.
  void _mirrorValues() => _formData.addAll(_node!.store.data);

  @override
  void dispose() {
    _node?.store.removeListener(_mirrorValues);
    _node?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StacScopeHost(
      node: _node!,
      child: StacFormScope(
        formData: _formData,
        formKey: _formKey,
        child: Builder(
          builder: (context) {
            return Form(
              key: StacFormScope.of(context)?.formKey,
              autovalidateMode: widget.model.autovalidateMode?.parse,
              child: widget.model.child?.parse(context) ?? const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
