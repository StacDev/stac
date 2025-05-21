import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/stac.dart';

export 'stac_fractionally_sized_box_parser.dart';

part 'stac_fractionally_sized_box.freezed.dart';
part 'stac_fractionally_sized_box.g.dart';

@freezed
abstract class StacFractionallySizedBox with _$StacFractionallySizedBox {
  const factory StacFractionallySizedBox({
    StacAlignment? alignment,
    StacDouble? widthFactor,
    StacDouble? heightFactor,
    Map<String, dynamic>? child,
  }) = _StacFractionallySizedBox;

  factory StacFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacFractionallySizedBoxFromJson(json);
}
