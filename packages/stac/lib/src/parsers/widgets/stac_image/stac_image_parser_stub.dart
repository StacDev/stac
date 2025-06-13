import 'package:flutter/material.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac/stac.dart';

class StacImageParser extends StacParser<StacImage> {
  const StacImageParser();

  @override
  String get type => WidgetType.image.name;

  @override
  StacImage getModel(Map<String, dynamic> json) => StacImage.fromJson(json);

  @override
  Widget parse(BuildContext context, StacImage model) =>
      throw UnimplementedError();
}
