import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_action_parser.dart';
import 'package:stac/src/parsers/foundation/ui_components/stac_options_view_open_direction_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacAutoCompleteParser extends StacParser<StacAutoComplete> {
  const StacAutoCompleteParser();

  @override
  String get type => WidgetType.autocomplete.name;

  @override
  StacAutoComplete getModel(Map<String, dynamic> json) =>
      StacAutoComplete.fromJson(json);

  @override
  Widget parse(BuildContext context, StacAutoComplete model) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return model.options.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String val) => model.onSelected?.parse(context),
      optionsMaxHeight: model.optionsMaxHeight ?? 200,
      optionsViewOpenDirection:
          (model.optionsViewOpenDirection ?? StacOptionsViewOpenDirection.down)
              .parse,
      initialValue: model.initialValue != null
          ? TextEditingValue(text: model.initialValue!)
          : null,
    );
  }
}
