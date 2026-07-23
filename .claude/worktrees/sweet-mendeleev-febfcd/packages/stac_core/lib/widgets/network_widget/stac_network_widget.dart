import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_network_widget.g.dart';

/// A Stac model representing a network-driven widget.
///
/// This widget triggers a [StacNetworkRequest] to fetch a Stac UI JSON from a
/// URL and renders it. Optionally, you can provide custom loading and error
/// widgets to display during the network request lifecycle.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacNetworkWidget(
///   request: StacNetworkRequest(
///     url: 'https://example.com/data',
///     method: 'get',
///   ),
///   loadingWidget: StacCenter(
///     child: StacCircularProgressIndicator(),
///   ),
///   errorWidget: StacCenter(
///     child: StacText(data: 'Failed to load'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "networkWidget",
///   "request": {
///     "actionType": "networkRequest",
///     "url": "https://example.com/data",
///     "method": "get"
///   },
///   "loadingWidget": {
///     "type": "center",
///     "child": {
///       "type": "circularProgressIndicator"
///     }
///   },
///   "errorWidget": {
///     "type": "center",
///     "child": {
///       "type": "text",
///       "data": "Failed to load"
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacNetworkWidget extends StacWidget {
  /// Creates a [StacNetworkWidget].
  ///
  /// The [request] parameter is required and defines the network request
  /// to execute. The [loadingWidget] and [errorWidget] parameters are
  /// optional and allow you to customize the loading and error states.
  const StacNetworkWidget({
    required this.request,
    this.loadingWidget,
    this.errorWidget,
  });

  /// The network request to execute.
  ///
  /// This defines the URL, method, headers, and body for the network request.
  final StacNetworkRequest request;

  /// Optional widget to display while the network request is in progress.
  ///
  /// If not provided, a default loading indicator is shown.
  final StacWidget? loadingWidget;

  /// Optional widget to display when the network request fails.
  ///
  /// If not provided, an empty [SizedBox] is shown on error.
  final StacWidget? errorWidget;

  /// Widget type identifier.
  @override
  String get type => WidgetType.networkWidget.name;

  /// Creates a [StacNetworkWidget] from a JSON map.
  factory StacNetworkWidget.fromJson(Map<String, dynamic> json) =>
      _$StacNetworkWidgetFromJson(json);

  /// Converts this [StacNetworkWidget] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNetworkWidgetToJson(this);
}
