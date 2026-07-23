import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';

part 'stac_image_filter.g.dart';

/// Types of image filters supported by the Stac framework.
///
/// Note: Shader filters are not currently supported.
enum StacImageFilterType {
  /// Gaussian blur filter that blurs the image.
  blur,

  /// Matrix transformation filter that applies a 4x4 transformation matrix.
  matrix,

  /// Dilate filter that expands bright areas of the image.
  dilate,

  /// Erode filter that contracts bright areas of the image.
  erode,

  /// Compose filter that combines two filters sequentially.
  compose,
}

/// A Stac model representing Flutter's ImageFilter.
///
/// Provides named constructors for a familiar API. JSON uses a flat shape with
/// a required `type` field and associated properties.
///
/// Dart Example:
/// ```dart
/// StacImageFilter.blur(sigmaX: 10, sigmaY: 12)
/// ```
///
/// JSON Example:
/// ```json
/// { "type": "blur", "sigmaX": 10, "sigmaY": 12 }
/// ```
@JsonSerializable(explicitToJson: true)
class StacImageFilter {
  /// Creates an image filter with the specified type and parameters.
  const StacImageFilter({
    required this.type,
    this.sigmaX,
    this.sigmaY,
    this.radiusX,
    this.radiusY,
    this.matrix,
    this.inner,
    this.outer,
  });

  /// Creates a blur filter.
  ///
  /// - [sigmaX]: Standard deviation in the horizontal direction.
  /// - [sigmaY]: Standard deviation in the vertical direction. Defaults to [sigmaX] when omitted.
  const StacImageFilter.blur({required double sigmaX, double? sigmaY})
    : this(type: StacImageFilterType.blur, sigmaX: sigmaX, sigmaY: sigmaY);

  /// Creates a matrix filter.
  ///
  /// - [matrix]: A 4x4 transformation matrix (length 16).
  const StacImageFilter.matrix({required List<double> matrix})
    : this(type: StacImageFilterType.matrix, matrix: matrix);

  /// Creates a dilate filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const StacImageFilter.dilate({required double radiusX, double? radiusY})
    : this(
        type: StacImageFilterType.dilate,
        radiusX: radiusX,
        radiusY: radiusY,
      );

  /// Creates an erode filter.
  ///
  /// - [radiusX]: Horizontal radius.
  /// - [radiusY]: Vertical radius. Defaults to [radiusX] when omitted.
  const StacImageFilter.erode({required double radiusX, double? radiusY})
    : this(type: StacImageFilterType.erode, radiusX: radiusX, radiusY: radiusY);

  /// Composes two filters where [inner] is applied first, then [outer].
  const StacImageFilter.compose({
    required StacImageFilter inner,
    required StacImageFilter outer,
  }) : this(type: StacImageFilterType.compose, inner: inner, outer: outer);

  /// The type of image filter to apply.
  final StacImageFilterType type;

  /// Standard deviation for blur in the horizontal direction.
  @DoubleConverter()
  final double? sigmaX;

  /// Standard deviation for blur in the vertical direction.
  @DoubleConverter()
  final double? sigmaY;

  /// Horizontal radius for dilate/erode filters.
  @DoubleConverter()
  final double? radiusX;

  /// Vertical radius for dilate/erode filters.
  @DoubleConverter()
  final double? radiusY;

  /// 4x4 transformation matrix for matrix filters (length 16).
  final List<double>? matrix;

  /// Inner filter for compose operations (applied first).
  final StacImageFilter? inner;

  /// Outer filter for compose operations (applied second).
  final StacImageFilter? outer;

  /// Creates a [StacImageFilter] from a JSON map.
  factory StacImageFilter.fromJson(Map<String, dynamic> json) =>
      _$StacImageFilterFromJson(json);

  /// Converts this [StacImageFilter] instance to a JSON map.
  Map<String, dynamic> toJson() => _$StacImageFilterToJson(this);
}
