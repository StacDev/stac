import 'package:json_annotation/json_annotation.dart';
import 'package:stac_core/core/converters/double_converter.dart';
import 'package:stac_core/core/stac_action.dart';
import 'package:stac_core/core/stac_widget.dart';
import 'package:stac_core/foundation/foundation.dart';

part 'stac_slider.g.dart';

/// A Stac model representing Flutter's [Slider] widget.
///
/// A Material Design slider allows users to select a value from a range of
/// values by moving the slider thumb. Supports Material, Cupertino, and
/// adaptive variants selected by [sliderType].
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// StacSlider(
///   id: 'volume',
///   value: 0.5,
///   min: 0.0,
///   max: 1.0,
///   onChanged: StacAction.fromJson({'type': 'setValue', 'key': 'volume'}),
///   activeColor: StacColors.blue,
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "slider",
///   "id": "volume",
///   "value": 0.5,
///   "min": 0.0,
///   "max": 1.0,
///   "activeColor": "#2196F3"
/// }
/// ```
/// {@end-tool}
///
/// See also:
///  * Flutter's [Slider documentation](https://api.flutter.dev/flutter/material/Slider-class.html)
@JsonSerializable(explicitToJson: true)
class StacSlider extends StacWidget {
  /// Creates a [StacSlider].
  const StacSlider({
    this.id,
    this.sliderType,
    required this.value,
    this.secondaryTrackValue,
    this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min,
    this.max,
    this.divisions,
    this.label,
    this.activeColor,
    this.inactiveColor,
    this.secondaryActiveColor,
    this.thumbColor,
    this.overlayColor,
    this.mouseCursor,
    this.autofocus,
    this.allowedInteraction,
  });

  /// Identifier used with form scope to store/read this slider's value.
  final String? id;

  /// Which platform style of slider to render.
  final StacSliderType? sliderType;

  /// The current value of the slider.
  @DoubleConverter()
  final double value;

  /// The current value of the secondary track, if any.
  @DoubleConverter()
  final double? secondaryTrackValue;

  /// Action invoked when the user drags to a new value.
  ///
  /// Type: [StacAction]
  final StacAction? onChanged;

  /// Action invoked when the user starts a change sequence.
  ///
  /// Type: [StacAction]
  final StacAction? onChangeStart;

  /// Action invoked when the user ends a change sequence.
  ///
  /// Type: [StacAction]
  final StacAction? onChangeEnd;

  /// The minimum value the user can select.
  @DoubleConverter()
  final double? min;

  /// The maximum value the user can select.
  @DoubleConverter()
  final double? max;

  /// The number of discrete divisions.
  final int? divisions;

  /// A label to show above the slider's thumb.
  final String? label;

  /// The color of the active portion of the slider track.
  ///
  /// Type: [StacColor]
  final StacColor? activeColor;

  /// The color of the inactive portion of the slider track.
  ///
  /// Type: [StacColor]
  final StacColor? inactiveColor;

  /// The color of the secondary active portion of the slider track.
  ///
  /// Type: [StacColor]
  final StacColor? secondaryActiveColor;

  /// The color of the thumb.
  ///
  /// Type: [StacColor]
  final StacColor? thumbColor;

  /// The color of the overlay drawn when the thumb is pressed.
  ///
  /// Type: [StacColor]
  final StacColor? overlayColor;

  /// The mouse cursor to display when hovering this widget.
  final StacMouseCursor? mouseCursor;

  /// Whether this slider should focus itself if nothing else is focused.
  final bool? autofocus;

  /// How the slider responds to user interaction.
  final StacSliderInteraction? allowedInteraction;

  /// Widget type identifier.
  @override
  String get type => WidgetType.slider.name;

  /// Creates a [StacSlider] from a JSON map.
  factory StacSlider.fromJson(Map<String, dynamic> json) =>
      _$StacSliderFromJson(json);

  /// Converts this [StacSlider] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$StacSliderToJson(this);
}
