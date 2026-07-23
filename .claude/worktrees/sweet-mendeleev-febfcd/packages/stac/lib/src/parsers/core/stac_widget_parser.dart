import 'package:flutter/material.dart';
import 'package:stac/stac.dart';
import 'package:stac_core/core/stac_widget.dart';

extension StacWidgetParser on StacWidget? {
  Widget? parse(BuildContext context) {
    if (this == null) {
      return null;
    }

    return Stac.fromJson(this!.toJson(), context);
  }

  PreferredSizeWidget? parsePreferredSizeWidget(BuildContext context) {
    if (this == null) {
      return null;
    }

    final Widget? widget = Stac.fromJson(this!.toJson(), context);

    return widget as PreferredSizeWidget?;
  }
}

extension StacWidgetListParser on List<StacWidget>? {
  List<Widget>? parseList(BuildContext context) {
    if (this == null) {
      return null;
    }

    return this!
        .map((e) => e.parse(context) ?? const SizedBox.shrink())
        .toList();
  }
}
