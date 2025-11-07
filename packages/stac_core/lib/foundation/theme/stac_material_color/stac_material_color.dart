import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_material_color.g.dart';

/// A Stac model representing Flutter's [MaterialColor].
///
/// Defines a Material Design color swatch with shades from 50 to 900.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacMaterialColor(
///   primary: '#2196F3',
///   shade50: '#E3F2FD',
///   shade100: '#BBDEFB',
///   shade500: '#2196F3',
///   shade900: '#0D47A1',
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "primary": "#2196F3",
///   "shade50": "#E3F2FD",
///   "shade100": "#BBDEFB",
///   "shade200": "#90CAF9",
///   "shade300": "#64B5F6",
///   "shade400": "#42A5F5",
///   "shade500": "#2196F3",
///   "shade600": "#1E88E5",
///   "shade700": "#1976D2",
///   "shade800": "#1565C0",
///   "shade900": "#0D47A1"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacMaterialColor implements StacElement {
  /// Creates a [StacMaterialColor] with the given properties.
  const StacMaterialColor({
    required this.primary,
    required this.shade50,
    required this.shade100,
    required this.shade200,
    required this.shade300,
    required this.shade400,
    required this.shade500,
    required this.shade600,
    required this.shade700,
    required this.shade800,
    required this.shade900,
  });

  /// The primary color value (typically shade500).
  final String primary;

  /// The lightest shade (50).
  final String shade50;

  /// The shade 100.
  final String shade100;

  /// The shade 200.
  final String shade200;

  /// The shade 300.
  final String shade300;

  /// The shade 400.
  final String shade400;

  /// The shade 500 (primary).
  final String shade500;

  /// The shade 600.
  final String shade600;

  /// The shade 700.
  final String shade700;

  /// The shade 800.
  final String shade800;

  /// The darkest shade (900).
  final String shade900;

  /// Creates a [StacMaterialColor] from JSON.
  factory StacMaterialColor.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialColorFromJson(json);

  /// Converts this material color to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacMaterialColorToJson(this);
}
