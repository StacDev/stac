/// Defines how a scroll view in Stac should dismiss the keyboard.
///
/// Corresponds to Flutter's [ScrollViewKeyboardDismissBehavior].
enum StacScrollViewKeyboardDismissBehavior {
  /// The keyboard is dismissed manually.
  manual,

  /// The keyboard is dismissed when a drag begins.
  onDrag,
}
