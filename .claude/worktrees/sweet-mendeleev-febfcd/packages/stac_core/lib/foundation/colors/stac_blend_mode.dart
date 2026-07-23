/// Blend modes for compositing colors and images.
///
/// These blend modes determine how colors are combined when drawing
/// one element on top of another. They correspond to the blend modes
/// available in graphics software and CSS.
enum StacBlendMode {
  /// Clear the destination pixels, making them transparent.
  clear,

  /// Replace destination with source pixels.
  src,

  /// Keep only destination pixels.
  dst,

  /// Source pixels are drawn over destination pixels (normal blending).
  srcOver,

  /// Destination pixels are drawn over source pixels.
  dstOver,

  /// Keep source pixels that overlap with destination.
  srcIn,

  /// Keep destination pixels that overlap with source.
  dstIn,

  /// Keep source pixels that don't overlap with destination.
  srcOut,

  /// Keep destination pixels that don't overlap with source.
  dstOut,

  /// Source pixels on top of destination, clipped by destination alpha.
  srcATop,

  /// Destination pixels on top of source, clipped by source alpha.
  dstATop,

  /// Exclusive OR - pixels that don't overlap.
  xor,

  /// Add source and destination pixel values.
  plus,

  /// Multiply source and destination colors.
  modulate,

  /// Screen blend mode - inverted multiply effect.
  screen,

  /// Overlay blend mode - combines multiply and screen.
  overlay,

  /// Darken blend mode - selects darker colors.
  darken,

  /// Lighten blend mode - selects lighter colors.
  lighten,

  /// Color dodge blend mode - brightens destination based on source.
  colorDodge,

  /// Color burn blend mode - darkens destination based on source.
  colorBurn,

  /// Hard light blend mode - combines overlay with stronger contrast.
  hardLight,

  /// Soft light blend mode - subtle lighting effect.
  softLight,

  /// Difference blend mode - absolute difference between colors.
  difference,

  /// Exclusion blend mode - similar to difference but with less contrast.
  exclusion,

  /// Multiply blend mode - darker composite.
  multiply,

  /// Hue blend mode - uses source hue with destination saturation and luminosity.
  hue,

  /// Saturation blend mode - uses source saturation with destination hue and luminosity.
  saturation,

  /// Color blend mode - uses source hue and saturation with destination luminosity.
  color,

  /// Luminosity blend mode - uses source luminosity with destination hue and saturation.
  luminosity,
}
