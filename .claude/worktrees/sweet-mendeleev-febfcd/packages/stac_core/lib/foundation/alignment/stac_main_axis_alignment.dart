/// Main-axis alignment options for flex layouts.
///
/// Defines how children are aligned along the main axis in flex layouts
/// such as [Row] and [Column] widgets. The main axis is the primary direction
/// of the flex layout:
/// - In a [Row], the main axis is horizontal (left to right)
/// - In a [Column], the main axis is vertical (top to bottom)
///
/// These values adapt to text direction for `start` and `end` alignments.
enum StacMainAxisAlignment {
  /// Align children to the start of the main axis.
  ///
  /// In a [Row]: aligns to the start edge (left in LTR, right in RTL)
  /// In a [Column]: aligns to the top
  start,

  /// Align children to the end of the main axis.
  ///
  /// In a [Row]: aligns to the end edge (right in LTR, left in RTL)
  /// In a [Column]: aligns to the bottom
  end,

  /// Center children along the main axis.
  center,

  /// Place children with equal space between them.
  ///
  /// The first child is placed at the start, the last child at the end,
  /// and remaining children are distributed with equal spacing between them.
  /// No space is added before the first or after the last child.
  spaceBetween,

  /// Place children with equal space around them.
  ///
  /// Each child gets equal space on both sides. This means the space between
  /// children is twice the space at the edges (start and end).
  spaceAround,

  /// Place children with equal space between and around them.
  ///
  /// All gaps (including before the first and after the last child) have
  /// equal spacing, creating a uniform distribution.
  spaceEvenly,
}
