import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_edge_insets_parser.dart';
import 'package:stac/src/parsers/foundation/geometry/stac_offset_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_align_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_input_type_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_style_parser.dart';
import 'package:stac/src/parsers/foundation/theme/stac_input_decoration_theme_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_dropdown_menu_entry_parser.dart';
import 'package:stac/src/state/stac_input_binding.dart';
import 'package:stac/src/utils/input_formatters.dart';
import 'package:stac_core/stac_core.dart';
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

class _DropDownMenuWidgetState extends State<_DropDownMenuWidget>
    with StacBoundInput<_DropDownMenuWidget, Object> {
  final TextEditingController _controller = TextEditingController();
  final _focusNode = FocusNode();
  Object? _selection;

  @override
  String? get bindPath => widget.model.bind;

  @override
  Object? get initialValue => widget.model.initialSelection;

  @override
  Object? convertBound(Object? value) => value;

  @override
  void showBound(Object? value) => _selection = value;

  @override
  void initState() {
    super.initState();
    _selection = widget.model.initialSelection;
  }

  @override
  void didUpdateWidget(covariant _DropDownMenuWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (binding == null &&
        oldWidget.model.initialSelection != widget.model.initialSelection) {
      _selection = widget.model.initialSelection;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSelected(Object? value) {
    setState(() => _selection = value);
    writeBound(value);
    widget.model.onSelected.parseWithValue(context, value);
  }

  @override
  Widget build(BuildContext context) {
    final model = widget.model;
    return DropdownMenu(
      initialSelection: _selection,
      onSelected: _onSelected,
      focusNode: _focusNode,
      controller: _controller,
      dropdownMenuEntries:
          model.dropdownMenuEntries
              ?.map((e) => e.parse(context))
              .whereType<DropdownMenuEntry<Object>>()
              .toList() ??
          const <DropdownMenuEntry<Object>>[],
      enabled: model.enabled ?? true,
      width: model.width,
      menuHeight: model.menuHeight,
      leadingIcon: model.leadingIcon?.parse(context),
      trailingIcon: model.trailingIcon?.parse(context),
      label: model.label?.parse(context),
      hintText: model.hintText,
      helperText: model.helperText,
      errorText: model.errorText,
      selectedTrailingIcon: model.selectedTrailingIcon?.parse(context),
      enableFilter: model.enableFilter ?? true,
      enableSearch: model.enableSearch ?? true,
      keyboardType: model.keyboardType?.parse,
      textStyle: model.textStyle?.parse(context),
      textAlign: model.textAlign?.parse ?? TextAlign.start,
      inputDecorationTheme: model.inputDecorationTheme?.parse(context),
      requestFocusOnTap: model.requestFocusOnTap ?? false,
      expandedInsets: model.expandedInsets?.parse,
      alignmentOffset: model.alignmentOffset?.parse,
      inputFormatters: (model.inputFormatters ?? const <StacInputFormatter>[])
          .map<TextInputFormatter>((StacInputFormatter formatter) {
            switch (formatter.type) {
              case StacInputFormatterType.allow:
                return InputFormatterType.allow.format(formatter.rule ?? '');
              case StacInputFormatterType.deny:
                return InputFormatterType.deny.format(formatter.rule ?? '');
              case StacInputFormatterType.mask:
                return InputFormatterType.mask.format(
                  formatter.rule ?? '',
                  mask: formatter.mask,
                );
            }
          })
          .toList(),
    );
  }
}
