import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_image_filter.freezed.dart';
part 'stac_image_filter.g.dart';

@freezed
abstract class StacImageFilter with _$StacImageFilter {
  const factory StacImageFilter({
    required String type,
    @Default(StacDouble(10.0)) StacDouble sigmaX,
    StacDouble? sigmaY,
    @Default(StacDouble(1.0)) StacDouble radiusX,
    StacDouble? radiusY,
    List<StacDouble>? matrix,
    StacImageFilter? inner,
    StacImageFilter? outer,
  }) = _StacImageFilter;

  factory StacImageFilter.fromJson(Map<String, dynamic> json) =>
      _$StacImageFilterFromJson(json);
}
