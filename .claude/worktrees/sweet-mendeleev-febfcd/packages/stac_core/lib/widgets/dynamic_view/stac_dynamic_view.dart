import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_dynamic_view.g.dart';

/// A Stac model for dynamically fetching data and rendering it using a template.
///
/// This widget makes a network request based on the [request] configuration.
/// The fetched data, potentially targeted by [targetPath], is then used to
/// render the [template].
/// The full response can be stored in the Stac context using [resultTarget].
/// It also supports custom widgets for [loaderWidget], [emptyTemplate] (if data is empty),
/// and [errorWidget] states.
///
/// ```dart
/// StacDynamicView(
///   request: StacNetworkRequest(url: 'https://api.example.com/data'),
///   template: StacText(data: 'Name: \${data.name}'), // Example: template uses data binding
///   targetPath: 'items', // Path to the list within the response
///   resultTarget: 'apiData', // Where to store the full response in context
///   loaderWidget: StacCircularProgressIndicator(),
///   emptyTemplate: StacText(data: 'No items found.'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "dynamicView",
///   "request": {
///     "url": "https://api.example.com/data",
///     "method": "GET"
///   },
///   "template": {
///     "type": "text",
///     "data": "Name: \${data.name}"
///   },
///   "targetPath": "items",
///   "resultTarget": "apiData",
///   "loaderWidget": {
///     "type": "circularProgressIndicator"
///   },
///   "emptyTemplate": {
///     "type": "text",
///     "data": "No items found."
///   }
/// }
/// ```
@JsonSerializable()
class StacDynamicView extends StacWidget {
  /// Creates a [StacDynamicView] with the given properties.
  const StacDynamicView({
    required this.request,
    this.template,
    this.targetPath,
    this.resultTarget,
    this.emptyTemplate,
    this.loaderWidget,
    this.errorWidget,
  });

  /// Configuration for the network request to fetch data.
  final StacNetworkRequest request;

  /// Path within the fetched JSON data to find the actual content to be rendered.
  final String? targetPath;

  /// The StacWidget template used to render the fetched data.
  final StacWidget? template;

  /// Path in the Stac context where the full JSON response will be stored.
  final String? resultTarget;

  /// Optional StacWidget to display if the fetched data is empty or null.
  final StacWidget? emptyTemplate;

  /// Optional StacWidget to display while the network request is in progress.
  final StacWidget? loaderWidget;

  /// Optional StacWidget to display if the network request fails.
  final StacWidget? errorWidget;

  /// Widget type identifier.
  @override
  String get type => WidgetType.dynamicView.name;

  /// Creates a [StacDynamicView] from a JSON map.
  factory StacDynamicView.fromJson(Map<String, dynamic> json) =>
      _$StacDynamicViewFromJson(json);

  /// Converts this [StacDynamicView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDynamicViewToJson(this);
}
