/// Main-axis sizing options for flex layouts.
///
/// Defines how much space a flex layout should occupy along its main axis.
/// This affects the overall size of flex containers like [Row] and [Column]:
/// - In a [Row], controls the horizontal space occupied
/// - In a [Column], controls the vertical space occupied
///
/// Use [min] to minimize space usage and [max] to expand to fill available space.
enum StacMainAxisSize {
  /// Minimize the space occupied along the main axis.
  ///
  /// The flex layout will only take up as much space as needed to fit
  /// its children. This is useful when you want the layout to be as
  /// compact as possible.
  min,

  /// Maximize the space occupied along the main axis.
  ///
  /// The flex layout will expand to fill all available space along
  /// the main axis. This is useful when you want the layout to take
  /// up the full width (Row) or height (Column) of its parent.
  max,
}
