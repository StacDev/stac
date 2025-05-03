import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/parsers.dart';

export 'stac_clip_rrect_parser.dart';

part 'stac_clip_rrect.freezed.dart';
part 'stac_clip_rrect.g.dart';

@freezed
abstract class StacClipRRect with _$StacClipRRect {
  const factory StacClipRRect({
    @Default(StacBorderRadius()) StacBorderRadius borderRadius,
    @Default(Clip.antiAlias) Clip clipBehavior,
    Map<String, dynamic>? child,
  }) = _StacClipRRect;

  factory StacClipRRect.fromJson(Map<String, dynamic> json) =>
      _$StacClipRRectFromJson(json);
}
