import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_core/stac_core.dart';

extension StacDropdownMenuEntryParser on StacDropdownMenuEntry? {
  /// Builds the entry. An entry without a `value` uses its `label` as the
  /// value.
  DropdownMenuEntry<Object>? parse(BuildContext context) {
    final entry = this;
    if (entry == null) return null;
    return DropdownMenuEntry<Object>(
      value: entry.value ?? entry.label,
      label: entry.label,
      labelWidget: entry.labelWidget?.parse(context),
      leadingIcon: entry.leadingIcon?.parse(context),
      enabled: entry.enabled ?? true,
      style: entry.style?.parseTextButton(context),
    );
  }
}
