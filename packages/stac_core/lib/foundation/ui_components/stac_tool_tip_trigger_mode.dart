/// Defines the interaction method that triggers a tooltip, mirroring
/// Flutter's [TooltipTriggerMode].
enum StacTooltipTriggerMode {
  /// Tooltip will only be shown by calling `ensureTooltipVisible`.
  /// This corresponds to [TooltipTriggerMode.manual].
  manual,

  /// Tooltip will be shown after a long press.
  /// This corresponds to [TooltipTriggerMode.longPress].
  longPress,

  /// Tooltip will be shown after a single tap.
  /// This corresponds to [TooltipTriggerMode.tap].
  tap,
}
