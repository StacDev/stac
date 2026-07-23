/// Sizing options for Stack widget children.
///
/// Controls how non-positioned children of a Stack widget should be sized
/// relative to the Stack's own size.
enum StacStackFit {
  /// Children are sized to their intrinsic dimensions.
  ///
  /// Non-positioned children can be smaller than the Stack.
  loose,

  /// Children are forced to match the Stack's size.
  ///
  /// Non-positioned children will be the same size as the Stack.
  expand,

  /// Children inherit constraints from the Stack's parent.
  ///
  /// The Stack's constraints are passed through to its children.
  passthrough,
}
