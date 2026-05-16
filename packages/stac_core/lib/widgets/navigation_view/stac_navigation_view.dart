import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_navigation_view.g.dart';

/// A Stac widget that displays one of its `children` based on the active
/// index provided by a `NavigationScope` (established by a
/// [StacDefaultNavigationController]).
///
/// Generic replacement for [StacBottomNavigationView] — works with any
/// navigation widget (`bottomNavigationBar`, `navigationBar`, etc.).
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDefaultNavigationController(
///   length: 3,
///   child: StacScaffold(
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
@JsonSerializable()
class StacNavigationView extends StacWidget {
  /// Creates a [StacNavigationView].
  const StacNavigationView({required this.children});

  /// The list of pages that can be displayed.
  ///
  /// Type: [List] of [StacWidget]
  final List<StacWidget> children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.navigationView.name;

  /// Creates a [StacNavigationView] from a JSON map.
  factory StacNavigationView.fromJson(Map<String, dynamic> json) =>
      _$StacNavigationViewFromJson(json);

  /// Converts this [StacNavigationView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacNavigationViewToJson(this);
}
