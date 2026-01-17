import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_to_box_adapter.g.dart';

/// A Stac model representing Flutter's [SliverToBoxAdapter] widget.
///
/// A sliver that contains a single box widget.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverToBoxAdapter(
///   child: StacText(data: 'Hello'),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverToBoxAdapter",
///   "child": {
///     "type": "text",
///     "data": "Hello"
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverToBoxAdapter documentation](https://api.flutter.dev/flutter/widgets/SliverToBoxAdapter-class.html)
@JsonSerializable()
class StacSliverToBoxAdapter extends StacWidget {
  /// Creates a [StacSliverToBoxAdapter].
  const StacSliverToBoxAdapter({this.child});

  /// The widget contained by this sliver.
  final StacWidget? child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverToBoxAdapter.name;

  /// Creates a [StacSliverToBoxAdapter] from a JSON map.
  factory StacSliverToBoxAdapter.fromJson(Map<String, dynamic> json) =>
      _$StacSliverToBoxAdapterFromJson(json);

  /// Converts this [StacSliverToBoxAdapter] instance to JSON.
  @override
  Map<String, dynamic> toJson() => _$StacSliverToBoxAdapterToJson(this);
}
