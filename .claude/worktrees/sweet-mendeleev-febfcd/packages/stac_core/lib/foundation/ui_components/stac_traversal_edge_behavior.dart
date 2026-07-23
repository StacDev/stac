/// Dialog traversal behavior within focus traversal.
///
/// Mirrors Flutter's [TraversalEdgeBehavior] for dialog focus traversal without
/// importing Flutter into core. Used by `StacDialogAction`.
///
/// JSON example:
/// ```json
/// { "traversalEdgeBehavior": "closedLoop" }
/// ```
enum StacTraversalEdgeBehavior {
  /// Focus wraps from the last to the first (and vice versa).
  closedLoop,

  /// Focus can leave Flutter view.
  leaveFlutterView,

  /// Delegate to parent focus scope.
  parentScope,

  /// Stop focus traversal at the edge.
  stop,
}
