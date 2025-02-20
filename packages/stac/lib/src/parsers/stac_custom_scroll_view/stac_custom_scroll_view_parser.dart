import 'package:flutter/material.dart';

import '../../../stac.dart';
import '../../utils/widget_type.dart';
import 'stac_custom_scroll_view.dart';

class StacCustomScrollViewParser extends StacParser<StacCustomScrollView> {
  const StacCustomScrollViewParser({this.controller});

  final ScrollController? controller;

  @override
  String get type => WidgetType.customScrollView.name;

  @override
  StacCustomScrollView getModel(Map<String, dynamic> json) =>
      StacCustomScrollView.fromJson(json);

  @override
  Widget parse(BuildContext context, StacCustomScrollView model) {
    return CustomScrollView(
      slivers: model.slivers
          .map((e) => Stac.fromJson(e, context) ?? const SizedBox.shrink())
          .toList(),
      scrollDirection: model.scrollDirection,
      reverse: model.reverse,
      primary: model.primary,
      physics: model.physics?.parse,
      shrinkWrap: model.shrinkWrap,
      anchor: model.anchor,
      cacheExtent: model.cacheExtent,
      semanticChildCount: model.semanticChildCount,
      dragStartBehavior: model.dragStartBehavior,
      keyboardDismissBehavior: model.keyboardDismissBehavior,
      restorationId: model.restorationId,
      clipBehavior: model.clipBehavior,
      hitTestBehavior: model.hitTestBehavior,
    );
  }
}
