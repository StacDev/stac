/// Declarative enum mirroring Flutter's [SliderInteraction].
///
/// Controls how the [Slider] responds to user input.
enum StacSliderInteraction {
  /// Allow both tapping on the track and sliding the thumb.
  tapAndSlide,

  /// Allow only tapping on the track to change the value.
  tapOnly,

  /// Allow only sliding on the track to change the value.
  slideOnly,

  /// Allow sliding the thumb only (no tap on track).
  slideThumb,
}
