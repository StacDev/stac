/// Behavior of a SnackBar's position.
///
/// Mirrors Flutter's [SnackBarBehavior] without importing Flutter into core.
/// - `fixed`: SnackBar is anchored to the bottom.
/// - `floating`: SnackBar floats above content with margins.
enum StacSnackBarBehavior {
  /// SnackBar is anchored to the bottom of the screen.
  fixed,

  /// SnackBar floats above content with margins around it.
  floating,
}
