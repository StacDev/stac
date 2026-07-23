/// Defines which platform style of switch to render.
///
/// Mirrors Flutter variants used across Material/Cupertino/adaptive APIs.
enum StacSwitchType {
  /// Renders a platform-adaptive [Switch], using Cupertino on iOS and Material elsewhere.
  adaptive,

  /// Renders a [CupertinoSwitch].
  cupertino,

  /// Renders a Material [Switch].
  material,
}
