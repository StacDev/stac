import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_image_filter/stac_image_filter.dart';

export 'stac_backdrop_filter_parser.dart';

part 'stac_backdrop_filter.freezed.dart';
part 'stac_backdrop_filter.g.dart';

@freezed
abstract class StacBackdropFilter with _$StacBackdropFilter {
  const factory StacBackdropFilter({
    required StacImageFilter filter,
    Map<String, dynamic>? child,
    @Default(true) bool enabled,
  }) = _StacBackdropFilter;

  factory StacBackdropFilter.fromJson(Map<String, dynamic> json) =>
      _$StacBackdropFilterFromJson(json);
}
