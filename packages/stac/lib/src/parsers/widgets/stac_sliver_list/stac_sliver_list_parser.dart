import 'package:flutter/widgets.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

/// A Stac parser that builds a Flutter [SliverList] widget.
class StacSliverListParser extends StacParser<StacSliverList> {
  /// Creates a [StacSliverListParser].
  const StacSliverListParser();

  /// The widget type handled by this parser.
  @override
  String get type => WidgetType.sliverList.name;

  /// Converts JSON into a [StacSliverList] model.
  @override
  StacSliverList getModel(Map<String, dynamic> json) =>
      StacSliverList.fromJson(json);

  /// Builds the Flutter [SliverList] widget.
  @override
  Widget parse(BuildContext context, StacSliverList model) {
    final children = model.children?.parseList(context) ?? const <Widget>[];

    return SliverList(
      delegate: SliverChildListDelegate(
        children,
        addAutomaticKeepAlives: model.addAutomaticKeepAlives ?? true,
        addRepaintBoundaries: model.addRepaintBoundaries ?? true,
        addSemanticIndexes: model.addSemanticIndexes ?? true,
        semanticIndexOffset: model.semanticIndexOffset ?? 0,
      ),
    );
  }
}
