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

  /// Parses a widget for a slot that needs a [PreferredSizeWidget], such as a
  /// scaffold's `appBar` or an app bar's `bottom`.
  ///
  /// Any other widget, such as an `observer`, `conditional` or `container`
  /// around an `appBar`, is wrapped in a [PreferredSize] with the size of the
  /// app bar inside it. A widget that shows nothing, such as a `conditional`
  /// with no branch for its result, leaves the slot empty.
  PreferredSizeWidget? parsePreferredSizeWidget(BuildContext context) {
    if (this == null) {
      return null;
    }

    final json = this!.toJson();
    final Widget? widget = Stac.fromJson(json, context);

    if (widget == null || widget is PreferredSizeWidget) {
      return widget as PreferredSizeWidget?;
    }
    if (widget is SizedBox && widget.child == null && widget.height == null) {
      return null;
    }
    return PreferredSize(
      preferredSize: _preferredSizeInside(json, context),
      child: widget,
    );
  }
}

// The preferred size of the first widget down [json]'s `child` chain that
// has one, such as the `appBar` in an `observer` or `container`. Without
// one, the slot gets a toolbar's height.
Size _preferredSizeInside(Map<String, dynamic> json, BuildContext context) {
  Object? child = json['child'];
  while (child is Map<String, dynamic>) {
    final widget = Stac.fromJson(child, context);
    if (widget is PreferredSizeWidget) {
      return widget.preferredSize;
    }
    child = child['child'];
  }
  return const Size.fromHeight(kToolbarHeight);
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
