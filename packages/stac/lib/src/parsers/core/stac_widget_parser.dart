import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_items_binding.dart';
import 'package:stac/stac.dart';

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

    return [
      for (final child in this!)
        // A child built for an entry with an id keeps its state with it.
        switch (itemKey(child)) {
          final Key key => KeyedSubtree(
            key: key,
            child: child.parse(context) ?? const SizedBox.shrink(),
          ),
          null => child.parse(context) ?? const SizedBox.shrink(),
        },
    ];
  }
}
