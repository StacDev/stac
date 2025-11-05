import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';
import 'package:stac_core/foundation/text/stac_text_style/stac_text_style.dart';

part 'stac_text_theme.g.dart';

/// A Stac model representing Flutter's [TextTheme].
///
/// Defines the text theme for the application.
@JsonSerializable()
class StacTextTheme implements StacElement {
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

  final StacTextStyle? displayLarge;
  final StacTextStyle? displayMedium;
  final StacTextStyle? displaySmall;
  final StacTextStyle? headlineLarge;
  final StacTextStyle? headlineMedium;
  final StacTextStyle? headlineSmall;
  final StacTextStyle? titleLarge;
  final StacTextStyle? titleMedium;
  final StacTextStyle? titleSmall;
  final StacTextStyle? bodyLarge;
  final StacTextStyle? bodyMedium;
  final StacTextStyle? bodySmall;
  final StacTextStyle? labelLarge;
  final StacTextStyle? labelMedium;
  final StacTextStyle? labelSmall;

  factory StacTextTheme.fromJson(Map<String, dynamic> json) =>
      _$StacTextThemeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacTextThemeToJson(this);
}
