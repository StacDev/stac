import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/icon_utils.dart';

export 'package:stac/src/parsers/stac_icon/stac_icon_parser.dart';

part 'stac_icon.freezed.dart';
part 'stac_icon.g.dart';

@freezed
class StacIcon with _$StacIcon {
  const factory StacIcon({
    required String icon,
    @Default(IconType.material) IconType iconType,
    double? size,
    String? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) = _StacIcon;

  factory StacIcon.fromJson(Map<String, dynamic> json) =>
      _$StacIconFromJson(json);
}
