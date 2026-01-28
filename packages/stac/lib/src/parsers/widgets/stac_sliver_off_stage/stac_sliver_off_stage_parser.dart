import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// A Stac parser that builds a Flutter [SliverOffstage] widget.
class StacSliverOffstageParser extends StacParser<StacSliverOffstage> {
  /// Creates a [StacSliverOffstageParser].
  const StacSliverOffstageParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.sliverOffstage.name;

  /// Converts JSON into a [StacSliverOffstage] model.
  @override
  StacSliverOffstage getModel(Map<String, dynamic> json) =>
      StacSliverOffstage.fromJson(json);

  /// Builds the Flutter [SliverOffstage] widget.
  @override
  Widget parse(BuildContext context, StacSliverOffstage model) {
    return SliverOffstage(
      offstage: model.offstage ?? true,
      sliver: model.sliver?.parse(context),
    );
  }
}
