// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacSlider {
  String? get id;
  StacSliderType get sliderType;
  double get value;
  double? get secondaryTrackValue;
  Map<String, dynamic>? get onChanged;
  Map<String, dynamic>? get onChangeStart;
  Map<String, dynamic>? get onChangeEnd;
  double get min;
  double get max;
  int? get divisions;
  String? get label;
  String? get activeColor;
  String? get inactiveColor;
  String? get secondaryActiveColor;
  String? get thumbColor;
  String? get overlayColor;
  StacMouseCursor? get mouseCursor;
  bool get autofocus;
  SliderInteraction? get allowedInteraction;

  /// Create a copy of StacSlider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacSliderCopyWith<StacSlider> get copyWith =>
      _$StacSliderCopyWithImpl<StacSlider>(this as StacSlider, _$identity);

  /// Serializes this StacSlider to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacSlider &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sliderType, sliderType) ||
                other.sliderType == sliderType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.secondaryTrackValue, secondaryTrackValue) ||
                other.secondaryTrackValue == secondaryTrackValue) &&
            const DeepCollectionEquality().equals(other.onChanged, onChanged) &&
            const DeepCollectionEquality()
                .equals(other.onChangeStart, onChangeStart) &&
            const DeepCollectionEquality()
                .equals(other.onChangeEnd, onChangeEnd) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.divisions, divisions) ||
                other.divisions == divisions) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.inactiveColor, inactiveColor) ||
                other.inactiveColor == inactiveColor) &&
            (identical(other.secondaryActiveColor, secondaryActiveColor) ||
                other.secondaryActiveColor == secondaryActiveColor) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.allowedInteraction, allowedInteraction) ||
                other.allowedInteraction == allowedInteraction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        sliderType,
        value,
        secondaryTrackValue,
        const DeepCollectionEquality().hash(onChanged),
        const DeepCollectionEquality().hash(onChangeStart),
        const DeepCollectionEquality().hash(onChangeEnd),
        min,
        max,
        divisions,
        label,
        activeColor,
        inactiveColor,
        secondaryActiveColor,
        thumbColor,
        overlayColor,
        mouseCursor,
        autofocus,
        allowedInteraction
      ]);

  @override
  String toString() {
    return 'StacSlider(id: $id, sliderType: $sliderType, value: $value, secondaryTrackValue: $secondaryTrackValue, onChanged: $onChanged, onChangeStart: $onChangeStart, onChangeEnd: $onChangeEnd, min: $min, max: $max, divisions: $divisions, label: $label, activeColor: $activeColor, inactiveColor: $inactiveColor, secondaryActiveColor: $secondaryActiveColor, thumbColor: $thumbColor, overlayColor: $overlayColor, mouseCursor: $mouseCursor, autofocus: $autofocus, allowedInteraction: $allowedInteraction)';
  }
}

/// @nodoc
abstract mixin class $StacSliderCopyWith<$Res> {
  factory $StacSliderCopyWith(
          StacSlider value, $Res Function(StacSlider) _then) =
      _$StacSliderCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      StacSliderType sliderType,
      double value,
      double? secondaryTrackValue,
      Map<String, dynamic>? onChanged,
      Map<String, dynamic>? onChangeStart,
      Map<String, dynamic>? onChangeEnd,
      double min,
      double max,
      int? divisions,
      String? label,
      String? activeColor,
      String? inactiveColor,
      String? secondaryActiveColor,
      String? thumbColor,
      String? overlayColor,
      StacMouseCursor? mouseCursor,
      bool autofocus,
      SliderInteraction? allowedInteraction});
}

/// @nodoc
class _$StacSliderCopyWithImpl<$Res> implements $StacSliderCopyWith<$Res> {
  _$StacSliderCopyWithImpl(this._self, this._then);

  final StacSlider _self;
  final $Res Function(StacSlider) _then;

  /// Create a copy of StacSlider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sliderType = null,
    Object? value = null,
    Object? secondaryTrackValue = freezed,
    Object? onChanged = freezed,
    Object? onChangeStart = freezed,
    Object? onChangeEnd = freezed,
    Object? min = null,
    Object? max = null,
    Object? divisions = freezed,
    Object? label = freezed,
    Object? activeColor = freezed,
    Object? inactiveColor = freezed,
    Object? secondaryActiveColor = freezed,
    Object? thumbColor = freezed,
    Object? overlayColor = freezed,
    Object? mouseCursor = freezed,
    Object? autofocus = null,
    Object? allowedInteraction = freezed,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderType: null == sliderType
          ? _self.sliderType
          : sliderType // ignore: cast_nullable_to_non_nullable
              as StacSliderType,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      secondaryTrackValue: freezed == secondaryTrackValue
          ? _self.secondaryTrackValue
          : secondaryTrackValue // ignore: cast_nullable_to_non_nullable
              as double?,
      onChanged: freezed == onChanged
          ? _self.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onChangeStart: freezed == onChangeStart
          ? _self.onChangeStart
          : onChangeStart // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onChangeEnd: freezed == onChangeEnd
          ? _self.onChangeEnd
          : onChangeEnd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      min: null == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      divisions: freezed == divisions
          ? _self.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveColor: freezed == inactiveColor
          ? _self.inactiveColor
          : inactiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryActiveColor: freezed == secondaryActiveColor
          ? _self.secondaryActiveColor
          : secondaryActiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      allowedInteraction: freezed == allowedInteraction
          ? _self.allowedInteraction
          : allowedInteraction // ignore: cast_nullable_to_non_nullable
              as SliderInteraction?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacSlider implements StacSlider {
  const _StacSlider(
      {this.id,
      this.sliderType = StacSliderType.material,
      required this.value,
      this.secondaryTrackValue,
      final Map<String, dynamic>? onChanged,
      final Map<String, dynamic>? onChangeStart,
      final Map<String, dynamic>? onChangeEnd,
      this.min = 0.0,
      this.max = 1.0,
      this.divisions,
      this.label,
      this.activeColor,
      this.inactiveColor,
      this.secondaryActiveColor,
      this.thumbColor,
      this.overlayColor,
      this.mouseCursor,
      this.autofocus = false,
      this.allowedInteraction})
      : _onChanged = onChanged,
        _onChangeStart = onChangeStart,
        _onChangeEnd = onChangeEnd;
  factory _StacSlider.fromJson(Map<String, dynamic> json) =>
      _$StacSliderFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey()
  final StacSliderType sliderType;
  @override
  final double value;
  @override
  final double? secondaryTrackValue;
  final Map<String, dynamic>? _onChanged;
  @override
  Map<String, dynamic>? get onChanged {
    final value = _onChanged;
    if (value == null) return null;
    if (_onChanged is EqualUnmodifiableMapView) return _onChanged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onChangeStart;
  @override
  Map<String, dynamic>? get onChangeStart {
    final value = _onChangeStart;
    if (value == null) return null;
    if (_onChangeStart is EqualUnmodifiableMapView) return _onChangeStart;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _onChangeEnd;
  @override
  Map<String, dynamic>? get onChangeEnd {
    final value = _onChangeEnd;
    if (value == null) return null;
    if (_onChangeEnd is EqualUnmodifiableMapView) return _onChangeEnd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final double min;
  @override
  @JsonKey()
  final double max;
  @override
  final int? divisions;
  @override
  final String? label;
  @override
  final String? activeColor;
  @override
  final String? inactiveColor;
  @override
  final String? secondaryActiveColor;
  @override
  final String? thumbColor;
  @override
  final String? overlayColor;
  @override
  final StacMouseCursor? mouseCursor;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  final SliderInteraction? allowedInteraction;

  /// Create a copy of StacSlider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacSliderCopyWith<_StacSlider> get copyWith =>
      __$StacSliderCopyWithImpl<_StacSlider>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacSliderToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacSlider &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sliderType, sliderType) ||
                other.sliderType == sliderType) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.secondaryTrackValue, secondaryTrackValue) ||
                other.secondaryTrackValue == secondaryTrackValue) &&
            const DeepCollectionEquality()
                .equals(other._onChanged, _onChanged) &&
            const DeepCollectionEquality()
                .equals(other._onChangeStart, _onChangeStart) &&
            const DeepCollectionEquality()
                .equals(other._onChangeEnd, _onChangeEnd) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.divisions, divisions) ||
                other.divisions == divisions) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.inactiveColor, inactiveColor) ||
                other.inactiveColor == inactiveColor) &&
            (identical(other.secondaryActiveColor, secondaryActiveColor) ||
                other.secondaryActiveColor == secondaryActiveColor) &&
            (identical(other.thumbColor, thumbColor) ||
                other.thumbColor == thumbColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.allowedInteraction, allowedInteraction) ||
                other.allowedInteraction == allowedInteraction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        sliderType,
        value,
        secondaryTrackValue,
        const DeepCollectionEquality().hash(_onChanged),
        const DeepCollectionEquality().hash(_onChangeStart),
        const DeepCollectionEquality().hash(_onChangeEnd),
        min,
        max,
        divisions,
        label,
        activeColor,
        inactiveColor,
        secondaryActiveColor,
        thumbColor,
        overlayColor,
        mouseCursor,
        autofocus,
        allowedInteraction
      ]);

  @override
  String toString() {
    return 'StacSlider(id: $id, sliderType: $sliderType, value: $value, secondaryTrackValue: $secondaryTrackValue, onChanged: $onChanged, onChangeStart: $onChangeStart, onChangeEnd: $onChangeEnd, min: $min, max: $max, divisions: $divisions, label: $label, activeColor: $activeColor, inactiveColor: $inactiveColor, secondaryActiveColor: $secondaryActiveColor, thumbColor: $thumbColor, overlayColor: $overlayColor, mouseCursor: $mouseCursor, autofocus: $autofocus, allowedInteraction: $allowedInteraction)';
  }
}

/// @nodoc
abstract mixin class _$StacSliderCopyWith<$Res>
    implements $StacSliderCopyWith<$Res> {
  factory _$StacSliderCopyWith(
          _StacSlider value, $Res Function(_StacSlider) _then) =
      __$StacSliderCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      StacSliderType sliderType,
      double value,
      double? secondaryTrackValue,
      Map<String, dynamic>? onChanged,
      Map<String, dynamic>? onChangeStart,
      Map<String, dynamic>? onChangeEnd,
      double min,
      double max,
      int? divisions,
      String? label,
      String? activeColor,
      String? inactiveColor,
      String? secondaryActiveColor,
      String? thumbColor,
      String? overlayColor,
      StacMouseCursor? mouseCursor,
      bool autofocus,
      SliderInteraction? allowedInteraction});
}

/// @nodoc
class __$StacSliderCopyWithImpl<$Res> implements _$StacSliderCopyWith<$Res> {
  __$StacSliderCopyWithImpl(this._self, this._then);

  final _StacSlider _self;
  final $Res Function(_StacSlider) _then;

  /// Create a copy of StacSlider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? sliderType = null,
    Object? value = null,
    Object? secondaryTrackValue = freezed,
    Object? onChanged = freezed,
    Object? onChangeStart = freezed,
    Object? onChangeEnd = freezed,
    Object? min = null,
    Object? max = null,
    Object? divisions = freezed,
    Object? label = freezed,
    Object? activeColor = freezed,
    Object? inactiveColor = freezed,
    Object? secondaryActiveColor = freezed,
    Object? thumbColor = freezed,
    Object? overlayColor = freezed,
    Object? mouseCursor = freezed,
    Object? autofocus = null,
    Object? allowedInteraction = freezed,
  }) {
    return _then(_StacSlider(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sliderType: null == sliderType
          ? _self.sliderType
          : sliderType // ignore: cast_nullable_to_non_nullable
              as StacSliderType,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      secondaryTrackValue: freezed == secondaryTrackValue
          ? _self.secondaryTrackValue
          : secondaryTrackValue // ignore: cast_nullable_to_non_nullable
              as double?,
      onChanged: freezed == onChanged
          ? _self._onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onChangeStart: freezed == onChangeStart
          ? _self._onChangeStart
          : onChangeStart // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      onChangeEnd: freezed == onChangeEnd
          ? _self._onChangeEnd
          : onChangeEnd // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      min: null == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      divisions: freezed == divisions
          ? _self.divisions
          : divisions // ignore: cast_nullable_to_non_nullable
              as int?,
      label: freezed == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveColor: freezed == inactiveColor
          ? _self.inactiveColor
          : inactiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryActiveColor: freezed == secondaryActiveColor
          ? _self.secondaryActiveColor
          : secondaryActiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbColor: freezed == thumbColor
          ? _self.thumbColor
          : thumbColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      allowedInteraction: freezed == allowedInteraction
          ? _self.allowedInteraction
          : allowedInteraction // ignore: cast_nullable_to_non_nullable
              as SliderInteraction?,
    ));
  }
}

// dart format on
