import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/parsers/widgets/stac_double/stac_double.dart';
import 'package:stac/src/parsers/widgets/stac_edge_insets/stac_edge_insets.dart';

export 'stac_tab_parser.dart';

part 'stac_tab.freezed.dart';
part 'stac_tab.g.dart';

@freezed
abstract class StacTab with _$StacTab {
  const factory StacTab({
    String? text,
    Map<String, dynamic>? icon,
    StacEdgeInsets? iconMargin,
    StacDouble? height,
    Map<String, dynamic>? child,
  }) = _StacTab;

  factory StacTab.fromJson(Map<String, dynamic> json) =>
      _$StacTabFromJson(json);
}
