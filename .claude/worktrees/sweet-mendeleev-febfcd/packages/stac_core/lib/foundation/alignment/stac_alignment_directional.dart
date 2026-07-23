/// Directional alignment options that adapt to text direction.
///
/// This enum provides alignment values that automatically adjust based on the
/// text direction (LTR or RTL). Use `start` and `end` values instead of `left`
/// and `right` to ensure proper alignment in both left-to-right and right-to-left
/// languages.
///
/// In LTR languages:
/// - `start` corresponds to `left`
/// - `end` corresponds to `right`
///
/// In RTL languages:
/// - `start` corresponds to `right`
/// - `end` corresponds to `left`
enum StacAlignmentDirectional {
  /// Align to the top-start corner (top-left in LTR, top-right in RTL).
  topStart,

  /// Align to the top-center.
  topCenter,

  /// Align to the top-end corner (top-right in LTR, top-left in RTL).
  topEnd,

  /// Align to the center-start (center-left in LTR, center-right in RTL).
  centerStart,

  /// Align to the center.
  center,

  /// Align to the center-end (center-right in LTR, center-left in RTL).
  centerEnd,

  /// Align to the bottom-start corner (bottom-left in LTR, bottom-right in RTL).
  bottomStart,

  /// Align to the bottom-center.
  bottomCenter,

  /// Align to the bottom-end corner (bottom-right in LTR, bottom-left in RTL).
  bottomEnd,
}
