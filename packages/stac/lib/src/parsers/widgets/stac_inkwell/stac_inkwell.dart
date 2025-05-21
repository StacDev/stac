import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_mouse_cursor/stac_mouse_cursor.dart';
import 'package:stac/stac.dart';

part 'stac_inkwell.freezed.dart';
part 'stac_inkwell.g.dart';

@freezed
abstract class StacInkWell with _$StacInkWell {
  const factory StacInkWell({
    Map<String, dynamic>? child,
    Map<String, dynamic>? onTap,
    Map<String, dynamic>? onDoubleTap,
    Map<String, dynamic>? onLongPress,
    Map<String, dynamic>? onTapDown,
    Map<String, dynamic>? onTapUp,
    Map<String, dynamic>? onTapCancel,
    Map<String, dynamic>? onSecondaryTap,
    Map<String, dynamic>? onSecondaryTapUp,
    Map<String, dynamic>? onSecondaryTapDown,
    Map<String, dynamic>? onSecondaryTapCancel,
    Map<String, dynamic>? onHighlightChanged,
    Map<String, dynamic>? onHover,
    StacMouseCursor? mouseCursor,
    String? focusColor,
    String? hoverColor,
    String? highlightColor,
    String? overlayColor,
    String? splashColor,
    Map<String, dynamic>? splashFactory,
    StacDouble? radius,
    StacBorderRadius? borderRadius,
    StacBorder? customBorder,
    @Default(true) bool enableFeedback,
    @Default(false) bool excludeFromSemantics,
    Map<String, dynamic>? focusNode,
    @Default(true) bool canRequestFocus,
    Map<String, dynamic>? onFocusChange,
    @Default(false) bool autofocus,
    Map<String, dynamic>? statesController,
    StacDuration? hoverDuration,
  }) = _StacInkWell;

  factory StacInkWell.fromJson(Map<String, dynamic> json) =>
      _$StacInkWellFromJson(json);
}
