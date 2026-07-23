import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/alignment/stac_alignment.dart';
import 'package:stac_core/foundation/effects/stac_filter_quality.dart';
import 'package:stac_core/foundation/geometry/stac_rect/stac_rect.dart';
import 'package:stac_core/foundation/layout/stac_box_fit.dart';
import 'package:stac_core/foundation/ui_components/stac_image_repeat.dart';
import 'package:stac_core/foundation/ui_components/stac_image_type.dart';

part 'stac_decoration_image.g.dart';

/// An image to use as decoration in a box decoration.
///
/// This class defines how an image should be displayed as part of
/// a box decoration, including positioning, scaling, and rendering options.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacDecorationImage(
///   src: 'assets/background.png',
///   fit: StacBoxFit.cover,
///   alignment: StacAlignment.center,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "src": "assets/background.png",
///   "fit": "cover",
///   "alignment": "center"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDecorationImage implements StacElement {
  /// Creates a decoration image with the specified source and options.
  const StacDecorationImage({
    required this.src,
    this.fit,
    this.imageType,
    this.alignment,
    this.centerSlice,
    this.repeat,
    this.matchTextDirection,
    this.scale,
    this.opacity,
    this.filterQuality,
    this.invertColors,
    this.isAntiAlias,
  });

  /// The source path or URL of the image.
  final String src;

  /// How the image should be inscribed into the decoration box.
  final StacBoxFit? fit;

  /// The type of image source (asset, network, etc.).
  final StacImageType? imageType;

  /// How to align the image within the decoration box.
  final StacAlignment? alignment;

  /// The center slice for nine-patch images.
  final StacRect? centerSlice;

  /// How the image should be repeated if it doesn't fill the box.
  final StacImageRepeat? repeat;

  /// Whether to match the text direction for alignment.
  final bool? matchTextDirection;

  /// The scale factor for the image.
  final double? scale;

  /// The opacity to apply to the image (0.0 to 1.0).
  final double? opacity;

  /// The quality level for image filtering.
  final StacFilterQuality? filterQuality;

  /// Whether to invert the colors of the image.
  final bool? invertColors;

  /// Whether to use anti-aliasing for the image.
  final bool? isAntiAlias;

  /// Creates a [StacDecorationImage] from a JSON map.
  factory StacDecorationImage.fromJson(Map<String, dynamic> json) =>
      _$StacDecorationImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacDecorationImageToJson(this);
}
