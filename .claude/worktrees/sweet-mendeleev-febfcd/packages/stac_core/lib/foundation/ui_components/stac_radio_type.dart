/// Defines which platform style of radio to render.
///
/// Mirrors Flutter variants used across Material/Cupertino/adaptive APIs.
enum StacRadioType {
  /// Renders a platform-adaptive [Radio], using Cupertino on iOS and Material elsewhere.
  adaptive,

  /// Renders a [CupertinoRadio].
  cupertino,

  /// Renders a Material [Radio].
  material,
}
