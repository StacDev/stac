import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_floating_action_button/stac_floating_action_button.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/button_utils.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacFloatingActionButtonParser
    extends StacParser<StacFloatingActionButton> {
  const StacFloatingActionButtonParser();

  @override
  String get type => WidgetType.floatingActionButton.name;

  @override
  StacFloatingActionButton getModel(Map<String, dynamic> json) =>
      StacFloatingActionButton.fromJson(json);

  @override
  Widget parse(BuildContext context, StacFloatingActionButton model) {
    switch (model.buttonType) {
      case FloatingActionButtonType.extended:
        return FloatingActionButton.extended(
          onPressed: model.onPressed == null
              ? null
              : () => Stac.onCallFromJson(model.onPressed, context),
          icon: Stac.fromJson(model.icon, context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          extendedTextStyle: model.extendedTextStyle?.parse(context),
          elevation: model.elevation?.parse,
          focusElevation: model.focusElevation?.parse,
          hoverElevation: model.hoverElevation?.parse,
          disabledElevation: model.disabledElevation?.parse,
          highlightElevation: model.highlightElevation?.parse,
          extendedIconLabelSpacing: model.extendedIconLabelSpacing?.parse,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          label: Stac.fromJson(model.child, context) ?? const SizedBox(),
        );

      case FloatingActionButtonType.large:
        return FloatingActionButton.large(
          onPressed: model.onPressed == null
              ? null
              : () => Stac.onCallFromJson(model.onPressed, context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation?.parse,
          focusElevation: model.focusElevation?.parse,
          hoverElevation: model.hoverElevation?.parse,
          disabledElevation: model.disabledElevation?.parse,
          highlightElevation: model.highlightElevation?.parse,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: Stac.fromJson(model.child, context),
        );

      case FloatingActionButtonType.medium:
        return FloatingActionButton(
          onPressed: model.onPressed == null
              ? null
              : () => Stac.onCallFromJson(model.onPressed, context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation?.parse,
          focusElevation: model.focusElevation?.parse,
          hoverElevation: model.hoverElevation?.parse,
          disabledElevation: model.disabledElevation?.parse,
          highlightElevation: model.highlightElevation?.parse,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: Stac.fromJson(model.child, context),
        );

      case FloatingActionButtonType.small:
        return FloatingActionButton.small(
          onPressed: model.onPressed == null
              ? null
              : () => Stac.onCallFromJson(model.onPressed, context),
          backgroundColor: model.backgroundColor?.toColor(context),
          foregroundColor: model.foregroundColor?.toColor(context),
          focusColor: model.focusColor?.toColor(context),
          hoverColor: model.hoverColor?.toColor(context),
          splashColor: model.splashColor?.toColor(context),
          elevation: model.elevation?.parse,
          focusElevation: model.focusElevation?.parse,
          hoverElevation: model.hoverElevation?.parse,
          disabledElevation: model.disabledElevation?.parse,
          highlightElevation: model.highlightElevation?.parse,
          enableFeedback: model.enableFeedback,
          autofocus: model.autofocus,
          tooltip: model.tooltip,
          heroTag: model.heroTag,
          child: Stac.fromJson(model.child, context),
        );
    }
  }
}
