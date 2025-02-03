import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_sized_box/stac_sized_box_parser.dart';

part 'stac_sized_box.freezed.dart';
part 'stac_sized_box.g.dart';

@freezed
class StacSizedBox with _$StacSizedBox {
  const factory StacSizedBox({
    double? width,
    double? height,
    Map<String, dynamic>? child,
  }) = _StacSizedBox;

  factory StacSizedBox.fromJson(Map<String, dynamic> json) =>
      _$StacSizedBoxFromJson(json);
}
