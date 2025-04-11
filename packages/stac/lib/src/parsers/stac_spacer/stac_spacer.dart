import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:stac/src/parsers/stac_spacer/stac_spacer_parser.dart';

part 'stac_spacer.freezed.dart';
part 'stac_spacer.g.dart';

@freezed
abstract class StacSpacer with _$StacSpacer {
  const factory StacSpacer({
    @Default(1) int flex,
  }) = _StacSpacer;

  factory StacSpacer.fromJson(Map<String, dynamic> json) =>
      _$StacSpacerFromJson(json);
}
