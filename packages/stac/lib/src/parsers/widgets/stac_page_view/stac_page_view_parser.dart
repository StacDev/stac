import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/widgets/stac_page_view/stac_page_view.dart';
import 'package:stac/src/utils/widget_type.dart';
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
  const _StacPageViewWidget({
    required this.model,
  });

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
      initialPage: widget.model.initialPage,
      viewportFraction: widget.model.viewportFraction,
      keepPage: widget.model.keepPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: widget.model.scrollDirection,
      reverse: widget.model.reverse,
      controller: _pageController,
      physics: widget.model.physics?.parse,
      pageSnapping: widget.model.pageSnapping,
      onPageChanged: (int index) {
        Stac.onCallFromJson(widget.model.onPageChanged, context);
      },
      itemBuilder: (context, index) {
        return Stac.fromJson(widget.model.children[index], context) ??
            const SizedBox();
      },
      itemCount: widget.model.children.length,
      dragStartBehavior: widget.model.dragStartBehavior,
      allowImplicitScrolling: widget.model.allowImplicitScrolling,
      restorationId: widget.model.restorationId,
      clipBehavior: widget.model.clipBehavior,
      padEnds: true,
    );
  }
}
