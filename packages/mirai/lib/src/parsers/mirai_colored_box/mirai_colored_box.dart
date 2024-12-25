import 'package:freezed_annotation/freezed_annotation.dart';

export 'mirai_colored_box_parser.dart';

part 'mirai_colored_box.freezed.dart';
part 'mirai_colored_box.g.dart';

@freezed
class MiraiColoredBox with _$MiraiColoredBox {
  const factory MiraiColoredBox({
    required String color,
    Map<String, dynamic>? child,
  }) = _MiraiColoredBox;

  factory MiraiColoredBox.fromJson(Map<String, dynamic> json) =>
      _$MiraiColoredBoxFromJson(json);
}
