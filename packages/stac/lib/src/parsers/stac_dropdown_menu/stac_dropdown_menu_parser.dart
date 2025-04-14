import 'package:flutter/material.dart';
import 'package:stac/src/parsers/stac_dropdown_menu/stac_dropdown_menu.dart';
import 'package:stac/src/parsers/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/stac_offset/stac_offset.dart';

import '../../../stac.dart';
import '../../utils/widget_type.dart';
import '../stac_dropdown_menu_entry/stac_dropdown_menu_entry.dart';

class StacDropdownMenuParser extends StacParser<StacDropdownMenu> {
  const StacDropdownMenuParser();

  @override
  String get type => WidgetType.dropdownMenu.name;

  @override
  StacDropdownMenu getModel(Map<String, dynamic> json) =>
      StacDropdownMenu.fromJson(json);

  @override
  Widget parse(BuildContext context, StacDropdownMenu model) {
    return _DropDownMenuWidget(model: model);
  }
}

class _DropDownMenuWidget extends StatefulWidget {
  const _DropDownMenuWidget({required this.model});

  final StacDropdownMenu model;

  @override
  State<_DropDownMenuWidget> createState() => _DropDownMenuWidgetState();
}

class _DropDownMenuWidgetState extends State<_DropDownMenuWidget> {
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();
  late final StacDropdownMenu model;

  @override
  void initState() {
    model = widget.model;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      initialSelection: model.initialSelection,
      focusNode: _focusNode,
      controller: _controller,
      dropdownMenuEntries: model.dropdownMenuEntries
          .map((StacDropdownMenuEntry dropDownMenu) =>
              dropDownMenu.parse(context)!)
          .toList(),
      enabled: model.enabled,
      width: model.width,
      menuHeight: model.menuHeight,
      leadingIcon: Stac.fromJson(model.leadingIcon, context),
      trailingIcon: Stac.fromJson(model.trailingIcon, context),
      label: Stac.fromJson(model.label, context),
      hintText: model.hintText,
      helperText: model.helperText,
      errorText: model.errorText,
      selectedTrailingIcon: Stac.fromJson(model.selectedTrailingIcon, context),
      enableFilter: model.enableFilter ?? false,
      enableSearch: model.enableSearch ?? false,
      keyboardType: model.keyboardType?.value,
      textStyle: model.textStyle?.parse(context),
      textAlign: model.textAlign,
      inputDecorationTheme: model.inputDecorationTheme.parse(context),

      // this.controller,
      // this.initialSelection,
      // this.onSelected,
      // this.focusNode,
      requestFocusOnTap: model.requestFocusOnTap,
      expandedInsets: model.expandedInsets.parse,
      // this.filterCallback,
      // this.searchCallback,
      alignmentOffset: model.alignmentOffset?.parse,
      inputFormatters: model.inputFormatters
          .map((StacInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
    );
  }
}
