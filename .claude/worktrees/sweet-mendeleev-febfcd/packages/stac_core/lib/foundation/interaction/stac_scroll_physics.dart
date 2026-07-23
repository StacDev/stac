/// Defines the types of scroll physics that can be applied to scrollable widgets.
///
/// This enum is used to represent the different scrolling behaviors available
/// in Flutter, such as bouncing, clamping, or page-by-page scrolling.
enum StacScrollPhysics {
  /// Disallows scrolling. Corresponds to Flutter's [NeverScrollableScrollPhysics].
  never,

  /// Allows the scroll view to bounce back when it overscrolls.
  /// Corresponds to Flutter's [BouncingScrollPhysics]. This is typical on iOS.
  bouncing,

  /// Stops scrolling abruptly at the boundaries.
  /// Corresponds to Flutter's [ClampingScrollPhysics]. This is typical on Android.
  clamping,

  /// Scroll physics for scrollables that scroll in fixed item extents.
  /// Corresponds to Flutter's [FixedExtentScrollPhysics].
  fixed,

  /// Scroll physics for scrollables that scroll page by page.
  /// Corresponds to Flutter's [PageScrollPhysics].
  page,
}
