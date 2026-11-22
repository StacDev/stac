import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_items_binding.dart';
import 'package:stac/src/utils/variable_resolver.dart';
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
  /// around an `appBar`, is wrapped in a [PreferredSize] with the height the
  /// app bar inside it needs. A widget that shows nothing, such as a
  /// `conditional` with no branch for its result, leaves the slot empty.
  PreferredSizeWidget? parsePreferredSizeWidget(BuildContext context) {
    if (this == null) {
      return null;
    }

    final json = this!.toJson();
    final Widget? widget = Stac.fromJson(json, context);

    if (widget == null || widget is PreferredSizeWidget) {
      return widget as PreferredSizeWidget?;
    }
    if (_showsNothing(widget)) {
      return null;
    }
    return PreferredSize(
      preferredSize: _preferredSizeInside(json, context),
      child: widget,
    );
  }
}

// Whether [widget] shows nothing, such as a `conditional` with no branch for
// its result.
bool _showsNothing(Widget? widget) =>
    widget is SizedBox && widget.child == null && widget.height == null;

// The height a wrapper such as an `observer`, `conditional` or `container`
// needs for the app bar inside it: the app bar's own height, found down the
// widgets each wrapper shows, plus the padding and margin of the wrappers on
// the way. A wrapper with a fixed height, such as a `sizedBox`, takes that
// height. Around nothing it takes no height, and around no app bar a
// toolbar's height.
Size _preferredSizeInside(Map<String, dynamic> json, BuildContext context) {
  var extent = 0.0;
  Map<String, dynamic>? current = json;
  while (current != null) {
    final margin = _verticalInsets(current['margin']);
    final height = current['height'];
    if (height is num) {
      return Size.fromHeight(extent + margin + height);
    }
    extent += margin + _verticalInsets(current['padding']);
    final shown = _shownChild(current);
    if (shown == null) {
      break;
    }
    final widget = Stac.fromJson(shown, context);
    if (widget is PreferredSizeWidget) {
      return Size.fromHeight(
        extent + AppBar.preferredHeightFor(context, widget.preferredSize),
      );
    }
    if (_showsNothing(widget)) {
      return Size.fromHeight(extent);
    }
    current = shown;
  }
  return Size.fromHeight(extent + kToolbarHeight);
}

// The JSON [json] shows: a `conditional`'s branch for its current result, or
// the `child` of any other wrapper.
Map<String, dynamic>? _shownChild(Map<String, dynamic> json) {
  final Object? shown;
  if (json['type'] == WidgetType.conditional.name) {
    final resolved = resolveVariablesInJson(json, StacRegistry.instance);
    final condition = resolved is Map ? resolved['condition'] : null;
    final result = condition is String
        ? ExpressionResolver.evaluate(condition)
        : null;
    shown = result == true ? json['ifTrue'] : json['ifFalse'];
  } else {
    shown = json['child'];
  }
  return shown is Map<String, dynamic> ? shown : null;
}

// The vertical size of [value] read as edge insets, such as a container's
// padding, or 0 when there's none.
double _verticalInsets(Object? value) {
  if (value == null) {
    return 0;
  }
  try {
    return StacEdgeInsets.fromJson(value).parse.vertical;
  } catch (_) {
    return 0;
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
