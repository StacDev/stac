import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/widgets/stac_limited_box/stac_limited_box_parser.dart';

part 'stac_limited_box.freezed.dart';
part 'stac_limited_box.g.dart';

@freezed
abstract class StacLimitedBox with _$StacLimitedBox {
  const factory StacLimitedBox({
    @Default(double.infinity) double maxHeight,
    @Default(double.infinity) double maxWidth,
    Map<String, dynamic>? child,
  }) = _StacLimitedBox;

  factory StacLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$StacLimitedBoxFromJson(json);
}
