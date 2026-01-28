import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// A Stac parser that builds a Flutter [Offstage] widget.
class StacOffstageParser extends StacParser<StacOffstage> {
  /// Creates a [StacOffstageParser].
  const StacOffstageParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.offstage.name;

  /// Converts JSON into a [StacOffstage] model.
  @override
  StacOffstage getModel(Map<String, dynamic> json) =>
      StacOffstage.fromJson(json);

  /// Builds the Flutter [Offstage] widget.
  @override
  Widget parse(BuildContext context, StacOffstage model) {
    return Offstage(
      offstage: model.offstage ?? true,
      child: model.child?.parse(context),
    );
  }
}
