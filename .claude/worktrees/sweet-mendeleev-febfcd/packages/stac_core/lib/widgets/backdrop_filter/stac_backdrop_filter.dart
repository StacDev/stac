import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_backdrop_filter.g.dart';

/// A Stac model representing Flutter's [BackdropFilter] widget.
///
/// Applies an [StacImageFilter] to the existing painted content before
/// painting its [child]. Commonly used to create frosted glass blur effects.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacBackdropFilter(
///   filter: StacImageFilter(type: StacImageFilterType.blur, sigmaX: 10, sigmaY: 10),
///   child: StacContainer(color: '#33FFFFFF'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "backdropFilter",
///   "filter": { "type": "blur", "sigmaX": 10, "sigmaY": 10 },
///   "child": { "type": "container", "color": "#33FFFFFF" }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's BackdropFilter documentation (`https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html`)
@JsonSerializable(explicitToJson: true)
class StacBackdropFilter extends StacWidget {
  /// Creates a [StacBackdropFilter].
  const StacBackdropFilter({
    required this.filter,
    this.child,
    this.enabled,
    this.blendMode,
  });

  /// The image filter to apply to the painted content behind [child].
  final StacImageFilter filter;

  /// The widget painted after applying the filter.
  final StacWidget? child;

  /// Whether the filter should be applied.
  final bool? enabled;

  /// The blend mode to apply when blending the filter with existing content.
  final StacBlendMode? blendMode;

  /// Widget type identifier.
  @override
  String get type => WidgetType.backdropFilter.name;

  /// Creates a [StacBackdropFilter] from JSON.
  factory StacBackdropFilter.fromJson(Map<String, dynamic> json) =>
      _$StacBackdropFilterFromJson(json);

  /// Converts this [StacBackdropFilter] to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacBackdropFilterToJson(this);
}
