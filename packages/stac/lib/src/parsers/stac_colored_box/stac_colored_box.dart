import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_colored_box_parser.dart';

part 'stac_colored_box.freezed.dart';
part 'stac_colored_box.g.dart';

@freezed
abstract class StacColoredBox with _$StacColoredBox {
  const factory StacColoredBox({
    required String color,
    Map<String, dynamic>? child,
  }) = _StacColoredBox;

  factory StacColoredBox.fromJson(Map<String, dynamic> json) =>
      _$StacColoredBoxFromJson(json);
}
