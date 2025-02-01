import 'package:freezed_annotation/freezed_annotation.dart';

export 'stac_bottom_navigation_view_parser.dart';

part 'stac_bottom_navigation_view.freezed.dart';
part 'stac_bottom_navigation_view.g.dart';

@freezed
class StacBottomNavigationView with _$StacBottomNavigationView {
  const factory StacBottomNavigationView({
    @Default([]) List<Map<String, dynamic>> children,
  }) = _StacBottomNavigationView;

  factory StacBottomNavigationView.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationViewFromJson(json);
}
