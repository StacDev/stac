import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_size.freezed.dart';
part 'stac_size.g.dart';

@freezed
class StacSize with _$StacSize {
  const factory StacSize({
    required double width,
    required double height,
  }) = _StacSize;

  factory StacSize.fromJson(Map<String, dynamic> json) =>
      _$StacSizeFromJson(json);
}

extension StacSizeParser on StacSize? {
  Size get parse {
    return Size(this?.width ?? 0, this?.height ?? 0);
  }
}
