import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// A Stac parser that builds a Flutter [SliverFillRemaining] widget.
class StacSliverFillRemainingParser
    extends StacParser<StacSliverFillRemaining> {
  /// Creates a [StacSliverFillRemainingParser].
  const StacSliverFillRemainingParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.sliverFillRemaining.name;

  /// Converts JSON into a [StacSliverFillRemaining] model.
  @override
  StacSliverFillRemaining getModel(Map<String, dynamic> json) =>
      StacSliverFillRemaining.fromJson(json);

  /// Builds the Flutter [SliverFillRemaining] widget.
  @override
  Widget parse(BuildContext context, StacSliverFillRemaining model) {
    return SliverFillRemaining(
      hasScrollBody: model.hasScrollBody ?? true,
      fillOverscroll: model.fillOverscroll ?? false,
      child: model.child?.parse(context),
    );
  }
}
