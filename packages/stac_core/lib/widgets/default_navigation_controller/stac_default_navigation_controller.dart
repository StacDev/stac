import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_default_navigation_controller.g.dart';

/// A Stac widget that provides a controller for managing navigation state
/// (current selected index) and exposes a `NavigationScope` to descendants.
///
/// This is the generic replacement for [StacDefaultBottomNavigationController]
/// and works with any navigation widget — `bottomNavigationBar`,
/// `navigationBar`, etc. — combined with [StacNavigationView] for the body.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDefaultNavigationController(
///   length: 3,
///   initialIndex: 0,
///   child: StacScaffold(
///     appBar: StacAppBar(title: StacText('Navigation')),
///     body: StacNavigationView(
///       children: const [
///         StacCenter(child: StacText('Home')),
///         StacCenter(child: StacText('Search')),
///         StacCenter(child: StacText('Profile')),
///       ],
///     ),
///     bottomNavigationBar: StacNavigationBar(
///       destinations: [
///         StacNavigationDestination(icon: StacIcon(icon: 'home'), label: 'Home'),
///         StacNavigationDestination(icon: StacIcon(icon: 'search'), label: 'Search'),
///         StacNavigationDestination(icon: StacIcon(icon: 'account_circle'), label: 'Profile'),
///       ],
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
///   "type": "defaultNavigationController",
///   "length": 3,
///   "initialIndex": 0,
///   "child": { "type": "scaffold", ... }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacDefaultNavigationController extends StacWidget {
  /// Creates a [StacDefaultNavigationController] with the specified properties.
  const StacDefaultNavigationController({
    required this.length,
    this.initialIndex,
    required this.child,
  });

  /// The number of navigation destinations.
  ///
  /// Type: int
  final int length;

  /// The initial index of the selected destination.
  ///
  /// Type: int?
  final int? initialIndex;

  /// The child widget that will be wrapped by this controller.
  ///
  /// Type: StacWidget
  final StacWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultNavigationController.name;

  /// Creates a [StacDefaultNavigationController] from JSON.
  factory StacDefaultNavigationController.fromJson(Map<String, dynamic> json) =>
      _$StacDefaultNavigationControllerFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$StacDefaultNavigationControllerToJson(this);
}
