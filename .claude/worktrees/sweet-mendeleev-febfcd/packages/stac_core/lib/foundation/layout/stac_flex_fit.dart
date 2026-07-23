/// Flex fit options for flexible widgets.
///
/// Determines how a flexible child should fit within the available space
/// along the main axis of a flex layout.
enum StacFlexFit {
  /// The child is forced to fill the available space.
  ///
  /// The child will be exactly the size of the available space,
  /// regardless of its intrinsic dimensions.
  tight,

  /// The child can be at most as large as the available space.
  ///
  /// The child will use its intrinsic dimensions up to the maximum
  /// available space, but won't be forced to fill it.
  loose,
}
