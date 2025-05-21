import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'stac_center_parser.dart';

part 'stac_center.freezed.dart';
part 'stac_center.g.dart';

@freezed
abstract class StacCenter with _$StacCenter {
  const factory StacCenter({
    StacDouble? widthFactor,
    StacDouble? heightFactor,
    Map<String, dynamic>? child,
  }) = _StacCenter;

  factory StacCenter.fromJson(Map<String, dynamic> json) =>
      _$StacCenterFromJson(json);
}
