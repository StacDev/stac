import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/utils/input_formatters.dart';

part 'stac_input_formatter.freezed.dart';
part 'stac_input_formatter.g.dart';

@freezed
abstract class StacInputFormatter with _$StacInputFormatter {
  const factory StacInputFormatter({
    required InputFormatterType type,
    String? rule,
  }) = _StacInputFormatter;

  factory StacInputFormatter.fromJson(Map<String, dynamic> json) =>
      _$StacInputFormatterFromJson(json);
}
