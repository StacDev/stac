import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/stac_core.dart';

part 'stac_scaffold.g.dart';

/// A Stac widget that implements the basic material design visual layout structure.
///
/// This widget corresponds to Flutter's Scaffold and provides the basic
/// material design visual layout structure. It provides APIs for showing
/// drawers, snack bars, and bottom sheets.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const StacScaffold(
///   appBar: StacAppBar(title: StacText(data: 'My App')),
///   body: StacText(data: 'Hello World'),
///   floatingActionButton: StacFloatingActionButton(
///     onPressed: StacNavigateAction(route: '/next'),
///     child: StacIcon(icon: Icons.add),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "scaffold",
///   "appBar": {
///     "type": "appBar",
///     "title": {"type": "text", "data": "My App"}
///   },
///   "body": {"type": "text", "data": "Hello World"}
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class StacScaffold extends StacWidget {
  /// Creates a scaffold with optional app bar, body, and other components.
  const StacScaffold({
    this.appBar,
    this.backgroundColor,
    this.body,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.drawerDragStartBehavior,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture,
    this.drawerScrimColor,
    this.endDrawer,
    this.endDrawerEnableOpenDragGesture,
    this.extendBody,
    this.extendBodyBehindAppBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.onDrawerChanged,
    this.onEndDrawerChanged,
    this.persistentFooterAlignment,
    this.persistentFooterButtons,
    this.primary,
    this.resizeToAvoidBottomInset,
    this.restorationId,
  });

  /// An app bar to display at the top of the scaffold.
  final StacWidget? appBar;

  /// The background color of the scaffold.
  final String? backgroundColor;

  /// The primary content of the scaffold.
  final StacWidget? body;

  /// A bottom navigation bar to display at the bottom of the scaffold.
  final StacWidget? bottomNavigationBar;

  /// A persistent bottom sheet to show below the scaffold's body.
  final StacWidget? bottomSheet;

  /// A panel displayed to the side of the body, often hidden on mobile.
  final StacWidget? drawer;

  /// Determines the way that drag start behavior is handled for the drawer.
  final StacDragStartBehavior? drawerDragStartBehavior;

  /// The width of the area within which a horizontal swipe will open the drawer.
  final double? drawerEdgeDragWidth;

  /// Whether the drawer can be opened with a drag gesture.
  final bool? drawerEnableOpenDragGesture;

  /// The color to use for the scrim that obscures primary content while a drawer is open.
  final String? drawerScrimColor;

  /// A panel displayed to the side of the body, typically on the right.
  final StacWidget? endDrawer;

  /// Whether the end drawer can be opened with a drag gesture.
  final bool? endDrawerEnableOpenDragGesture;

  /// Whether the body should extend to the bottom of the scaffold.
  final bool? extendBody;

  /// Whether the body should extend behind the app bar.
  final bool? extendBodyBehindAppBar;

  /// A floating action button to display.
  final StacWidget? floatingActionButton;

  /// Where to position the floating action button.
  final StacFloatingActionButtonLocation? floatingActionButtonLocation;

  /// Action called when the drawer is opened or closed.
  final StacAction? onDrawerChanged;

  /// Action called when the end drawer is opened or closed.
  final StacAction? onEndDrawerChanged;

  /// The alignment of the persistent footer buttons.
  final StacAlignmentDirectional? persistentFooterAlignment;

  /// A list of buttons to display in a row below the body.
  final List<StacWidget>? persistentFooterButtons;

  /// Whether this scaffold is being displayed at the top of the screen.
  final bool? primary;

  /// Whether the body should size itself to avoid the window's bottom inset.
  final bool? resizeToAvoidBottomInset;

  /// Restoration ID to save and restore the state of the scaffold.
  final String? restorationId;

  @override
  String get type => WidgetType.scaffold.name;

  /// Creates a [StacScaffold] from a JSON map.
  factory StacScaffold.fromJson(Map<String, dynamic> json) =>
      _$StacScaffoldFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StacScaffoldToJson(this);
}
