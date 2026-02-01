import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_image.g.dart';

/// A Stac widget that displays an image.
///
/// This widget corresponds to Flutter's Image widget and can display
/// images from various sources including assets, network, and files.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacImage(
///   src: 'assets/logo.png',
///   width: 200,
///   height: 100,
///   fit: StacBoxFit.cover,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "image",
///   "src": "assets/logo.png",
///   "width": 200,
///   "height": 100,
///   "fit": "cover"
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacImage extends StacWidget {
  /// Creates an image widget with the specified source and options.
  const StacImage({
    required this.src,
    this.alignment,
    this.imageType,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  });

  /// Creates an image widget that loads from application assets.
  const StacImage.asset(
    String path, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = path,
       imageType = StacImageType.asset;

  /// Creates an image widget that loads from a network URL.
  const StacImage.network(
    String url, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = url,
       imageType = StacImageType.network;

  /// Creates an image widget that loads from a local file path.
  const StacImage.file(
    String path, {
    this.alignment,
    this.color,
    this.width,
    this.height,
    this.fit,
    this.repeat,
    this.filterQuality,
    this.semanticLabel,
    this.excludeFromSemantics,
  }) : src = path,
       imageType = StacImageType.file;

  /// The source path or URL of the image to display.
  final String src;

  /// How to align the image within its bounds.
  final StacAlignment? alignment;

  /// The type of image source (asset, network, etc.).
  final StacImageType? imageType;

  /// A color filter to apply to the image.
  final StacColor? color;

  /// The width of the image in logical pixels.
  @DoubleConverter()
  final double? width;

  /// The height of the image in logical pixels.
  @DoubleConverter()
  final double? height;

  /// How the image should be inscribed into the space allocated during layout.
  final StacBoxFit? fit;

  /// How the image should be repeated if it doesn't fill its layout bounds.
  final StacImageRepeat? repeat;

  /// The quality level for image filtering operations.
  final StacFilterQuality? filterQuality;

  /// A semantic description of the image for accessibility.
  final String? semanticLabel;

  /// Whether to exclude this image from semantics.
  final bool? excludeFromSemantics;

  @override
  String get type => WidgetType.image.name;

  /// Creates a [StacImage] from a JSON map.
  factory StacImage.fromJson(Map<String, dynamic> json) =>
      _$StacImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacImageToJson(this);
}
