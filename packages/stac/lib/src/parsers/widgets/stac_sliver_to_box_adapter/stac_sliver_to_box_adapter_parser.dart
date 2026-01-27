import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacSliverToBoxAdapterParser extends StacParser<StacSliverToBoxAdapter> {
  const StacSliverToBoxAdapterParser();

  @override
  String get type => WidgetType.sliverToBoxAdapter.name;

  @override
  StacSliverToBoxAdapter getModel(Map<String, dynamic> json) =>
      StacSliverToBoxAdapter.fromJson(json);

  @override
  Widget parse(BuildContext context, StacSliverToBoxAdapter model) {
    return SliverToBoxAdapter(child: model.child?.parse(context));
  }
}
