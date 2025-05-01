import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_padding/stac_padding.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPaddingParser extends StacParser<StacPadding> {
  const StacPaddingParser();

  @override
  StacPadding getModel(Map<String, dynamic> json) => StacPadding.fromJson(json);

  @override
  String get type => WidgetType.padding.name;

  @override
  Widget parse(BuildContext context, StacPadding model) {
    return Padding(
      padding: model.padding.parse,
      child: Stac.fromJson(model.child, context),
    );
  }
}
