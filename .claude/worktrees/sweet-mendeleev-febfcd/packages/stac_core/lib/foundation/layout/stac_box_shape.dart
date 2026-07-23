/// Shape options for boxes and containers.
///
/// Defines the overall shape that a box should take when rendering
/// borders, shadows, and other decorative elements.
enum StacBoxShape {
  /// An axis-aligned rectangle, optionally with rounded corners.
  ///
  /// The amount of corner rounding, if any, is determined by the border radius
  /// specified by classes such as [BoxDecoration] or [Border]. The rectangle's
  /// edges match those of the box in which it is painted.
  ///
  /// See also:
  ///
  ///  * [RoundedRectangleBorder], the equivalent [ShapeBorder].
  rectangle,

  /// A circle centered in the middle of the box into which the [Border] or
  /// [BoxDecoration] is painted. The diameter of the circle is the shortest
  /// dimension of the box, either the width or the height, such that the circle
  /// touches the edges of the box.
  ///
  /// See also:
  ///
  ///  * [CircleBorder], the equivalent [ShapeBorder].
  circle,
}
