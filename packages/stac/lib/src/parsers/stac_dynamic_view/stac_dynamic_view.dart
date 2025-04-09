import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/action_parsers/stac_network_request/stac_network_request.dart';

export 'stac_dynamic_view_parser.dart';

part 'stac_dynamic_view.freezed.dart';
part 'stac_dynamic_view.g.dart';

/// A model class for the StacDynamicView parser.
/// This parser fetches data dynamically and renders it using a template.
@freezed
class StacDynamicView with _$StacDynamicView {
  const factory StacDynamicView({
    required StacNetworkRequest request,
    @Default('') String targetPath,
    required Map<String, dynamic> template,
  }) = _StacDynamicView;

  factory StacDynamicView.fromJson(Map<String, dynamic> json) =>
      _$StacDynamicViewFromJson(json);
}
