import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
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
      loadingWidget: model.loadingWidget != null
          ? (context) =>
                model.loadingWidget!.parse(context) ??
                const Center(child: CircularProgressIndicator())
          : (context) => const Center(child: CircularProgressIndicator()),
      errorWidget: model.errorWidget != null
          ? (context, error) =>
                model.errorWidget!.parse(context) ?? const SizedBox()
          : null,
    );
  }
}
