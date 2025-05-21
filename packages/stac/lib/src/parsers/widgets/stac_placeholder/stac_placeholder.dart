import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';

export 'package:stac/src/parsers/widgets/stac_placeholder/stac_placeholder_parser.dart';

part 'stac_placeholder.freezed.dart';
part 'stac_placeholder.g.dart';

@freezed
abstract class StacPlaceholder with _$StacPlaceholder {
  const factory StacPlaceholder({
    @Default(StacDouble(2.0)) StacDouble fallbackWidth,
    @Default(StacDouble(400.0)) StacDouble fallbackHeight,
    @Default(StacDouble(400.0)) StacDouble strokeWidth,
    @Default('#455A64') String color,
    Map<String, dynamic>? child,
  }) = _StacPlaceholder;

  factory StacPlaceholder.fromJson(Map<String, dynamic> json) =>
      _$StacPlaceholderFromJson(json);
}
