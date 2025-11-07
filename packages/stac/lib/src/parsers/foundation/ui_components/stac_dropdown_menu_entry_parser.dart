import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/theme/themes.dart';
import 'package:stac_core/stac_core.dart';

extension StacDropdownMenuEntryParser on StacDropdownMenuEntry? {
  DropdownMenuEntry? parse(BuildContext context) {
    return DropdownMenuEntry(
      value: this?.value,
      label: this?.label ?? '',
      labelWidget: this?.labelWidget?.parse(context),
      leadingIcon: this?.leadingIcon?.parse(context),
      enabled: this?.enabled ?? true,
      style: this?.style?.parseTextButton(context),
    );
  }
}
