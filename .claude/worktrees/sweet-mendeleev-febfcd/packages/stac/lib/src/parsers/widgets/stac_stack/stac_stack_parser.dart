import 'package:flutter/material.dart';
import 'package:stac/src/parsers/core/stac_widget_parser.dart';
import 'package:stac/src/parsers/foundation/alignment/stac_alignment_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_clip_parser.dart';
import 'package:stac/src/parsers/foundation/layout/stac_stack_fit_parser.dart';
import 'package:stac/src/parsers/foundation/text/stac_text_direction_parser.dart';
import 'package:stac_core/stac_core.dart';
import 'package:stac_framework/stac_framework.dart';

class StacStackParser extends StacParser<StacStack> {
  const StacStackParser();

  @override
  StacStack getModel(Map<String, dynamic> json) => StacStack.fromJson(json);

  @override
  String get type => WidgetType.stack.name;

  @override
  Widget parse(BuildContext context, StacStack model) {
    return Stack(
      alignment: model.alignment?.parse ?? AlignmentDirectional.topStart,
      clipBehavior: model.clipBehavior?.parse ?? Clip.hardEdge,
      fit: model.fit?.parse ?? StackFit.loose,
      textDirection: model.textDirection?.parse,
      children: model.children?.parseList(context) ?? [],
    );
  }
}
