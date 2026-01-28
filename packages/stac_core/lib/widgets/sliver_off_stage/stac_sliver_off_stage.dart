import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_sliver_off_stage.g.dart';

/// A Stac model representing Flutter's [SliverOffstage] widget.
///
/// Conditionally shows or hides a sliver without removing it from
/// the sliver tree.
///
/// When [offstage] is set to `true`, the sliver is not painted and does
/// not occupy any space in the scroll view, while still remaining part
/// of the widget tree. This is useful for toggling the visibility of
/// slivers without rebuilding the entire scroll view.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacSliverOffstage(
///   offstage: false,
///   sliver: StacSliverToBoxAdapter(
///     child: StacText(data: 'This sliver is visible'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "sliverOffstage",
///   "offstage": false,
///   "sliver": {
///     "type": "sliverToBoxAdapter",
///     "child": {
///       "type": "text",
///       "data": "This sliver is visible"
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [SliverOffstage documentation]
///    (https://api.flutter.dev/flutter/widgets/SliverOffstage-class.html)
@JsonSerializable()
class StacSliverOffstage extends StacWidget {
  /// Creates a [StacSliverOffstage] with the given properties.
  const StacSliverOffstage({this.offstage, this.sliver});

  /// Whether the sliver should be hidden.
  ///
  /// When set to `true`, the sliver is not painted and does not take up
  /// any space in the scroll view.
  ///
  /// Defaults to `true`.
  final bool? offstage;

  /// The sliver widget to conditionally hide or show.
  ///
  /// This must be a **sliver widget**, such as [StacSliverList],
  /// [StacSliverGrid], or [StacSliverToBoxAdapter].
  final StacWidget? sliver;

  /// Widget type identifier.
  @override
  String get type => WidgetType.sliverOffstage.name;

  /// Creates a [StacSliverOffstage] from a JSON map.
  factory StacSliverOffstage.fromJson(Map<String, dynamic> json) =>
      _$StacSliverOffstageFromJson(json);

  /// Converts this [StacSliverOffstage] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliverOffstageToJson(this);
}
