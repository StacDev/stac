import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/stac_refresh_indicator/stac_refresh_indicator.dart';
import 'package:stac/src/utils/color_utils.dart';
import 'package:stac/src/utils/widget_type.dart';
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
  Map<String, dynamic>? childWidgetJson;

  @override
  void initState() {
    super.initState();

    childWidgetJson = widget.model.child;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: widget.model.displacement,
      edgeOffset: widget.model.edgeOffset,
      onRefresh: () async {
        Response result =
            await Stac.onCallFromJson(widget.model.onRefresh, context);

        if (context.mounted) {
          if (result.data != null) {
            if (result.data is Map<String, dynamic>) {
              setState(() {
                childWidgetJson = result.data;
              });
            } else if (result.data is String) {
              setState(() {
                childWidgetJson = jsonDecode(result.data);
              });
            }
          }
        }
      },
      color: widget.model.color?.toColor(context),
      backgroundColor: widget.model.backgroundColor.toColor(context),
      semanticsLabel: widget.model.semanticsLabel,
      semanticsValue: widget.model.semanticsValue,
      strokeWidth: widget.model.strokeWidth,
      triggerMode: widget.model.triggerMode,
      child: Stac.fromJson(childWidgetJson, context) ?? const SizedBox(),
    );
  }
}
