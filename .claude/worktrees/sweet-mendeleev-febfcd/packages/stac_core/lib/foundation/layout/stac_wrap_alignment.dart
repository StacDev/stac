/// Alignment options for Wrap widget children.
///
/// Determines how wrapped children are aligned within each run (line)
/// of the wrap layout.
enum StacWrapAlignment {
  /// Align children to the start of each run.
  start,

  /// Align children to the end of each run.
  end,

  /// Center children within each run.
  center,

  /// Place equal space between children in each run.
  ///
  /// The first child is at the start, the last child is at the end,
  /// and remaining children are evenly distributed between them.
  spaceBetween,

  /// Place equal space around each child in each run.
  ///
  /// Each child gets equal space on both sides, making the space
  /// between children twice the space at the edges.
  spaceAround,

  /// Place equal space between and around children in each run.
  ///
  /// All gaps (including before the first and after the last child)
  /// have equal spacing.
  spaceEvenly,
}
