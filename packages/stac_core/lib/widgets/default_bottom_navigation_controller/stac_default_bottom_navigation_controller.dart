import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/specifications/widget_type.dart';

part 'stac_default_bottom_navigation_controller.g.dart';

/// A Stac model representing Flutter's DefaultTabController widget for bottom navigation.
///
/// This widget provides a controller for managing bottom navigation state and
/// establishes a BottomNavigationScope that can be accessed by child widgets
/// like StacBottomNavigationView and StacBottomNavigationBar.
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
///   "initialIndex": 0,
///   "child": {
///     "type": "scaffold",
///     "appBar": {
///       "type": "appBar",
///       "title": {"type": "text", "data": "Bottom Navigation Screen"}
///     },
///     "body": {
///       "type": "bottomNavigationView",
///       "children": [
///         {"type": "center", "child": {"type": "text", "data": "Home"}},
///         {"type": "center", "child": {"type": "text", "data": "Search"}},
///         {"type": "center", "child": {"type": "text", "data": "Profile"}}
///       ]
///     },
///     "bottomNavigationBar": {
///       "type": "bottomNavigationBar",
///       "items": [
///         {
///           "type": "navigationBarItem",
///           "label": "Home",
///           "icon": {"type": "icon", "icon": "home"}
///         },
///         {
///           "type": "navigationBarItem",
///           "label": "Search",
///           "icon": {"type": "icon", "icon": "search"}
///         },
///         {
///           "type": "navigationBarItem",
///           "label": "Profile",
///           "icon": {"type": "icon", "icon": "account_circle"}
///         }
///       ]
///     }
///   }
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's DefaultTabController docs (https://api.flutter.dev/flutter/material/DefaultTabController-class.html)
@Deprecated(
  'Use StacDefaultNavigationController (type: "defaultNavigationController") instead. Will be removed in a future release.',
)
@JsonSerializable()
class StacDefaultBottomNavigationController extends StacWidget {
  /// Creates a [StacDefaultBottomNavigationController] with the specified properties.
  const StacDefaultBottomNavigationController({
    required this.length,
    this.initialIndex,
    required this.child,
  });

  /// The number of tabs/bottom navigation items.
  ///
  /// Type: int
  final int length;

  /// The initial index of the selected tab.
  ///
  /// Type: int?
  final int? initialIndex;

  /// The child widget that will be wrapped by this controller.
  ///
  /// Type: StacWidget
  final StacWidget child;

  /// Widget type identifier.
  @override
  String get type => WidgetType.defaultBottomNavigationController.name;

  /// Creates a [StacDefaultBottomNavigationController] from JSON.
  factory StacDefaultBottomNavigationController.fromJson(
    Map<String, dynamic> json,
  ) => _$StacDefaultBottomNavigationControllerFromJson(json);

  /// Converts this widget to JSON.
  @override
  Map<String, dynamic> toJson() =>
      _$StacDefaultBottomNavigationControllerToJson(this);
}
