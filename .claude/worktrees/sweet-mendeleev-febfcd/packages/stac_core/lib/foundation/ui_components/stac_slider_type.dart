/// An enum to select which platform style of [Slider] to render.
///
/// Mirrors the variants supported by Flutter and used by the parser to
/// decide which widget implementation to build.
enum StacSliderType {
  /// Use an adaptive slider that selects a platform-appropriate
  /// implementation (e.g., Material on Android, Cupertino on iOS).
  adaptive,

  /// Always render a Cupertino-styled slider.
  cupertino,

  /// Always render a Material-styled slider.
  material,
}
