import 'package:flutter/material.dart';
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
    // Pass only the handlers the JSON sets: an onDoubleTap handler makes every
    // tap wait out the double-tap timeout. onTap stays set so the inkWell is
    // enabled as before, which InkWell needs to run onHover, onFocusChange and
    // onHighlightChanged.
    return InkWell(
      onTap: () => model.onTap?.parse(context),
      onDoubleTap: model.onDoubleTap != null
          ? () => model.onDoubleTap!.parse(context)
          : null,
      onLongPress: model.onLongPress != null
          ? () => model.onLongPress!.parse(context)
          : null,
      onTapCancel: model.onTapCancel != null
          ? () => model.onTapCancel!.parse(context)
          : null,
      onSecondaryTap: model.onSecondaryTap != null
          ? () => model.onSecondaryTap!.parse(context)
          : null,
      onSecondaryTapCancel: model.onSecondaryTapCancel != null
          ? () => model.onSecondaryTapCancel!.parse(context)
          : null,
      onTapDown: model.onTapDown != null
          ? (_) => model.onTapDown!.parse(context)
          : null,
      onTapUp: model.onTapUp != null
          ? (_) => model.onTapUp!.parse(context)
          : null,
      onSecondaryTapUp: model.onSecondaryTapUp != null
          ? (_) => model.onSecondaryTapUp!.parse(context)
          : null,
      onSecondaryTapDown: model.onSecondaryTapDown != null
          ? (_) => model.onSecondaryTapDown!.parse(context)
          : null,
      onHighlightChanged: model.onHighlightChanged != null
          ? (_) => model.onHighlightChanged!.parse(context)
          : null,
      onHover: model.onHover != null
          ? (_) => model.onHover!.parse(context)
          : null,
      onFocusChange: model.onFocusChange != null
          ? (_) => model.onFocusChange!.parse(context)
          : null,
      mouseCursor: model.mouseCursor?.parse,
      focusColor: model.focusColor?.toColor(context),
      hoverColor: model.hoverColor?.toColor(context),
      highlightColor: model.highlightColor?.toColor(context),
      overlayColor: model.overlayColor == null
          ? null
          : WidgetStateProperty.all(model.overlayColor!.toColor(context)),
      splashColor: model.splashColor?.toColor(context),
      radius: model.radius,
      borderRadius: model.borderRadius?.parse,
      customBorder: model.customBorder?.parse(context),
      enableFeedback: model.enableFeedback ?? true,
      excludeFromSemantics: model.excludeFromSemantics ?? false,
      canRequestFocus: model.canRequestFocus ?? true,
      autofocus: model.autofocus ?? false,
      hoverDuration: model.hoverDuration?.parse,
      child: model.child.parse(context),
    );
  }
}
