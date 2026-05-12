/// Text alignment options for text widgets.
enum StacTextAlign {
  /// Align text to the left edge.
  left,

  /// Align text to the right edge.
  right,

  /// Center text horizontally.
  center,

  /// Justify text to fill the available width.
  justify,

  /// Align text to the start edge (left in LTR, right in RTL).
  start,

  /// Align text to the end edge (right in LTR, left in RTL).
  end,
}

/// Text direction options for text layout.
enum StacTextDirection {
  /// Right-to-left text direction (Arabic, Hebrew).
  rtl,

  /// Left-to-right text direction (English, most languages).
  ltr,
}

/// Text overflow handling options when text doesn't fit.
enum StacTextOverflow {
  /// Clip the overflowing text.
  clip,

  /// Fade the overflowing text to transparent.
  fade,

  /// Show ellipsis (...) for overflowing text.
  ellipsis,

  /// Allow text to overflow and be visible.
  visible,
}

/// Text width calculation basis options.
enum StacTextWidthBasis {
  /// Use the parent widget's width constraints.
  parent,

  /// Use the width of the longest line of text.
  longestLine,
}

/// Text baseline options for vertical text alignment.
enum StacTextBaseline {
  /// Alphabetic baseline (used by Latin scripts).
  alphabetic,

  /// Ideographic baseline (used by East Asian scripts).
  ideographic,
}

/// Font weight options for text styling.
enum StacFontWeight {
  /// Thin weight (100).
  w100,

  /// Extra light weight (200).
  w200,

  /// Light weight (300).
  w300,

  /// Normal weight (400).
  w400,

  /// Medium weight (500).
  w500,

  /// Semi-bold weight (600).
  w600,

  /// Bold weight (700).
  w700,

  /// Extra bold weight (800).
  w800,

  /// Black weight (900).
  w900,

  /// Normal font weight (equivalent to w400).
  normal,

  /// Bold font weight (equivalent to w700).
  bold,
}

/// Font style options for text styling.
enum StacFontStyle {
  /// Normal upright text.
  normal,

  /// Italicized slanted text.
  italic,
}

/// Text leading (line height) distribution options.
enum StacTextLeadingDistribution {
  /// Distribute leading proportionally above and below text.
  proportional,

  /// Distribute leading evenly above and below text.
  even,
}

/// Text decoration style options for underlines, overlines, etc.
enum StacTextDecorationStyle {
  /// Solid line decoration.
  solid,

  /// Double line decoration.
  double,

  /// Dotted line decoration.
  dotted,

  /// Dashed line decoration.
  dashed,

  /// Wavy line decoration.
  wavy,
}

/// Line painted on text (maps to Flutter [TextDecoration]).
enum StacTextDecorationLine {
  /// No line decoration.
  none,

  /// Underline.
  underline,

  /// Overline.
  overline,

  /// Strikethrough.
  lineThrough,
}
