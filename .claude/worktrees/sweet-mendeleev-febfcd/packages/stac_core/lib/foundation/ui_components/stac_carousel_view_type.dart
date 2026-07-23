/// Defines how a `CarouselView` lays out its children.
///
/// Use [StacCarouselViewType.regular] for a standard carousel with items of a
/// fixed extent, or [StacCarouselViewType.weighted] to size items according to
/// their corresponding entry in `flexWeights`.
enum StacCarouselViewType {
  /// Displays each child with a fixed extent.
  ///
  /// When using this mode, you can provide `itemExtent` to control the size of
  /// each item along the main axis. If `itemExtent` is not provided, Flutter's
  /// default behavior for `CarouselView` is used.
  regular,

  /// Sizes children according to proportional weights.
  ///
  /// Provide a `flexWeights` list whose length matches the number of children;
  /// each item's size is computed proportionally to its weight.
  weighted,
}
