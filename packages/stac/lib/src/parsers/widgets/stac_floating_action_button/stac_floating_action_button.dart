import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';
import 'package:stac/src/utils/button_utils.dart';

export 'stac_floating_action_button_parser.dart';

part 'stac_floating_action_button.freezed.dart';
part 'stac_floating_action_button.g.dart';

@freezed
abstract class StacFloatingActionButton with _$StacFloatingActionButton {
  const factory StacFloatingActionButton({
    Map<String, dynamic>? onPressed,
    StacTextStyle? textStyle,
    @Default(FloatingActionButtonType.small)
    FloatingActionButtonType buttonType,
    @Default(false) bool autofocus,
    Map<String, dynamic>? icon,
    String? backgroundColor,
    String? foregroundColor,
    String? focusColor,
    String? hoverColor,
    String? splashColor,
    StacTextStyle? extendedTextStyle,
    StacDouble? elevation,
    StacDouble? focusElevation,
    StacDouble? hoverElevation,
    StacDouble? disabledElevation,
    StacDouble? highlightElevation,
    StacDouble? extendedIconLabelSpacing,
    bool? enableFeedback,
    String? tooltip,
    Object? heroTag,
    required Map<String, dynamic> child,
  }) = _StacFloatingActionButton;

  factory StacFloatingActionButton.fromJson(Map<String, dynamic> json) =>
      _$StacFloatingActionButtonFromJson(json);
}
