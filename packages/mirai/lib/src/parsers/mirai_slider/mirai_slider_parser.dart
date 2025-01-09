import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai/src/utils/widget_type.dart';

import '../mirai_form/mirai_form_scope.dart';

class MiraiSliderParser extends MiraiParser<MiraiSlider> {
  const MiraiSliderParser();

  @override
  MiraiSlider getModel(Map<String, dynamic> json) => MiraiSlider.fromJson(json);

  @override
  String get type => WidgetType.slider.name;

  @override
  Widget parse(BuildContext context, MiraiSlider model) {
    return _MiraiSlider(model, MiraiFormScope.of(context));
  }
}

class _MiraiSlider extends StatefulWidget {
  const _MiraiSlider(this.model, this.formScope);

  final MiraiSlider model;
  final MiraiFormScope? formScope;

  @override
  State<_MiraiSlider> createState() => __MiraiSliderState();
}

class __MiraiSliderState extends State<_MiraiSlider> {
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
      Mirai.onCallFromJson(widget.model.onChanged, context);
    }
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = value;
    }
    setState(() {});
  }

  void _onChangeStart(double value) {
    if (widget.model.onChangeStart != null) {
      Mirai.onCallFromJson(widget.model.onChangeStart, context);
    }
  }

  void _onChangeEnd(double value) {
    if (widget.model.onChangeEnd != null) {
      Mirai.onCallFromJson(widget.model.onChangeEnd, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final MiraiSlider model = widget.model;
    final FocusNode focusNode = FocusNode();

    switch (model.sliderType) {
      case MiraiSliderType.material:
        return _buildMaterialSlider(model, focusNode, selectedValue);
      case MiraiSliderType.adaptive:
        return _buildAdaptiveSlider(model, focusNode, selectedValue);
      case MiraiSliderType.cupertino:
        return _buildCupertinoSlider(model, focusNode, selectedValue);
    }
  }

  Widget _buildMaterialSlider(
    MiraiSlider model,
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
    MiraiSlider model,
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
    MiraiSlider model,
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
