/// Direction(s) in which a dismissible widget can be dismissed.
///
/// Mirrors Flutter's [DismissDirection] without importing Flutter into core.
enum StacDismissDirection {
  /// Can be dismissed horizontally in either direction.
  horizontal,

  /// Can be dismissed vertically in either direction.
  vertical,

  /// Can be dismissed by dragging down.
  down,

  /// Can be dismissed by dragging up.
  up,

  /// Can be dismissed by dragging from end to start (right to left in LTR).
  endToStart,

  /// Can be dismissed by dragging from start to end (left to right in LTR).
  startToEnd,
}
