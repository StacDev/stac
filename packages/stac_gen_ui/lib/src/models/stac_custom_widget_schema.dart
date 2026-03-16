/// Describes a custom widget type so the AI knows how to use it.
///
/// When you register custom [StacParser]s with Stac, the AI needs to know
/// about them to include them in generated UI. Use [StacCustomWidgetSchema]
/// to teach the AI your custom widget's JSON structure.
///
/// ```dart
/// await StacGenUiConfig.initialize(
///   apiKey: 'sk-ant-...',
///   parsers: [const RatingBarParser()],
///   customWidgets: [
///     StacCustomWidgetSchema(
///       type: 'ratingBar',
///       description: 'A star rating bar widget',
///       example: '{"type": "ratingBar", "rating": 4.5, "maxRating": 5, "size": 24}',
///     ),
///   ],
/// );
/// ```
class StacCustomWidgetSchema {
  /// Creates a custom widget schema.
  ///
  /// [type] must match the parser's `type` getter (e.g., 'ratingBar').
  /// [description] is a short human-readable description of what the widget does.
  /// [example] is a compact JSON example showing the widget's key properties.
  const StacCustomWidgetSchema({
    required this.type,
    required this.description,
    this.example,
  });

  /// The widget type name, matching the parser's `type` getter.
  final String type;

  /// A short description of what the widget does.
  final String description;

  /// An optional compact JSON example showing the widget's properties.
  final String? example;
}
