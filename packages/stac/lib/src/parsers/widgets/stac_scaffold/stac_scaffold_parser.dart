import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_directional_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/navigation/stac_floating_action_button_location_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
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
      appBar: model.appBar.parsePreferredSizeWidget(context),
      body: model.body.parse(context),
      floatingActionButton: model.floatingActionButton?.parse(context),
      floatingActionButtonLocation: model.floatingActionButtonLocation?.parse,
      persistentFooterButtons: model.persistentFooterButtons?.parseList(
        context,
      ),
      persistentFooterAlignment:
          model.persistentFooterAlignment?.parse ??
          AlignmentDirectional.centerEnd,
      drawer: model.drawer?.parse(context),
      // onDrawerChanged: model.onDrawerChanged?.parse(context),
      endDrawer: model.endDrawer?.parse(context),
      // onEndDrawerChanged,
      bottomNavigationBar: model.bottomNavigationBar?.parse(context),
      bottomSheet: model.bottomSheet?.parse(context),
      backgroundColor: model.backgroundColor?.toColor(context),
      resizeToAvoidBottomInset: model.resizeToAvoidBottomInset,
      primary: model.primary ?? true,
      drawerDragStartBehavior:
          model.drawerDragStartBehavior?.parse ?? DragStartBehavior.start,
      extendBody: model.extendBody ?? false,
      extendBodyBehindAppBar: model.extendBodyBehindAppBar ?? false,
      drawerScrimColor: model.drawerScrimColor?.toColor(context),
      drawerEdgeDragWidth: model.drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: model.drawerEnableOpenDragGesture ?? true,
      endDrawerEnableOpenDragGesture:
          model.endDrawerEnableOpenDragGesture ?? true,
      restorationId: model.restorationId,
    );
  }
}
