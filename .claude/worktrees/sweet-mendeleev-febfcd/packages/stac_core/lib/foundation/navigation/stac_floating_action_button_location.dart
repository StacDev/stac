/// Floating action button positioning options.
///
/// Defines where a floating action button should be positioned within
/// a scaffold. Locations can be at the top, floating, or docked to the
/// bottom app bar, and can be positioned at start, center, or end.
/// Mini variants use a smaller button size.
enum StacFloatingActionButtonLocation {
  /// Standard FAB at the start-top position.
  startTop,

  /// Mini FAB at the start-top position.
  miniStartTop,

  /// Standard FAB at the center-top position.
  centerTop,

  /// Mini FAB at the center-top position.
  miniCenterTop,

  /// Standard FAB at the end-top position.
  endTop,

  /// Mini FAB at the end-top position.
  miniEndTop,

  /// Standard FAB floating at the start position.
  startFloat,

  /// Mini FAB floating at the start position.
  miniStartFloat,

  /// Standard FAB floating at the center position.
  centerFloat,

  /// Mini FAB floating at the center position.
  miniCenterFloat,

  /// Standard FAB floating at the end position.
  endFloat,

  /// Mini FAB floating at the end position.
  miniEndFloat,

  /// Standard FAB docked at the start of the bottom app bar.
  startDocked,

  /// Mini FAB docked at the start of the bottom app bar.
  miniStartDocked,

  /// Standard FAB docked at the center of the bottom app bar.
  centerDocked,

  /// Mini FAB docked at the center of the bottom app bar.
  miniCenterDocked,

  /// Standard FAB docked at the end of the bottom app bar.
  endDocked,

  /// Mini FAB docked at the end of the bottom app bar.
  miniEndDocked,
}
