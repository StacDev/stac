import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/mirai_material_color/mirai_material_color.dart';

export 'package:mirai/src/parsers/mirai_check_box/mirai_check_box_parser.dart';

part 'mirai_check_box.freezed.dart';
part 'mirai_check_box.g.dart';

@freezed
class MiraiCheckBox with _$MiraiCheckBox {
  const factory MiraiCheckBox({
    String? id,
    bool? value,
    String? activeColor,
    MiraiMaterialColor? fillColor,
    String? checkColor,
    @Default(false) bool tristate,
    String? focusColor,
    String? hoverColor,
    MiraiMaterialColor? overlayColor,
    double? splashRadius,
    @Default(false) bool autofocus,
    @Default(false) bool isError,
  }) = _MiraiCheckBoxWidget;

  factory MiraiCheckBox.fromJson(Map<String, dynamic> json) =>
      _$MiraiCheckBoxFromJson(json);
}
