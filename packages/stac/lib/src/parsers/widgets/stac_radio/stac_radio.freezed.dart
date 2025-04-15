// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_radio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacRadio {
  StacRadioType get radioType;
  dynamic get value;
  Map<String, dynamic>? get onChanged;
  StacMouseCursor? get mouseCursor;
  bool get toggleable;
  String? get activeColor;
  String? get inactiveColor;
  String? get fillColor;
  String? get focusColor;
  String? get hoverColor;
  String? get overlayColor;
  double? get splashRadius;
  MaterialTapTargetSize? get materialTapTargetSize;
  StacVisualDensity? get visualDensity;
  bool get autofocus;
  bool get useCheckmarkStyle;
  bool get useCupertinoCheckmarkStyle;

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacRadioCopyWith<StacRadio> get copyWith =>
      _$StacRadioCopyWithImpl<StacRadio>(this as StacRadio, _$identity);

  /// Serializes this StacRadio to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacRadio &&
            (identical(other.radioType, radioType) ||
                other.radioType == radioType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.onChanged, onChanged) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.toggleable, toggleable) ||
                other.toggleable == toggleable) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.inactiveColor, inactiveColor) ||
                other.inactiveColor == inactiveColor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.useCheckmarkStyle, useCheckmarkStyle) ||
                other.useCheckmarkStyle == useCheckmarkStyle) &&
            (identical(other.useCupertinoCheckmarkStyle,
                    useCupertinoCheckmarkStyle) ||
                other.useCupertinoCheckmarkStyle ==
                    useCupertinoCheckmarkStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      radioType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(onChanged),
      mouseCursor,
      toggleable,
      activeColor,
      inactiveColor,
      fillColor,
      focusColor,
      hoverColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      visualDensity,
      autofocus,
      useCheckmarkStyle,
      useCupertinoCheckmarkStyle);

  @override
  String toString() {
    return 'StacRadio(radioType: $radioType, value: $value, onChanged: $onChanged, mouseCursor: $mouseCursor, toggleable: $toggleable, activeColor: $activeColor, inactiveColor: $inactiveColor, fillColor: $fillColor, focusColor: $focusColor, hoverColor: $hoverColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, visualDensity: $visualDensity, autofocus: $autofocus, useCheckmarkStyle: $useCheckmarkStyle, useCupertinoCheckmarkStyle: $useCupertinoCheckmarkStyle)';
  }
}

/// @nodoc
abstract mixin class $StacRadioCopyWith<$Res> {
  factory $StacRadioCopyWith(StacRadio value, $Res Function(StacRadio) _then) =
      _$StacRadioCopyWithImpl;
  @useResult
  $Res call(
      {StacRadioType radioType,
      dynamic value,
      Map<String, dynamic>? onChanged,
      StacMouseCursor? mouseCursor,
      bool toggleable,
      String? activeColor,
      String? inactiveColor,
      String? fillColor,
      String? focusColor,
      String? hoverColor,
      String? overlayColor,
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      StacVisualDensity? visualDensity,
      bool autofocus,
      bool useCheckmarkStyle,
      bool useCupertinoCheckmarkStyle});

  $StacVisualDensityCopyWith<$Res>? get visualDensity;
}

/// @nodoc
class _$StacRadioCopyWithImpl<$Res> implements $StacRadioCopyWith<$Res> {
  _$StacRadioCopyWithImpl(this._self, this._then);

  final StacRadio _self;
  final $Res Function(StacRadio) _then;

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? radioType = null,
    Object? value = freezed,
    Object? onChanged = freezed,
    Object? mouseCursor = freezed,
    Object? toggleable = null,
    Object? activeColor = freezed,
    Object? inactiveColor = freezed,
    Object? fillColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? visualDensity = freezed,
    Object? autofocus = null,
    Object? useCheckmarkStyle = null,
    Object? useCupertinoCheckmarkStyle = null,
  }) {
    return _then(_self.copyWith(
      radioType: null == radioType
          ? _self.radioType
          : radioType // ignore: cast_nullable_to_non_nullable
              as StacRadioType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onChanged: freezed == onChanged
          ? _self.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      toggleable: null == toggleable
          ? _self.toggleable
          : toggleable // ignore: cast_nullable_to_non_nullable
              as bool,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveColor: freezed == inactiveColor
          ? _self.inactiveColor
          : inactiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      useCheckmarkStyle: null == useCheckmarkStyle
          ? _self.useCheckmarkStyle
          : useCheckmarkStyle // ignore: cast_nullable_to_non_nullable
              as bool,
      useCupertinoCheckmarkStyle: null == useCupertinoCheckmarkStyle
          ? _self.useCupertinoCheckmarkStyle
          : useCupertinoCheckmarkStyle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacRadio implements StacRadio {
  const _StacRadio(
      {this.radioType = StacRadioType.material,
      this.value,
      final Map<String, dynamic>? onChanged,
      this.mouseCursor,
      this.toggleable = false,
      this.activeColor,
      this.inactiveColor,
      this.fillColor,
      this.focusColor,
      this.hoverColor,
      this.overlayColor,
      this.splashRadius,
      this.materialTapTargetSize,
      this.visualDensity,
      this.autofocus = false,
      this.useCheckmarkStyle = false,
      this.useCupertinoCheckmarkStyle = false})
      : _onChanged = onChanged;
  factory _StacRadio.fromJson(Map<String, dynamic> json) =>
      _$StacRadioFromJson(json);

  @override
  @JsonKey()
  final StacRadioType radioType;
  @override
  final dynamic value;
  final Map<String, dynamic>? _onChanged;
  @override
  Map<String, dynamic>? get onChanged {
    final value = _onChanged;
    if (value == null) return null;
    if (_onChanged is EqualUnmodifiableMapView) return _onChanged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StacMouseCursor? mouseCursor;
  @override
  @JsonKey()
  final bool toggleable;
  @override
  final String? activeColor;
  @override
  final String? inactiveColor;
  @override
  final String? fillColor;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  final String? overlayColor;
  @override
  final double? splashRadius;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  final StacVisualDensity? visualDensity;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  @JsonKey()
  final bool useCheckmarkStyle;
  @override
  @JsonKey()
  final bool useCupertinoCheckmarkStyle;

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacRadioCopyWith<_StacRadio> get copyWith =>
      __$StacRadioCopyWithImpl<_StacRadio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacRadioToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacRadio &&
            (identical(other.radioType, radioType) ||
                other.radioType == radioType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._onChanged, _onChanged) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.toggleable, toggleable) ||
                other.toggleable == toggleable) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.inactiveColor, inactiveColor) ||
                other.inactiveColor == inactiveColor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.overlayColor, overlayColor) ||
                other.overlayColor == overlayColor) &&
            (identical(other.splashRadius, splashRadius) ||
                other.splashRadius == splashRadius) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.visualDensity, visualDensity) ||
                other.visualDensity == visualDensity) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.useCheckmarkStyle, useCheckmarkStyle) ||
                other.useCheckmarkStyle == useCheckmarkStyle) &&
            (identical(other.useCupertinoCheckmarkStyle,
                    useCupertinoCheckmarkStyle) ||
                other.useCupertinoCheckmarkStyle ==
                    useCupertinoCheckmarkStyle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      radioType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_onChanged),
      mouseCursor,
      toggleable,
      activeColor,
      inactiveColor,
      fillColor,
      focusColor,
      hoverColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      visualDensity,
      autofocus,
      useCheckmarkStyle,
      useCupertinoCheckmarkStyle);

  @override
  String toString() {
    return 'StacRadio(radioType: $radioType, value: $value, onChanged: $onChanged, mouseCursor: $mouseCursor, toggleable: $toggleable, activeColor: $activeColor, inactiveColor: $inactiveColor, fillColor: $fillColor, focusColor: $focusColor, hoverColor: $hoverColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, visualDensity: $visualDensity, autofocus: $autofocus, useCheckmarkStyle: $useCheckmarkStyle, useCupertinoCheckmarkStyle: $useCupertinoCheckmarkStyle)';
  }
}

/// @nodoc
abstract mixin class _$StacRadioCopyWith<$Res>
    implements $StacRadioCopyWith<$Res> {
  factory _$StacRadioCopyWith(
          _StacRadio value, $Res Function(_StacRadio) _then) =
      __$StacRadioCopyWithImpl;
  @override
  @useResult
  $Res call(
      {StacRadioType radioType,
      dynamic value,
      Map<String, dynamic>? onChanged,
      StacMouseCursor? mouseCursor,
      bool toggleable,
      String? activeColor,
      String? inactiveColor,
      String? fillColor,
      String? focusColor,
      String? hoverColor,
      String? overlayColor,
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      StacVisualDensity? visualDensity,
      bool autofocus,
      bool useCheckmarkStyle,
      bool useCupertinoCheckmarkStyle});

  @override
  $StacVisualDensityCopyWith<$Res>? get visualDensity;
}

/// @nodoc
class __$StacRadioCopyWithImpl<$Res> implements _$StacRadioCopyWith<$Res> {
  __$StacRadioCopyWithImpl(this._self, this._then);

  final _StacRadio _self;
  final $Res Function(_StacRadio) _then;

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? radioType = null,
    Object? value = freezed,
    Object? onChanged = freezed,
    Object? mouseCursor = freezed,
    Object? toggleable = null,
    Object? activeColor = freezed,
    Object? inactiveColor = freezed,
    Object? fillColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? visualDensity = freezed,
    Object? autofocus = null,
    Object? useCheckmarkStyle = null,
    Object? useCupertinoCheckmarkStyle = null,
  }) {
    return _then(_StacRadio(
      radioType: null == radioType
          ? _self.radioType
          : radioType // ignore: cast_nullable_to_non_nullable
              as StacRadioType,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onChanged: freezed == onChanged
          ? _self._onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      toggleable: null == toggleable
          ? _self.toggleable
          : toggleable // ignore: cast_nullable_to_non_nullable
              as bool,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      inactiveColor: freezed == inactiveColor
          ? _self.inactiveColor
          : inactiveColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _self.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _self.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _self.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as String?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      visualDensity: freezed == visualDensity
          ? _self.visualDensity
          : visualDensity // ignore: cast_nullable_to_non_nullable
              as StacVisualDensity?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      useCheckmarkStyle: null == useCheckmarkStyle
          ? _self.useCheckmarkStyle
          : useCheckmarkStyle // ignore: cast_nullable_to_non_nullable
              as bool,
      useCupertinoCheckmarkStyle: null == useCupertinoCheckmarkStyle
          ? _self.useCupertinoCheckmarkStyle
          : useCupertinoCheckmarkStyle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacRadio
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacVisualDensityCopyWith<$Res>? get visualDensity {
    if (_self.visualDensity == null) {
      return null;
    }

    return $StacVisualDensityCopyWith<$Res>(_self.visualDensity!, (value) {
      return _then(_self.copyWith(visualDensity: value));
    });
  }
}

// dart format on
