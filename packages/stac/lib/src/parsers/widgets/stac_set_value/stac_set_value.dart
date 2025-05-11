import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac_framework/stac_framework.dart';

part 'stac_set_value.freezed.dart';
part 'stac_set_value.g.dart';

@freezed
abstract class StacSetValue with _$StacSetValue {
  const factory StacSetValue({
    @Default([]) List<Map<String, dynamic>> values,
    StacWidget? child,
  }) = _StacSetValue;

  factory StacSetValue.fromJson(Map<String, dynamic> json) =>
      _$StacSetValueFromJson(json);
}
