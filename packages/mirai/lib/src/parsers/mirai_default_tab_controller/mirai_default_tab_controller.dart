import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:mirai/src/parsers/mirai_default_tab_controller/mirai_default_tab_controller_parser.dart';

part 'mirai_default_tab_controller.freezed.dart';
part 'mirai_default_tab_controller.g.dart';

@freezed
class MiraiDefaultTabController with _$MiraiDefaultTabController {
  const factory MiraiDefaultTabController({
    required int length,
    @Default(0) int initialIndex,
    required Map<String, dynamic> child,
  }) = _MiraiDefaultTabController;

  factory MiraiDefaultTabController.fromJson(Map<String, dynamic> json) =>
      _$MiraiDefaultTabControllerFromJson(json);
}
