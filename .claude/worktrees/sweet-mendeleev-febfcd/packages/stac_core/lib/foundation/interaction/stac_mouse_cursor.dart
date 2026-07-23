/// Mouse cursor styles that can be applied to interactive elements.
///
/// This enum provides a comprehensive set of cursor styles for different
/// interaction states and contexts, from basic pointer cursors to specialized
/// resize and action cursors.
enum StacMouseCursor {
  /// No cursor (invisible).
  none,

  /// Basic arrow cursor (default).
  basic,

  /// Pointing hand cursor for clickable elements.
  click,

  /// Forbidden/not-allowed cursor.
  forbidden,

  /// Wait/busy cursor (spinning wheel).
  wait,

  /// Progress cursor showing ongoing operation.
  progress,

  /// Context menu cursor.
  contextMenu,

  /// Help cursor (question mark).
  help,

  /// Text selection cursor (I-beam).
  text,

  /// Vertical text selection cursor.
  verticalText,

  /// Cell selection cursor (crosshair).
  cell,

  /// Precise selection cursor.
  precise,

  /// Move cursor (four-way arrows).
  move,

  /// Grab cursor (open hand).
  grab,

  /// Grabbing cursor (closed hand).
  grabbing,

  /// No drop cursor (crossed out).
  noDrop,

  /// Alias/shortcut cursor.
  alias,

  /// Copy cursor.
  copy,

  /// Disappearing cursor.
  disappearing,

  /// All-scroll cursor (arrows in all directions).
  allScroll,

  /// Horizontal resize cursor (left-right arrows).
  resizeLeftRight,

  /// Vertical resize cursor (up-down arrows).
  resizeUpDown,

  /// Diagonal resize cursor (up-left to down-right).
  resizeUpLeftDownRight,

  /// Diagonal resize cursor (up-right to down-left).
  resizeUpRightDownLeft,

  /// Resize up cursor.
  resizeUp,

  /// Resize down cursor.
  resizeDown,

  /// Resize left cursor.
  resizeLeft,

  /// Resize right cursor.
  resizeRight,

  /// Resize up-left cursor.
  resizeUpLeft,

  /// Resize up-right cursor.
  resizeUpRight,

  /// Resize down-left cursor.
  resizeDownLeft,

  /// Resize down-right cursor.
  resizeDownRight,

  /// Column resize cursor.
  resizeColumn,

  /// Row resize cursor.
  resizeRow,

  /// Zoom in cursor (magnifying glass with plus).
  zoomIn,

  /// Zoom out cursor (magnifying glass with minus).
  zoomOut,
}
