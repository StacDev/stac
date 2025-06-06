import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_offset/stac_offset.dart';
import 'package:stac/src/utils/text_input_utils.dart';

export 'stac_dropdown_menu_parser.dart';

part 'stac_dropdown_menu.freezed.dart';
part 'stac_dropdown_menu.g.dart';

@freezed
abstract class StacDropdownMenu with _$StacDropdownMenu {
  const factory StacDropdownMenu({
    @Default(true) bool enabled,
    StacDouble? width,
    StacDouble? menuHeight,
    Map<String, dynamic>? leadingIcon,
    Map<String, dynamic>? trailingIcon,
    Map<String, dynamic>? label,
    String? hintText,
    String? helperText,
    String? errorText,
    Map<String, dynamic>? selectedTrailingIcon,
    bool? enableFilter,
    bool? enableSearch,
    StacTextInputType? keyboardType,
    StacTextStyle? textStyle,
    @Default(TextAlign.start) TextAlign textAlign,
    StacInputDecorationTheme? inputDecorationTheme,
    @Default([]) List<StacInputFormatter> inputFormatters,
    StacOffset? alignmentOffset,
    StacEdgeInsets? expandedInsets,
    bool? requestFocusOnTap,
    dynamic initialSelection,
    @Default([]) List<StacDropdownMenuEntry> dropdownMenuEntries,
    @Default(DropdownMenuCloseBehavior.all)
    DropdownMenuCloseBehavior? closeBehavior,
  }) = _StacDropdownMenu;

  factory StacDropdownMenu.fromJson(Map<String, dynamic> json) =>
      _$StacDropdownMenuFromJson(json);
}
