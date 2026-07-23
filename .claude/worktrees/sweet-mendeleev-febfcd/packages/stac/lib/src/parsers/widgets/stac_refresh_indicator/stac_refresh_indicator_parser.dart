import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_refresh_indicator_trigger_mode_parser.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacRefreshIndicatorParser extends StacParser<StacRefreshIndicator> {
  const StacRefreshIndicatorParser();

  @override
  String get type => WidgetType.refreshIndicator.name;

  @override
  StacRefreshIndicator getModel(Map<String, dynamic> json) =>
      StacRefreshIndicator.fromJson(json);

  @override
  Widget parse(BuildContext context, StacRefreshIndicator model) =>
      _RefreshIndicatorWidget(model: model);
}

class _RefreshIndicatorWidget extends StatefulWidget {
  const _RefreshIndicatorWidget({required this.model});

  final StacRefreshIndicator model;
  @override
  State<_RefreshIndicatorWidget> createState() =>
      _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<_RefreshIndicatorWidget> {
  StacWidget? childWidget;

  @override
  void initState() {
    super.initState();

    childWidget = widget.model.child;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: widget.model.displacement ?? 40.0,
      edgeOffset: widget.model.edgeOffset ?? 0.0,
      onRefresh: () async {
        Response result = await widget.model.onRefresh?.parse(context);

        if (context.mounted) {
          if (result.data != null) {
            if (result.data is Map<String, dynamic>) {
              setState(() {
                childWidget = result.data;
              });
            } else if (result.data is String) {
              setState(() {
                childWidget = jsonDecode(result.data);
              });
            }
          }
        }
      },
      color: widget.model.color?.toColor(context),
      backgroundColor: widget.model.backgroundColor.toColor(context),
      semanticsLabel: widget.model.semanticsLabel,
      semanticsValue: widget.model.semanticsValue,
      strokeWidth:
          widget.model.strokeWidth ??
          RefreshProgressIndicator.defaultStrokeWidth,
      triggerMode:
          widget.model.triggerMode?.parse ?? RefreshIndicatorTriggerMode.onEdge,
      child: childWidget.parse(context) ?? const SizedBox.shrink(),
    );
  }
}
