import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'package:stac/src/parsers/widgets/stac_sized_box/stac_sized_box_parser.dart';

part 'stac_sized_box.freezed.dart';
part 'stac_sized_box.g.dart';

@freezed
abstract class StacSizedBox with _$StacSizedBox {
  const factory StacSizedBox({
    StacDouble? width,
    StacDouble? height,
    Map<String, dynamic>? child,
  }) = _StacSizedBox;

  factory StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);
}
