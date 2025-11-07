import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_text_theme.g.dart';

/// A Stac model representing Flutter's [TextTheme].
///
/// Defines the text theme for the application, including display, headline,
/// title, body, and label text styles.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacTextTheme(
///   displayLarge: StacTextStyle(fontSize: 57.0, fontWeight: 'normal'),
///   headlineLarge: StacTextStyle(fontSize: 32.0, fontWeight: 'normal'),
///   bodyLarge: StacTextStyle(fontSize: 16.0, fontWeight: 'normal'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "displayLarge": {"fontSize": 57.0, "fontWeight": "normal"},
///   "headlineLarge": {"fontSize": 32.0, "fontWeight": "normal"},
///   "titleLarge": {"fontSize": 22.0, "fontWeight": "medium"},
///   "bodyLarge": {"fontSize": 16.0, "fontWeight": "normal"},
///   "labelLarge": {"fontSize": 14.0, "fontWeight": "medium"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacTextTheme implements StacElement {
  /// Creates a [StacTextTheme] with the given properties.
  const StacTextTheme({
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
  });

  /// The style for display large text.
  final StacTextStyle? displayLarge;

  /// The style for display medium text.
  final StacTextStyle? displayMedium;

  /// The style for display small text.
  final StacTextStyle? displaySmall;

  /// The style for headline large text.
  final StacTextStyle? headlineLarge;

  /// The style for headline medium text.
  final StacTextStyle? headlineMedium;

  /// The style for headline small text.
  final StacTextStyle? headlineSmall;

  /// The style for title large text.
  final StacTextStyle? titleLarge;

  /// The style for title medium text.
  final StacTextStyle? titleMedium;

  /// The style for title small text.
  final StacTextStyle? titleSmall;

  /// The style for body large text.
  final StacTextStyle? bodyLarge;

  /// The style for body medium text.
  final StacTextStyle? bodyMedium;

  /// The style for body small text.
  final StacTextStyle? bodySmall;

  /// The style for label large text.
  final StacTextStyle? labelLarge;

  /// The style for label medium text.
  final StacTextStyle? labelMedium;

  /// The style for label small text.
  final StacTextStyle? labelSmall;

  /// Creates a [StacTextTheme] from JSON.
  factory StacTextTheme.fromJson(Map<String, dynamic> json) =>
      _$StacTextThemeFromJson(json);

  /// Converts this text theme to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacTextThemeToJson(this);
}
