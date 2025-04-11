import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_default_tab_controller/stac_default_tab_controller_parser.dart';

part 'stac_default_tab_controller.freezed.dart';
part 'stac_default_tab_controller.g.dart';

@freezed
abstract class StacDefaultTabController with _$StacDefaultTabController {
  const factory StacDefaultTabController({
    required int length,
    @Default(0) int initialIndex,
    required Map<String, dynamic> child,
  }) = _StacDefaultTabController;

  factory StacDefaultTabController.fromJson(Map<String, dynamic> json) =>
      _$StacDefaultTabControllerFromJson(json);
}
