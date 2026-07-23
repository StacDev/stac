/// Cross-axis alignment options for flex layouts.
///
/// Defines how children are aligned along the cross axis in flex layouts
/// such as [Row] and [Column] widgets. The cross axis is perpendicular to
/// the main axis:
/// - In a [Row], the cross axis is vertical (top to bottom)
/// - In a [Column], the cross axis is horizontal (left to right)
///
/// These values adapt to text direction for `start` and `end` alignments.
enum StacCrossAxisAlignment {
  /// Align children to the start of the cross axis.
  ///
  /// In a [Row]: aligns to the top
  /// In a [Column]: aligns to the start edge (left in LTR, right in RTL)
  start,

  /// Align children to the end of the cross axis.
  ///
  /// In a [Row]: aligns to the bottom
  /// In a [Column]: aligns to the end edge (right in LTR, left in RTL)
  end,

  /// Center children along the cross axis.
  center,

  /// Stretch children to fill the cross axis.
  ///
  /// Children will be sized to match the cross axis dimension of their parent.
  stretch,

  /// Align children along their text baseline.
  ///
  /// Only applicable to widgets that have a text baseline. If a child doesn't
  /// have a baseline, it will be aligned using [start] instead.
  baseline,
}
