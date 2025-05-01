import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_default_bottom_navigation_controller_parser.dart';

part 'stac_default_bottom_navigation_controller.freezed.dart';
part 'stac_default_bottom_navigation_controller.g.dart';

@freezed
abstract class StacDefaultBottomNavigationController
    with _$StacDefaultBottomNavigationController {
  const factory StacDefaultBottomNavigationController({
    required int length,
    int? initialIndex,
    required Map<String, dynamic> child,
  }) = _StacDefaultBottomNavigationController;

  factory StacDefaultBottomNavigationController.fromJson(
          Map<String, dynamic> json) =>
      _$StacDefaultBottomNavigationControllerFromJson(json);
}
