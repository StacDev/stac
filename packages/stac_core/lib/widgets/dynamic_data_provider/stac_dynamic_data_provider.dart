import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_dynamic_data_provider.g.dart';

/// A Stac model that fetches data from a network request and exposes it
/// to its subtree via an InheritedWidget scope.
///
/// Unlike [StacDynamicView], this widget separates data fetching from
/// template rendering. Child widgets can access the fetched data using
/// [TemplateBuilder] or `{{id.path}}` placeholder syntax.
///
/// ```dart
/// StacDynamicDataProvider(
///   id: 'moviesData',
///   request: StacNetworkRequest(url: 'https://api.example.com/movies'),
///   targetPath: 'data',
///   loaderWidget: StacCircularProgressIndicator(),
///   child: StacColumn(children: [
///     StacText(data: 'Total: {{moviesData.totalResults}}'),
///     StacTemplateBuilder(
///       providerId: 'moviesData',
///       dataPath: 'results',
///       itemTemplate: StacText(data: '{{title}}'),
///       child: StacListView(),
///     ),
///   ]),
/// )
/// ```
///
/// ```json
/// {
///   "type": "dynamicDataProvider",
///   "id": "moviesData",
///   "request": {
///     "url": "https://api.example.com/movies",
///     "method": "GET"
///   },
///   "targetPath": "data",
///   "loaderWidget": {
///     "type": "circularProgressIndicator"
///   },
///   "child": {
///     "type": "column",
///     "children": []
///   }
/// }
/// ```
@JsonSerializable()
class StacDynamicDataProvider extends StacWidget {
  /// Creates a [StacDynamicDataProvider] with the given properties.
  const StacDynamicDataProvider({
    required this.id,
    required this.request,
    required this.child,
    this.targetPath,
    this.loaderWidget,
    this.errorWidget,
  });

  /// Unique identifier used by descendant widgets to reference this
  /// provider's data (e.g. via `{{id.path}}` or TemplateBuilder's providerId).
  final String id;

  /// Configuration for the network request to fetch data.
  final StacNetworkRequest request;

  /// Path within the fetched JSON data to extract before exposing to children.
  final String? targetPath;

  /// The subtree that can access the fetched data.
  final StacWidget child;

  /// Optional widget to display while the network request is in progress.
  final StacWidget? loaderWidget;

  /// Optional widget to display if the network request fails.
  final StacWidget? errorWidget;

  @override
  String get type => WidgetType.dynamicDataProvider.name;

  /// Creates a [StacDynamicDataProvider] from a JSON map.
  factory StacDynamicDataProvider.fromJson(Map<String, dynamic> json) =>
      _$StacDynamicDataProviderFromJson(json);

  /// Converts this [StacDynamicDataProvider] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDynamicDataProviderToJson(this);
}
