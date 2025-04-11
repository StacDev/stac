import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_placeholder/stac_placeholder_parser.dart';

part 'stac_placeholder.freezed.dart';
part 'stac_placeholder.g.dart';

@freezed
abstract class StacPlaceholder with _$StacPlaceholder {
  const factory StacPlaceholder({
    @Default(2.0) double fallbackWidth,
    @Default(400.0) double fallbackHeight,
    @Default(400.0) double strokeWidth,
    @Default('#455A64') String color,
    Map<String, dynamic>? child,
  }) = _StacPlaceholder;

  factory StacPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$StacPlaceholderFromJson(json);
}
