import 'package:flutter/cupertino.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_network_widget/stac_network_widget.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacNetworkWidgetParser extends StacParser<StacNetworkWidget> {
  const StacNetworkWidgetParser();

  @override
  String get type => WidgetType.networkWidget.name;

  @override
  StacNetworkWidget getModel(Map<String, dynamic> json) => StacNetworkWidget.fromJson(json);

  @override
  Widget parse(BuildContext context, StacNetworkWidget model) {
    return Stac.fromNetwork(
      context: context,
      request: model.request,
      loadingWidget: (context) {
        return Stac.fromJson(model.loading, context) ?? SizedBox();
      },
    );
  }
}
