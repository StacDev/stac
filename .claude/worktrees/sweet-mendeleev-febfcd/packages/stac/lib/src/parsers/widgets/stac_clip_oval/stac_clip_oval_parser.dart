import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacClipOvalParser extends StacParser<StacClipOval> {
  const StacClipOvalParser();

  @override
  String get type => WidgetType.clipOval.name;

  @override
  StacClipOval getModel(Map<String, dynamic> json) =>
      StacClipOval.fromJson(json);

  @override
  Widget parse(BuildContext context, StacClipOval model) {
    return ClipOval(
      clipBehavior: model.clipBehavior?.parse ?? Clip.antiAlias,
      child: model.child?.parse(context),
    );
  }
}
