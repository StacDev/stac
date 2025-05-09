import 'package:flutter/material.dart';
import 'package:stac/src/parsers/widgets/stac_inkwell/stac_inkwell.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacInkwellParser extends StacParser<StacInkWell> {
  
  const StacInkwellParser();

  @override
  String get type => WidgetType.inkWell.name;

  @override
  StacInkWell getModel(Map<String, dynamic> json) {
    return StacInkWell.fromJson(json);
  }

  @override
  Widget parse(BuildContext context, StacInkWell model) {
    return InkWell(
      child: Stac.fromJson(model.child, context),
      onTap: model.onTap == null
          ? null
          : () => Stac.onCallFromJson(model.onTap, context),
      onDoubleTap: model.onDoubleTap == null
          ? null
          : () => Stac.onCallFromJson(model.onDoubleTap, context),
      onLongPress: model.onLongPress == null
          ? null
          : () => Stac.onCallFromJson(model.onLongPress, context),
      onTapDown: model.onTapDown == null
          ? null
          : (_) => Stac.onCallFromJson(model.onTapDown, context),
      onTapUp: model.onTapUp == null
          ? null
          : (_) => Stac.onCallFromJson(model.onTapUp, context),
      onTapCancel: model.onTapCancel == null
          ? null
          : () => Stac.onCallFromJson(model.onTapCancel, context),
      onSecondaryTap: model.onSecondaryTap == null
          ? null
          : () => Stac.onCallFromJson(model.onSecondaryTap, context),
      onSecondaryTapUp: model.onSecondaryTapUp == null
          ? null
          : (_) => Stac.onCallFromJson(model.onSecondaryTapUp, context),
      onSecondaryTapDown: model.onSecondaryTapDown == null
          ? null
          : (_) => Stac.onCallFromJson(model.onSecondaryTapDown, context),
      onSecondaryTapCancel: model.onSecondaryTapCancel == null
          ? null
          : () => Stac.onCallFromJson(model.onSecondaryTapCancel, context),
      onHighlightChanged: model.onHighlightChanged == null
          ? null
          : (_) => Stac.onCallFromJson(model.onHighlightChanged, context),
      onHover: model.onHover == null
          ? null
          : (_) => Stac.onCallFromJson(model.onHover, context),
      mouseCursor: model.mouseCursor?.value,
      focusColor: model.focusColor.toColor(context),
      hoverColor: model.hoverColor.toColor(context),
      highlightColor: model.highlightColor.toColor(context),
      overlayColor:
          WidgetStateProperty.all(model.overlayColor?.toColor(context)),
      splashColor: model.splashColor.toColor(context),
      radius: model.radius,
      borderRadius: model.borderRadius.parse,
      customBorder: model.customBorder?.parse(context),
      enableFeedback: model.enableFeedback,
      excludeFromSemantics: model.excludeFromSemantics,
      canRequestFocus: model.canRequestFocus,
      onFocusChange: (_) => Stac.onCallFromJson(model.onFocusChange, context),
      autofocus: model.autofocus,
      hoverDuration: model.hoverDuration?.parse,

      ///TODO : need to add support for
      ///focusNode
      ///splashFactory
      ///statesController
    );
  }
}
