import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

class StacToolTipParser extends StacParser<StacTooltip> {
  const StacToolTipParser();

  @override
  String get type => WidgetType.tooltip.name;

  @override
  StacTooltip getModel(Map<String, dynamic> json) => StacTooltip.fromJson(json);

  @override
  Widget parse(BuildContext context, StacTooltip model) {
    if (model.message == null && model.richMessage == null) {
      throw FlutterError.fromParts([
        ErrorSummary('Invalid Tooltip configuration'),
        ErrorDescription(
          'A Tooltip must define either "message" or "richMessage".',
        ),
      ]);
    }

    final Widget child = model.child?.parse(context) ?? const SizedBox.shrink();
    return Tooltip(
      message: model.message,
      constraints: model.constraints?.parse,
      padding: model.padding?.parse,
      margin: model.margin?.parse,
      verticalOffset: model.verticalOffset,
      preferBelow: model.preferBelow,
      excludeFromSemantics: model.excludeFromSemantics,
      decoration: model.decoration?.parse(context),
      textStyle: model.textStyle?.parse(context),
      textAlign: model.textAlign?.parse,
      waitDuration: model.waitDuration?.parse,
      showDuration: model.showDuration?.parse,
      exitDuration: model.exitDuration?.parse,
      enableTapToDismiss: model.enableTapToDismiss,
      triggerMode: model.triggerMode?.parse,
      enableFeedback: model.enableFeedback,
      child: child,
    );
  }
}
