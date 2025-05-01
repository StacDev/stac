import 'package:flutter/material.dart';
import 'package:stac/src/framework/framework.dart';
import 'package:stac/src/parsers/theme/stac_input_decoration_theme/stac_input_decoration_theme.dart';
import 'package:stac/src/parsers/widgets/stac_dropdown_menu/stac_dropdown_menu.dart';
import 'package:stac/src/parsers/widgets/stac_dropdown_menu_entry/stac_dropdown_menu_entry.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';
import 'package:stac/src/parsers/widgets/stac_input_formatters/stac_input_formatter.dart';
import 'package:stac/src/parsers/widgets/stac_offset/stac_offset.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/widget_type.dart';
import 'package:stac_framework/stac_framework.dart';

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
      enableFilter: model.enableFilter ?? true,
      enableSearch: model.enableSearch ?? true,
      keyboardType: model.keyboardType?.value,
      textStyle: model.textStyle?.parse(context),
      textAlign: model.textAlign,
      inputDecorationTheme: model.inputDecorationTheme?.parse(context),
      requestFocusOnTap: model.requestFocusOnTap,
      expandedInsets: model.expandedInsets?.parse,
      alignmentOffset: model.alignmentOffset?.parse,
      inputFormatters: model.inputFormatters
          .map((StacInputFormatter formatter) =>
              formatter.type.format(formatter.rule ?? ""))
          .toList(),
    );
  }
}
