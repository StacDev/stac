import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_safe_area_parser.dart';

part 'stac_safe_area.freezed.dart';
part 'stac_safe_area.g.dart';

@freezed
abstract class StacSafeArea with _$StacSafeArea {
  const factory StacSafeArea({
    Map<String, dynamic>? child,
    @Default(true) bool left,
    @Default(true) bool top,
    @Default(true) bool right,
    @Default(true) bool bottom,
    @Default(StacEdgeInsets()) StacEdgeInsets minimum,
    @Default(false) bool maintainBottomViewPadding,
  }) = _StacSafeArea;

  factory StacSafeArea.fromJson(Map<String, dynamic> json) =>
      _$StacSafeAreaFromJson(json);
}
