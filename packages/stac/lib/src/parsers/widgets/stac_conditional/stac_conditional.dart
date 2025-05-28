import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac_framework/stac_framework.dart';

export 'stac_conditional_parser.dart';

part 'stac_conditional.freezed.dart';
part 'stac_conditional.g.dart';

@freezed
abstract class StacConditional with _$StacConditional {
  const factory StacConditional({
    required String condition,
    required StacWidget ifTrue,
    StacWidget? ifFalse,
  }) = _StacConditional;

  factory StacConditional.fromJson(Map<String, dynamic> json) =>
      _$StacConditionalFromJson(json);
}
