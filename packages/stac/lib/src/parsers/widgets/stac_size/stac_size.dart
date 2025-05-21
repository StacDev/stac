import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

part 'stac_size.freezed.dart';
part 'stac_size.g.dart';

@freezed
abstract class StacSize with _$StacSize {
  const factory StacSize({
    required StacDouble width,
    required StacDouble height,
  }) = _StacSize;

  factory StacSize.fromJson(Map<String, dynamic> json) =>
      _$StacSizeFromJson(json);
}

extension StacSizeParser on StacSize? {
  Size get parse {
    return Size(this?.width.parse ?? 0, this?.height.parse ?? 0);
  }
}
