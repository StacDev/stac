import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/stac.dart';

export 'package:stac/src/parsers/stac_fractionally_sized_box/stac_fractionally_sized_box_parser.dart';

part 'stac_fractionally_sized_box.freezed.dart';
part 'stac_fractionally_sized_box.g.dart';

@freezed
class StacFractionallySizedBox with _$StacFractionallySizedBox {
  const factory StacFractionallySizedBox({
    StacAlignment? alignment,
    double? widthFactor,
    double? heightFactor,
    Map<String, dynamic>? child,
  }) = _StacFractionallySizedBox;

  factory StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFractionallySizedBoxFromJson(json);
}
