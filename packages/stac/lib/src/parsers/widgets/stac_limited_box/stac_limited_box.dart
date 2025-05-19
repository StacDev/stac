import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'package:stac/src/parsers/widgets/stac_limited_box/stac_limited_box_parser.dart';

part 'stac_limited_box.freezed.dart';
part 'stac_limited_box.g.dart';

@freezed
abstract class StacLimitedBox with _$StacLimitedBox {
  const factory StacLimitedBox({
    @Default(StacDouble.infinity) StacDouble maxHeight,
    @Default(StacDouble.infinity) StacDouble maxWidth,
    Map<String, dynamic>? child,
  }) = _StacLimitedBox;

  factory StacLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$StacLimitedBoxFromJson(json);
}
