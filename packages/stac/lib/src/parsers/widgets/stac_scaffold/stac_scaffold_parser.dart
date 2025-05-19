import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_scaffold/stac_scaffold.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

class StacScaffoldParser extends StacParser<StacScaffold> {
  const StacScaffoldParser();

  @override
  StacScaffold getModel(Map<String, dynamic> json) =>
      StacScaffold.fromJson(json);

  @override
  String get type => WidgetType.scaffold.name;

  @override
  Widget parse(BuildContext context, StacScaffold model) {
    return Scaffold(
      appBar: Stac.fromJson(model.appBar, context).toPreferredSizeWidget,
      body: Stac.fromJson(model.body, context),
      floatingActionButton: Stac.fromJson(model.floatingActionButton, context),
      floatingActionButtonLocation: model.floatingActionButtonLocation?.value,
      persistentFooterButtons: model.persistentFooterButtons
          ?.map((e) => Stac.fromJson(e, context) ?? SizedBox())
          .toList(),
      drawer: Stac.fromJson(model.drawer, context),
      endDrawer: Stac.fromJson(model.endDrawer, context),
      bottomNavigationBar: Stac.fromJson(model.bottomNavigationBar, context),
      bottomSheet: Stac.fromJson(model.bottomSheet, context),
      backgroundColor: model.backgroundColor.toColor(context),
      resizeToAvoidBottomInset: model.resizeToAvoidBottomInset,
      primary: model.primary,
      drawerDragStartBehavior: model.drawerDragStartBehavior,
      extendBody: model.extendBody,
      extendBodyBehindAppBar: model.extendBodyBehindAppBar,
      drawerScrimColor: model.drawerScrimColor.toColor(context),
      drawerEdgeDragWidth: model.drawerEdgeDragWidth?.parse,
      drawerEnableOpenDragGesture: model.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: model.endDrawerEnableOpenDragGesture,
    );
  }
}
