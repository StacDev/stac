/// Annotation to mark methods that return StacWidget instances.
///
/// This annotation is used to identify screen-level widgets in the Stac framework.
/// Methods that return StacWidget should be annotated with this to indicate
/// they represent screen definitions.
///
/// Example usage:
/// ```dart
/// @StacScreen(screenName: 'home')
/// StacWidget buildHomeScreen() {
///   return StacWidget(jsonData: {'type': 'scaffold', 'body': '...'});
/// }
/// ```
class StacScreen {
  /// Creates a [StacScreen] annotation with the given screen name.
  const StacScreen({required this.screenName});

  /// The name identifier for this screen.
  final String screenName;
}
