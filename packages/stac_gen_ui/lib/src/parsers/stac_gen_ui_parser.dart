import 'package:flutter/widgets.dart';
import 'package:stac_framework/stac_framework.dart';
import 'package:stac_gen_ui/src/models/stac_gen_ui_model.dart';
import 'package:stac_gen_ui/src/widgets/stac_gen_ui_view.dart';

/// Parser for the `genUi` widget type.
///
/// Register this parser during Stac initialization to enable AI-generated
/// UI in your stac JSON specs:
///
/// ```dart
/// await Stac.initialize(
///   parsers: [const StacGenUiParser()],
/// );
/// ```
///
/// Then use in JSON specs:
/// ```json
/// {
///   "type": "genUi",
///   "prompt": "Create a settings page with dark mode toggle"
/// }
/// ```
class StacGenUiParser extends StacParser<StacGenUiModel> {
  const StacGenUiParser();

  @override
  String get type => 'genUi';

  @override
  StacGenUiModel getModel(Map<String, dynamic> json) =>
      StacGenUiModel.fromJson(json);

  @override
  Widget parse(BuildContext context, StacGenUiModel model) {
    return StacGenUiView(model: model);
  }
}
