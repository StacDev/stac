import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/core.dart';

part 'stac_material_color.g.dart';

/// A Stac model representing Flutter's [MaterialColor].
///
/// Defines a Material Design color swatch with shades from 50 to 900.
@JsonSerializable()
class StacMaterialColor implements StacElement {
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

  final String primary;
  final String shade50;
  final String shade100;
  final String shade200;
  final String shade300;
  final String shade400;
  final String shade500;
  final String shade600;
  final String shade700;
  final String shade800;
  final String shade900;

  factory StacMaterialColor.fromJson(Map<String, dynamic> json) =>
      _$StacMaterialColorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacMaterialColorToJson(this);
}

