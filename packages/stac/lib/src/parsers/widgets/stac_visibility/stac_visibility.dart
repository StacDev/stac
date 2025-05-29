import 'package:freezed_annotation/freezed_annotation.dart';

part 'stac_visibility.freezed.dart';
part 'stac_visibility.g.dart';

@freezed
abstract class StacVisibility with _$StacVisibility {
  const factory StacVisibility({
    required Map<String, dynamic> child,
    bool? visible,
    bool? maintainState,
    bool? maintainAnimation,
    bool? maintainSize,
    bool? maintainSemantics,
    bool? maintainInteractivity,
    Map<String, dynamic>? replacement,
  }) = _StacVisibility;

  factory StacVisibility.fromJson(Map<String, dynamic> json) =>
      _$StacVisibilityFromJson(json);
}
