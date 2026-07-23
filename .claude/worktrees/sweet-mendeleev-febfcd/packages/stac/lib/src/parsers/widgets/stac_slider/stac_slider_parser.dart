import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_mouse_cursor_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_slider_interaction_parser.dart';
import 'package:stac/src/parsers/widgets/stac_form/stac_form_scope.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

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
    if (widget.model.id != null) {
      widget.formScope?.formData[widget.model.id!] = value;
    }
    widget.model.onChanged?.parse(context);

    setState(() {});
  }

  void _onChangeStart(double value) {
    widget.model.onChangeStart?.parse(context);
  }

  void _onChangeEnd(double value) {
    widget.model.onChangeEnd?.parse(context);
  }

  @override
  Widget build(BuildContext context) {
    final StacSlider model = widget.model;
    final FocusNode focusNode = FocusNode();

    switch (model.sliderType ?? StacSliderType.adaptive) {
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
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.parse,
      focusNode: focusNode,
      autofocus: model.autofocus ?? false,
      allowedInteraction: model.allowedInteraction?.parse,
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
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      label: model.label,
      activeColor: model.activeColor?.toColor(context),
      inactiveColor: model.inactiveColor?.toColor(context),
      secondaryActiveColor: model.secondaryActiveColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context),
      overlayColor: WidgetStateProperty.all(
        model.overlayColor?.toColor(context),
      ),
      mouseCursor: model.mouseCursor?.parse,
      focusNode: focusNode,
      autofocus: model.autofocus ?? false,
      allowedInteraction: model.allowedInteraction?.parse,
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
      min: model.min ?? 0.0,
      max: model.max ?? 1.0,
      divisions: model.divisions,
      activeColor: model.activeColor?.toColor(context),
      thumbColor: model.thumbColor?.toColor(context) ?? CupertinoColors.white,
    );
  }
}
