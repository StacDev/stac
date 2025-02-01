import 'package:flutter/gestures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/button_utils.dart';

export 'package:stac/src/parsers/stac_scaffold/stac_scaffold_parser.dart';

part 'stac_scaffold.freezed.dart';
part 'stac_scaffold.g.dart';

@freezed
class StacScaffold with _$StacScaffold {
  const factory StacScaffold({
    Map<String, dynamic>? appBar,
    Map<String, dynamic>? body,
    Map<String, dynamic>? floatingActionButton,
    StacFloatingActionButtonLocation? floatingActionButtonLocation,
    List<Map<String, dynamic>>? persistentFooterButtons,
    Map<String, dynamic>? drawer,
    Map<String, dynamic>? endDrawer,
    Map<String, dynamic>? bottomNavigationBar,
    Map<String, dynamic>? bottomSheet,
    String? backgroundColor,
    bool? resizeToAvoidBottomInset,
    @Default(true) bool primary,
    @Default(DragStartBehavior.start) DragStartBehavior drawerDragStartBehavior,
    @Default(false) bool extendBody,
    @Default(false) bool extendBodyBehindAppBar,
    String? drawerScrimColor,
    double? drawerEdgeDragWidth,
    @Default(true) bool drawerEnableOpenDragGesture,
    @Default(true) bool endDrawerEnableOpenDragGesture,
    String? restorationId,
  }) = _StacScaffold;

  factory StacScaffold.fromJson(Map<String, dynamic> json) =>
      _$StacScaffoldFromJson(json);
}
