import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_radio_group/stac_radio_group_scope.dart';
import 'package:stac/src/parsers/widgets/stac_visual_density/stac_visual_density.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacRadioParser extends StacParser<StacRadio> {
  const StacRadioParser();

  @override
  StacRadio getModel(Map<String, dynamic> json) => StacRadio.fromJson(json);

  @override
  String get type => WidgetType.radio.name;

  @override
  Widget parse(BuildContext context, StacRadio model) {
    return _RadioWidget(
      model: model,
      radioGroupScope: StacRadioGroupScope.of(context),
    );
  }
}

class _RadioWidget extends StatelessWidget {
  const _RadioWidget({
    required this.radioGroupScope,
    required this.model,
  });

  final StacRadioGroupScope? radioGroupScope;
  final StacRadio model;

  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();

    switch (model.radioType) {
      case StacRadioType.cupertino:
        return _buildCupertinoRadio(context, model, focusNode);
      case StacRadioType.adaptive:
        return _buildAdaptiveRadio(context, model, focusNode);
      case StacRadioType.material:
        return _buildMaterialRadio(context, model, focusNode);
    }
  }

  void _onChanged(dynamic value, BuildContext context) {
    if (model.onChanged != null) {
      Stac.onCallFromJson(model.onChanged, context);
    }
    radioGroupScope?.onSelect(value);
  }

  Widget _buildCupertinoRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return CupertinoRadio(
          value: model.value,
          groupValue: value,
          onChanged: (dynamic value) {
            _onChanged(value, context);
          },
          mouseCursor: model.mouseCursor?.value,
          toggleable: model.toggleable,
          activeColor: model.activeColor.toColor(context),
          inactiveColor: model.inactiveColor?.toColor(context),
          fillColor: model.fillColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          focusNode: focusNode,
          autofocus: model.autofocus,
          useCheckmarkStyle: model.useCheckmarkStyle,
        );
      },
    );
  }

  Widget _buildAdaptiveRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return Radio.adaptive(
          value: model.value,
          groupValue: value,
          onChanged: (dynamic value) {
            _onChanged(value, context);
          },
          mouseCursor: model.mouseCursor?.value,
          toggleable: model.toggleable,
          activeColor: model.activeColor?.toColor(context),
          fillColor: WidgetStateProperty.all(model.fillColor?.toColor(context)),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          overlayColor: WidgetStateProperty.all(
            model.overlayColor?.toColor(context),
          ),
          splashRadius: model.splashRadius,
          materialTapTargetSize: model.materialTapTargetSize,
          visualDensity: model.visualDensity?.parse,
          focusNode: focusNode,
          autofocus: model.autofocus,
          useCupertinoCheckmarkStyle: model.useCupertinoCheckmarkStyle,
        );
      },
    );
  }

  Widget _buildMaterialRadio(
    BuildContext context,
    StacRadio model,
    FocusNode focusNode,
  ) {
    return ValueListenableBuilder(
      valueListenable: radioGroupScope!.radioGroupValue,
      builder: (context, value, child) {
        return Radio(
          value: model.value,
          groupValue: value,
          onChanged: (dynamic value) {
            _onChanged(value, context);
          },
          mouseCursor: model.mouseCursor?.value,
          toggleable: model.toggleable,
          activeColor: model.activeColor.toColor(context),
          fillColor: WidgetStateProperty.all(model.fillColor?.toColor(context)),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          overlayColor: WidgetStateProperty.all(
            model.overlayColor?.toColor(context),
          ),
          splashRadius: model.splashRadius,
          materialTapTargetSize: model.materialTapTargetSize,
          visualDensity: model.visualDensity?.parse,
          focusNode: focusNode,
          autofocus: model.autofocus,
        );
      },
    );
  }
}
