import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_drag_start_behavior_parser.dart';
import 'package:stac/src/parsers/foundation/interaction/stac_scroll_physics_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_axis_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacPageViewParser extends StacParser<StacPageView> {
  const StacPageViewParser();

  @override
  StacPageView getModel(Map<String, dynamic> json) =>
      StacPageView.fromJson(json);

  @override
  String get type => WidgetType.pageView.name;

  @override
  Widget parse(BuildContext context, StacPageView model) {
    return _StacPageViewWidget(model: model);
  }
}

class _StacPageViewWidget extends StatefulWidget {
  const _StacPageViewWidget({required this.model});

  final StacPageView model;

  @override
  State<_StacPageViewWidget> createState() => _StacPageViewWidgetState();
}

class _StacPageViewWidgetState extends State<_StacPageViewWidget> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: widget.model.initialPage ?? 0,
      viewportFraction: widget.model.viewportFraction ?? 1.0,
      keepPage: widget.model.keepPage ?? true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: widget.model.scrollDirection?.parse ?? Axis.horizontal,
      reverse: widget.model.reverse ?? false,
      controller: _pageController,
      physics: widget.model.physics?.parse,
      pageSnapping: widget.model.pageSnapping ?? true,
      onPageChanged: (int index) {
        widget.model.onPageChanged?.parse(context);
      },
      itemBuilder: (context, index) {
        final child = widget.model.children?[index];
        return child?.parse(context) ?? const SizedBox();
      },
      itemCount: widget.model.children?.length,
      dragStartBehavior:
          widget.model.dragStartBehavior?.parse ?? DragStartBehavior.start,
      allowImplicitScrolling: widget.model.allowImplicitScrolling ?? false,
      restorationId: widget.model.restorationId,
      clipBehavior: widget.model.clipBehavior?.parse ?? Clip.hardEdge,
      padEnds: widget.model.padEnds ?? true,
    );
  }
}
