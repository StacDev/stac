import 'package:flutter/cupertino.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNetworkWidgetParser extends StacParser<StacNetworkWidget> {
  const StacNetworkWidgetParser();

  @override
  String get type => WidgetType.networkWidget.name;

  @override
  StacNetworkWidget getModel(Map<String, dynamic> json) =>
      StacNetworkWidget.fromJson(json);

  @override
  Widget parse(BuildContext context, StacNetworkWidget model) {
    return Stac.fromNetwork(
      context: context,
      request: model.request,
      loadingWidget: model.loadingWidget == null
          ? null
          : (ctx) => StacService.fromStacWidget(
                widget: model.loadingWidget!,
                context: ctx,
              ) ??
              const SizedBox(),
      errorWidget: model.errorWidget == null
          ? null
          : (ctx, error) => StacService.fromStacWidget(
                widget: model.errorWidget!,
                context: ctx,
              ) ??
              const SizedBox(),
    );
  }
}
