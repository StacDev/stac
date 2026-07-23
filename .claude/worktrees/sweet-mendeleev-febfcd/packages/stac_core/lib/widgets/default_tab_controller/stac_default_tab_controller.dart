import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_default_tab_controller.g.dart';

/// A Stac model representing Flutter's [DefaultTabController] widget.
///
/// Provides a default [TabController] to descendant widgets, used with
/// [TabBar] and [TabBarView] to coordinate tab selection.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDefaultTabController(
///   length: 3,
///   initialIndex: 1,
///   child: StacTabBarView(children: [/* ... */]),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "defaultTabController",
///   "length": 3,
///   "initialIndex": 1,
///   "child": { "type": "tabBarView", "children": [] }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's DefaultTabController documentation (`https://api.flutter.dev/flutter/material/DefaultTabController-class.html`)
@JsonSerializable()
class StacDefaultTabController extends StacWidget {
  /// Creates a [StacDefaultTabController].
  const StacDefaultTabController({
    required this.length,
    this.initialIndex,
    this.animationDuration,
    required this.child,
  });

  /// The number of tabs.
  final int length;

  /// The initial index of the selected tab.
  final int? initialIndex;

  /// The duration of the tab change animation.
  final StacDuration? animationDuration;

  /// The subtree that has access to the provided [TabController].
  final StacWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultTabController.name;

  /// Creates a [StacDefaultTabController] from a JSON map.
  factory StacDefaultTabController.fromJson(Map<String, dynamic> json) =>
      _$StacDefaultTabControllerFromJson(json);

  /// Converts this [StacDefaultTabController] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacDefaultTabControllerToJson(this);
}
