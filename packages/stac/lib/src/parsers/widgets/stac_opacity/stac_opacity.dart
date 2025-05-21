import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'package:stac/src/parsers/widgets/stac_opacity/stac_opacity_parser.dart';

part 'stac_opacity.freezed.dart';
part 'stac_opacity.g.dart';

@freezed
abstract class StacOpacity with _$StacOpacity {
  const factory StacOpacity({
    required StacDouble opacity,
    required Map<String, dynamic> child,
  }) = _StacOpacity;

  factory StacOpacity.fromJson(Map<String, dynamic> json) =>
      _$StacOpacityFromJson(json);
}
