import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_text_style/stac_text_style.dart';

export 'stac_app_bar_parser.dart';

part 'stac_app_bar.freezed.dart';
part 'stac_app_bar.g.dart';

@freezed
abstract class StacAppBar with _$StacAppBar {
  const factory StacAppBar({
    Map<String, dynamic>? leading,
    Map<String, dynamic>? title,
    StacTextStyle? titleTextStyle,
    StacTextStyle? toolbarTextStyle,
    String? shadowColor,
    String? backgroundColor,
    String? foregroundColor,
    String? surfaceTintColor,
    @Default([]) List<Map<String, dynamic>> actions,
    Map<String, dynamic>? bottom,
    double? titleSpacing,
    @Default(1.0) double toolbarOpacity,
    @Default(1.0) double bottomOpacity,
    double? toolbarHeight,
    double? leadingWidth,
    @Default(true) bool primary,
    bool? centerTitle,
    double? elevation,
    double? scrolledUnderElevation,
  }) = _StacAppBar;

  factory StacAppBar.fromJson(Map<String, dynamic> json) =>
      _$StacAppBarFromJson(json);
}
