import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_lifecycle.g.dart';

/// A Stac widget that runs actions when it appears and when it goes away.
///
/// [onLoad] runs once, after the first frame that shows [child]. It is the
/// place to load data into state when a screen opens. [onDispose] runs after
/// the widget has left the tree, which suits state updates such as
/// `setValue`.
///
/// ```dart
/// StacLifecycle(
///   onLoad: StacNetworkRequest(url: 'https://api.example.com/posts', ...),
///   child: StacText(data: 'Posts'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "lifecycle",
///   "onLoad": {"actionType": "networkRequest", "url": "..."},
///   "child": {"type": "text", "data": "Posts"}
/// }
/// ```
@JsonSerializable()
class StacLifecycle extends StacWidget {
  /// Creates a [StacLifecycle] around [child].
  const StacLifecycle({this.onLoad, this.onDispose, this.child});

  /// The action run once, after the first frame that shows [child].
  final StacAction? onLoad;

  /// The action run after the widget has left the tree.
  final StacAction? onDispose;

  /// The widget to show.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.lifecycle.name;

  /// Creates a [StacLifecycle] from a JSON map.
  factory StacLifecycle.fromJson(Map<String, dynamic> json) =>
      _$StacLifecycleFromJson(json);

  /// Converts this [StacLifecycle] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacLifecycleToJson(this);
}
