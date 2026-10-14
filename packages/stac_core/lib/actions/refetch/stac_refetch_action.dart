import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/foundation/specifications/action_type.dart';

part 'stac_refetch_action.g.dart';

/// Sends the request of the `dataProvider` named [id] again.
///
/// The providers that enclose the action are refreshed first. When none of
/// them is named [id], the ones on the same screen are, and otherwise every
/// provider named [id] that is showing. The action completes when the new
/// responses have arrived, so a `refreshIndicator` keeps spinning until
/// then.
///
/// Dart example:
/// ```dart
/// StacRefreshIndicator(
///   onRefresh: StacRefetchAction(id: 'movies'),
///   child: StacListView(items: '{{movies.data}}', itemTemplate: movieTile),
/// )
/// ```
///
/// JSON example:
/// ```json
/// { "actionType": "refetch", "id": "movies" }
/// ```
@JsonSerializable()
class StacRefetchAction extends StacAction {
  /// Creates a [StacRefetchAction] for the provider named [id].
  const StacRefetchAction({required this.id});

  /// The `id` of the data provider to refresh.
  final String id;

  /// Action type identifier.
  @override
  String get actionType => ActionType.refetch.name;

  /// Creates a [StacRefetchAction] from JSON.
  factory StacRefetchAction.fromJson(Map<String, dynamic> json) =>
      _$StacRefetchActionFromJson(json);

  /// Converts this action to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacRefetchActionToJson(this);
}
