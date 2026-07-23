/// Fixed alignment options that do not adapt to text direction.
///
/// This enum provides absolute alignment values that remain constant regardless
/// of the text direction (LTR or RTL). Use these values when you need precise
/// positioning that should not change based on locale.
///
/// For alignment that adapts to text direction, use [StacAlignmentDirectional]
/// instead, which provides `start` and `end` values that automatically adjust
/// for different languages.
enum StacAlignment {
  /// Align to the top-left corner.
  topLeft,

  /// Align to the top-center.
  topCenter,

  /// Align to the top-right corner.
  topRight,

  /// Align to the center-left.
  centerLeft,

  /// Align to the center.
  center,

  /// Align to the center-right.
  centerRight,

  /// Align to the bottom-left corner.
  bottomLeft,

  /// Align to the bottom-center.
  bottomCenter,

  /// Align to the bottom-right corner.
  bottomRight,
}
