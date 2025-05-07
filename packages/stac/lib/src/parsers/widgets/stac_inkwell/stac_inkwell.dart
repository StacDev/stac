import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_inkwell.freezed.dart';
part 'stac_inkwell.g.dart';

@freezed
abstract class StacInkWell with _$StacInkWell {
  const factory StacInkWell({
    required Map<String, dynamic>? onTap,
    required Map<String, dynamic>? child,
  }) = _StacInkWell;

  factory StacInkWell.fromJson(Map<String, dynamic> json) =>
      _$StacInkWellFromJson(json);
}
