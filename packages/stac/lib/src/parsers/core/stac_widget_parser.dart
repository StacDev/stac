import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_children.dart';
import 'package:stac/stac.dart';

extension StacWidgetParser on StacWidget? {
  Widget? parse(BuildContext context) {
    if (this == null) {
      return null;
    }

    return Stac.fromJson(this!.toJson(), context);
  }

  PreferredSizeWidget? parsePreferredSizeWidget(BuildContext context) {
    return parseInline(context) as PreferredSizeWidget?;
  }

  /// Builds the widget directly in [context], for slots that need a
  /// particular widget type, such as an app bar or an [Icon].
  Widget? parseInline(BuildContext context) {
    if (this == null) {
      return null;
    }

    return StacService.fromJsonInline(this!.toJson(), context);
  }
}

extension StacWidgetListParser on List<StacWidget>? {
  /// Builds each widget in the list. A `forEach` in the list is replaced by
  /// the widgets it builds for its items.
  List<Widget>? parseList(BuildContext context) {
    if (this == null) {
      return null;
    }

    return StacChildren(context, children: this).buildAll(context);
  }
}
