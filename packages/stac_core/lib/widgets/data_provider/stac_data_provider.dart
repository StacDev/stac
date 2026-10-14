import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/actions/network_request/stac_network_request.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_data_provider.g.dart';

/// A Stac widget that loads data with a network request and gives it to
/// its [child] as state.
///
/// The provider keeps a variable named [id] holding:
///
/// | Key | Value |
/// |-----|-------|
/// | `data` | The response body, or the part of it at [targetPath], from the last successful response |
/// | `isLoading` | `true` while a request is in flight |
/// | `status` | The status code of the last response |
/// | `error` | A short description of the last failure, or `null` |
///
/// Widgets inside the provider read it like any other variable, for
/// example `{{movies.data.length}}`. The request is sent when the provider
/// is first built, again when the request changes (including values its
/// placeholders read), and when a `refetch` action names [id]. `data` keeps
/// its previous value while a new request is in flight.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDataProvider(
///   id: 'movies',
///   request: StacNetworkRequest(
///     url: 'https://api.example.com/movies',
///     method: Method.get,
///   ),
///   targetPath: 'results',
///   loaderWidget: StacCircularProgressIndicator(),
///   child: StacListView(
///     items: '{{movies.data}}',
///     itemTemplate: StacListTile(
///       title: StacText(data: '{{\$item.title}}'),
///     ),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "dataProvider",
///   "id": "movies",
///   "request": { "url": "https://api.example.com/movies", "method": "get" },
///   "targetPath": "results",
///   "loaderWidget": { "type": "circularProgressIndicator" },
///   "child": {
///     "type": "listView",
///     "items": "{{movies.data}}",
///     "itemTemplate": {
///       "type": "listTile",
///       "title": { "type": "text", "data": "{{$item.title}}" }
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDataProvider extends StacWidget {
  /// Creates a [StacDataProvider] that loads [request] for [child].
  const StacDataProvider({
    required this.id,
    required this.request,
    this.targetPath,
    required this.child,
    this.loaderWidget,
    this.errorWidget,
  });

  /// The name of the variable holding the loaded data, and the name a
  /// `refetch` action uses.
  final String id;

  /// The request that loads the data.
  final StacNetworkRequest request;

  /// A path inside the response body to keep as `data`, such as
  /// `results` or `data.items`.
  final String? targetPath;

  /// The widget that reads the data.
  final StacWidget child;

  /// Shown instead of [child] until the first response arrives.
  final StacWidget? loaderWidget;

  /// Shown instead of [child] when the request fails and no data has
  /// loaded.
  final StacWidget? errorWidget;

  /// Widget type identifier.
  @override
  String get type => WidgetType.dataProvider.name;

  /// Creates a [StacDataProvider] from a JSON map.
  factory StacDataProvider.fromJson(Map<String, dynamic> json) =>
      _$StacDataProviderFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacDataProviderToJson(this);
}
