import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_clip_oval_parser.dart';

part 'stac_clip_oval.freezed.dart';
part 'stac_clip_oval.g.dart';

@freezed
abstract class StacClipOval with _$StacClipOval {
  const factory StacClipOval({
    @Default(Clip.antiAlias) Clip clipBehavior,
    Map<String, dynamic>? child,
  }) = _StacClipOval;

  factory StacClipOval.fromJson(Map<String, dynamic> json) =>
      _$StacClipOvalFromJson(json);
}
