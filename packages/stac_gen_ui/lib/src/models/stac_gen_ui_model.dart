import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';

part 'stac_gen_ui_model.g.dart';

/// A Stac model for generating UI from a natural language prompt using Claude AI.
///
/// This widget sends the [prompt] to the Claude API, which generates a
/// stac-compatible JSON spec. The generated JSON is then rendered as
/// Flutter widgets via the existing Stac parser system.
///
/// ```dart
/// StacGenUiModel(
///   prompt: 'Create a login form with email and password fields',
///   loaderWidget: StacWidget.fromJson({
///     'type': 'center',
///     'child': {'type': 'circularProgressIndicator'},
///   }),
/// )
/// ```
///
/// ```json
/// {
///   "type": "genUi",
///   "prompt": "Create a login form with email and password fields",
///   "loaderWidget": {
///     "type": "center",
///     "child": {"type": "circularProgressIndicator"}
///   },
///   "errorWidget": {
///     "type": "center",
///     "child": {"type": "text", "data": "Failed to generate UI"}
///   }
/// }
/// ```
@JsonSerializable()
class StacGenUiModel extends StacWidget {
  /// Creates a [StacGenUiModel] with the given properties.
  const StacGenUiModel({
    required this.prompt,
    this.loaderWidget,
    this.errorWidget,
    this.systemPromptExtras,
  });

  /// The natural language prompt describing the UI to generate.
  final String prompt;

  /// Optional StacWidget to display while the AI is generating the UI.
  final StacWidget? loaderWidget;

  /// Optional StacWidget to display if generation fails.
  final StacWidget? errorWidget;

  /// Optional additional instructions to include in the Claude system prompt.
  final String? systemPromptExtras;

  /// Widget type identifier.
  @override
  String get type => 'genUi';

  /// Creates a [StacGenUiModel] from a JSON map.
  factory StacGenUiModel.fromJson(Map<String, dynamic> json) =>
      _$StacGenUiModelFromJson(json);

  /// Converts this [StacGenUiModel] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacGenUiModelToJson(this);
}
