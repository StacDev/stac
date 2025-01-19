import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/parsers/parsers.dart';

export 'package:mirai/src/parsers/mirai_fitted_box/mirai_fitted_box_parser.dart';

part 'mirai_fitted_box.freezed.dart';
part 'mirai_fitted_box.g.dart';

@freezed
class MiraiFittedBox with _$MiraiFittedBox {
  const factory MiraiFittedBox({
    @Default(BoxFit.contain) BoxFit fit,
    @Default(MiraiAlignmentDirectional.center)
    MiraiAlignmentDirectional alignment,
    @Default(Clip.none) Clip clipBehavior,
    Map<String, dynamic>? child,
  }) = _MiraiFittedBox;

  factory MiraiFittedBox.fromJson(Map<String, dynamic> json) =>
      _$MiraiFittedBoxFromJson(json);
}
