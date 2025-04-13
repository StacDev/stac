import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';

import '../../../stac.dart' show Stac;

part 'stac_dropdown_menu_entry.freezed.dart';
part 'stac_dropdown_menu_entry.g.dart';

@freezed
abstract class StacDropdownMenuEntry with _$StacDropdownMenuEntry {
  const factory StacDropdownMenuEntry({
    dynamic value,
    @Default("") String label,
    Map<String, dynamic>? labelWidget,
    Map<String, dynamic>? leadingIcon,
    Map<String, dynamic>? trailingIcon,
    @Default(true) bool enabled,
    StacButtonStyle? style,
  }) = _StacBDropdownMenuEntry;

  factory StacDropdownMenuEntry.fromJson(Map<String, dynamic> json) =>
      _$StacDropdownMenuEntryFromJson(json);
}

extension StacDropdownMenuEntryParser on StacDropdownMenuEntry? {
  DropdownMenuEntry? parse(BuildContext context) {
    return DropdownMenuEntry(
      value: this?.value,
      label: this!.label,
      labelWidget: Stac.fromJson(this?.labelWidget, context),
      leadingIcon: Stac.fromJson(this?.leadingIcon, context),
      enabled: this?.enabled ?? false,
      style: this?.style?.parseText(context),
    );
  }
}
