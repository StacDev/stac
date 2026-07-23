import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_linear_progress_indicator.g.dart';

/// A Stac model representing Flutter's [LinearProgressIndicator] widget.
///
/// Displays a linear progress indicator. Can be determinate when [value] is
/// provided (0.0 to 1.0), or indeterminate when [value] is null.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacLinearProgressIndicator(
///   value: 0.5,
///   color: StacColors.blue,
///   minHeight: 4.0,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "linearProgressIndicator",
///   "value": 0.5,
///   "color": "#2196F3",
///   "minHeight": 4.0
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's LinearProgressIndicator documentation (`https://api.flutter.dev/flutter/material/LinearProgressIndicator-class.html`)
@JsonSerializable()
class StacLinearProgressIndicator extends StacWidget {
  /// Creates a [StacLinearProgressIndicator] widget.
  ///
  /// All parameters are optional. When [value] is provided (0.0 to 1.0),
  /// the progress indicator is determinate. When [value] is null, it's
  /// indeterminate and will animate continuously.
  ///
  /// The [backgroundColor] sets the track color, [color] sets the progress
  /// color, and [minHeight] controls the minimum height of the indicator.
  const StacLinearProgressIndicator({
    this.value,
    this.backgroundColor,
    this.color,
    this.minHeight,
    this.semanticsLabel,
    this.semanticsValue,
    this.borderRadius,
  });

  /// Progress value from 0.0 to 1.0 for determinate mode; null for indeterminate.
  @DoubleConverter()
  final double? value;

  /// Background color of the linear track.
  final StacColor? backgroundColor;

  /// Foreground color of the progress indicator.
  final StacColor? color;

  /// Minimum height of the progress indicator.
  @DoubleConverter()
  final double? minHeight;

  /// Semantics label for accessibility.
  final String? semanticsLabel;

  /// Semantics value for accessibility.
  final String? semanticsValue;

  /// Border radius of the progress indicator.
  final StacBorderRadius? borderRadius;

  /// Widget type identifier.
  @override
  String get type => WidgetType.linearProgressIndicator.name;

  /// Creates a [StacLinearProgressIndicator] from a JSON map.
  factory StacLinearProgressIndicator.fromJson(Map<String, dynamic> json) =>
      _$StacLinearProgressIndicatorFromJson(json);

  /// Converts this [StacLinearProgressIndicator] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacLinearProgressIndicatorToJson(this);
}
