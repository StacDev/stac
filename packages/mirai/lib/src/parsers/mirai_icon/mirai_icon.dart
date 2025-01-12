import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mirai/src/utils/icon_utils.dart';

export 'package:mirai/src/parsers/mirai_icon/mirai_icon_parser.dart';

part 'mirai_icon.freezed.dart';
part 'mirai_icon.g.dart';

@freezed
class MiraiIcon with _$MiraiIcon {
  const factory MiraiIcon({
    required String icon,
    @Default(IconType.material) IconType iconType,
    double? size,
    String? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) = _MiraiIcon;

  factory MiraiIcon.fromJson(Map<String, dynamic> json) =>
      _$MiraiIconFromJson(json);
}
