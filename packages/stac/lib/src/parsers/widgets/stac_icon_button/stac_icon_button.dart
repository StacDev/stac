import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/theme/stac_button_style/stac_button_style.dart';
import 'package:stac/src/parsers/widgets/stac_alignment/stac_alignment.dart';
import 'package:stac/src/parsers/widgets/stac_box_constraints/stac_box_constraints.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_icon_button_parser.dart';

part 'stac_icon_button.freezed.dart';
part 'stac_icon_button.g.dart';

@freezed
abstract class StacIconButton with _$StacIconButton {
  const factory StacIconButton({
    double? iconSize,
    StacEdgeInsets? padding,
    StacAlignment? alignment,
    double? splashRadius,
    String? color,
    String? focusColor,
    String? hoverColor,
    String? highlightColor,
    String? splashColor,
    String? disabledColor,
    Map<String, dynamic>? onPressed,
    @Default(false) bool autofocus,
    String? tooltip,
    bool? enableFeedback,
    StacBoxConstraints? constraints,
    StacButtonStyle? style,
    bool? isSelected,
    Map<String, dynamic>? selectedIcon,
    Map<String, dynamic>? icon,
  }) = _StacIconButton;

  factory StacIconButton.fromJson(Map<String, dynamic> json) =>
      _$StacIconButtonFromJson(json);
}
