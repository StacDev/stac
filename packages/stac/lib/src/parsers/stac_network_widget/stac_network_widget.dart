import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stac/src/action_parsers/stac_network_request/stac_network_request.dart';

export 'stac_network_widget_parser.dart';

part 'stac_network_widget.freezed.dart';
part 'stac_network_widget.g.dart';

@freezed
class StacNetworkWidget with _$StacNetworkWidget {
  const factory StacNetworkWidget({
    required StacNetworkRequest request,
  }) = _StacNetworkWidget;

  factory StacNetworkWidget.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkWidgetFromJson(json);
}
