import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_bottom_navigation_view.g.dart';

/// A Stac model representing a custom Bottom Navigation view container.
///
/// This widget displays one of its `children` based on the active index
/// provided by a `BottomNavigationScope` (established by a
/// `StacDefaultBottomNavigationController`). It is typically placed as the
/// `body` of a `Scaffold` while the bottom navigation bar controls the
/// current index.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacDefaultBottomNavigationController(
///   length: 3,
///   initialIndex: 0,
///   child: StacScaffold(
///     appBar: StacAppBar(
///       title: StacText('Bottom Navigation Screen'),
///     ),
///     body: StacBottomNavigationView(
///       children: const [
///         StacCenter(child: StacText('Home')),
///         StacCenter(child: StacText('Search')),
///         StacCenter(child: StacText('Profile')),
///       ],
///     ),
///     bottomNavigationBar: StacBottomNavigationBar(
///       items: [
///         StacBottomNavigationBarItem(
///           icon: StacIcon(icon: 'home'),
///           label: 'Home',
///         ),
///         StacBottomNavigationBarItem(
///           icon: StacIcon(icon: 'search'),
///           label: 'Search',
///         ),
///         StacBottomNavigationBarItem(
///           icon: StacIcon(icon: 'account_circle'),
///           label: 'Profile',
///         ),
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
///   "type": "defaultBottomNavigationController",
///   "length": 3,
///   "child": {
///     "type": "scaffold",
///     "appBar": {
///       "type": "appBar",
///       "title": { "type": "text", "data": "Bottom Navigation Screen" }
///     },
///     "body": {
///       "type": "bottomNavigationView",
///       "children": [
///         { "type": "center", "child": { "type": "text", "data": "Home" } },
///         { "type": "center", "child": { "type": "text", "data": "Search" } },
///         { "type": "center", "child": { "type": "text", "data": "Profile" } }
///       ]
///     },
///     "bottomNavigationBar": {
///       "type": "bottomNavigationBar",
///       "items": [
///         { "type": "navigationBarItem", "label": "Home", "icon": { "type": "icon", "iconType": "material", "icon": "home" } },
///         { "type": "navigationBarItem", "label": "Search", "icon": { "type": "icon", "iconType": "material", "icon": "search" } },
///         { "type": "navigationBarItem", "label": "Profile", "icon": { "type": "icon", "iconType": "material", "icon": "account_circle" } }
///       ]
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's `BottomNavigationBar` docs (`https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html`)
@Deprecated(
  'Use StacNavigationView (type: "navigationView") instead. Will be removed in a future release.',
)
@JsonSerializable()
class StacBottomNavigationView extends StacWidget {
  /// Creates a [StacBottomNavigationView].
  const StacBottomNavigationView({required this.children});

  /// The list of pages that can be displayed.
  ///
  /// Type: [List] of [StacWidget]
  final List<StacWidget> children;

  /// Widget type identifier.
  @override
  String get type => WidgetType.bottomNavigationView.name;

  /// Creates a [StacBottomNavigationView] from a JSON map.
  factory StacBottomNavigationView.fromJson(Map<String, dynamic> json) =>
      _$StacBottomNavigationViewFromJson(json);

  /// Converts this [StacBottomNavigationView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacBottomNavigationViewToJson(this);
}
