import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

import '../stac_form/stac_form_scope.dart';

class StacSliderParser extends StacParser<StacSlider> {
  const StacSliderParser();

  @override
  String get type => WidgetType.slider.name;

  @override
  StacSlider getModel(Map<String, dynamic> json) => StacSlider.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSlider model) {
    return _StacSlider(model, StacFormScope.of(context));
  }
}

class _StacSlider extends StatefulWidget {
  const _StacSlider(this.model, this.formScope);

  final StacSlider model;
  final StacFormScope? formScope;

  @override
  State<_StacSlider> createState() => __StacSliderState();
}

class __StacSliderState extends State<_StacSlider> {
  late double selectedValue;

  @override
  void initState() {
    selectedValue = widget.model.value;
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = selectedValue;
    }
    super.initState();
  }

  void _onChanged(double value) {
    selectedValue = value;
    if (widget.model.onChanged != null) {
      Stac.onCallFromJson(widget.model.onChanged, context);
    }
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = value;
    }
    setState(() {});
  }

  void _onChangeStart(double value) {
    if (widget.model.onChangeStart != null) {
      Stac.onCallFromJson(widget.model.onChangeStart, context);
    }
  }

  void _onChangeEnd(double value) {
    if (widget.model.onChangeEnd != null) {
      Stac.onCallFromJson(widget.model.onChangeEnd, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final StacSlider model = widget.model;
    final FocusNode focusNode = FocusNode();

    switch (model.sliderType) {
      case StacSliderType.material:
        return _buildMaterialSlider(model, focusNode, selectedValue);
      case StacSliderType.adaptive:
        return _buildAdaptiveSlider(model, focusNode, selectedValue);
      case StacSliderType.cupertino:
        return _buildCupertinoSlider(model, focusNode, selectedValue);
    }
  }

  Widget _buildMaterialSlider(
    StacSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return Slider(
      value: value,
      secondaryTrackValue: model.secondaryTrackValue,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min,
      max: model.max,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.value,
      focusNode: focusNode,
      autofocus: model.autofocus,
      allowedInteraction: model.allowedInteraction,
    );
  }

  Widget _buildAdaptiveSlider(
    StacSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return Slider.adaptive(
      value: value,
      secondaryTrackValue: model.secondaryTrackValue,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min,
      max: model.max,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.value,
      focusNode: focusNode,
      autofocus: model.autofocus,
      allowedInteraction: model.allowedInteraction,
    );
  }

  Widget _buildCupertinoSlider(
    StacSlider model,
    FocusNode focusNode,
    double value,
  ) {
    return CupertinoSlider(
      value: value,
      onChanged: (value) => _onChanged(value),
      onChangeStart: (value) => _onChangeStart(value),
      onChangeEnd: (value) => _onChangeEnd(value),
      min: model.min,
      max: model.max,
      divisions: model.divisions,
      activeColor: model.activeColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context) ?? CupertinoColors.white,
    );
  }
}
