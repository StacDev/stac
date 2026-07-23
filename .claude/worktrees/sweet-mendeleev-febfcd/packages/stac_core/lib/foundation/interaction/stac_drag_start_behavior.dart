/// Behavior options for when drag operations should start.
///
/// This enum controls when a drag gesture begins tracking and how the initial
/// position is determined during drag operations.
enum StacDragStartBehavior {
  /// Set the initial offset at the position where the first down event was
  /// detected.
  ///
  /// The drag will start immediately when the pointer is pressed down.
  down,

  /// Set the initial position at the position where this gesture recognizer
  /// won the arena.
  ///
  /// The drag will start when the gesture recognizer wins the gesture arena,
  /// which may be after some movement has occurred.
  start,
}
