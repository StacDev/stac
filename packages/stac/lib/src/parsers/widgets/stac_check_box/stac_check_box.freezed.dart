// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_check_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacCheckBox {
  String? get id;
  bool? get value;
  bool get tristate;
  Map<String, dynamic>? get onChanged;
  StacMouseCursor? get mouseCursor;
  String? get activeColor;
  StacMaterialColor? get fillColor;
  String? get checkColor;
  String? get focusColor;
  String? get hoverColor;
  StacMaterialColor? get overlayColor;
  StacDouble? get splashRadius;
  MaterialTapTargetSize? get materialTapTargetSize;
  bool get autofocus;
  bool get isError;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacCheckBoxCopyWith<StacCheckBox> get copyWith =>
      _$StacCheckBoxCopyWithImpl<StacCheckBox>(
          this as StacCheckBox, _$identity);

  /// Serializes this StacCheckBox to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacCheckBox &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tristate, tristate) ||
                other.tristate == tristate) &&
            const DeepCollectionEquality().equals(other.onChanged, onChanged) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.checkColor, checkColor) ||
                other.checkColor == checkColor) &&
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
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      value,
      tristate,
      const DeepCollectionEquality().hash(onChanged),
      mouseCursor,
      activeColor,
      fillColor,
      checkColor,
      focusColor,
      hoverColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      autofocus,
      isError);

  @override
  String toString() {
    return 'StacCheckBox(id: $id, value: $value, tristate: $tristate, onChanged: $onChanged, mouseCursor: $mouseCursor, activeColor: $activeColor, fillColor: $fillColor, checkColor: $checkColor, focusColor: $focusColor, hoverColor: $hoverColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, autofocus: $autofocus, isError: $isError)';
  }
}

/// @nodoc
abstract mixin class $StacCheckBoxCopyWith<$Res> {
  factory $StacCheckBoxCopyWith(
          StacCheckBox value, $Res Function(StacCheckBox) _then) =
      _$StacCheckBoxCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      bool? value,
      bool tristate,
      Map<String, dynamic>? onChanged,
      StacMouseCursor? mouseCursor,
      String? activeColor,
      StacMaterialColor? fillColor,
      String? checkColor,
      String? focusColor,
      String? hoverColor,
      StacMaterialColor? overlayColor,
      StacDouble? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      bool autofocus,
      bool isError});

  $StacMaterialColorCopyWith<$Res>? get fillColor;
  $StacMaterialColorCopyWith<$Res>? get overlayColor;
}

/// @nodoc
class _$StacCheckBoxCopyWithImpl<$Res> implements $StacCheckBoxCopyWith<$Res> {
  _$StacCheckBoxCopyWithImpl(this._self, this._then);

  final StacCheckBox _self;
  final $Res Function(StacCheckBox) _then;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? tristate = null,
    Object? onChanged = freezed,
    Object? mouseCursor = freezed,
    Object? activeColor = freezed,
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? autofocus = null,
    Object? isError = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      tristate: null == tristate
          ? _self.tristate
          : tristate // ignore: cast_nullable_to_non_nullable
              as bool,
      onChanged: freezed == onChanged
          ? _self.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      checkColor: freezed == checkColor
          ? _self.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
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
              as StacMaterialColor?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get fillColor {
    if (_self.fillColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.fillColor!, (value) {
      return _then(_self.copyWith(fillColor: value));
    });
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get overlayColor {
    if (_self.overlayColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.overlayColor!, (value) {
      return _then(_self.copyWith(overlayColor: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _StacCheckBox implements StacCheckBox {
  const _StacCheckBox(
      {this.id,
      this.value,
      this.tristate = false,
      final Map<String, dynamic>? onChanged,
      this.mouseCursor,
      this.activeColor,
      this.fillColor,
      this.checkColor,
      this.focusColor,
      this.hoverColor,
      this.overlayColor,
      this.splashRadius,
      this.materialTapTargetSize,
      this.autofocus = false,
      this.isError = false})
      : _onChanged = onChanged;
  factory _StacCheckBox.fromJson(Map<String, dynamic> json) =>
      _$StacCheckBoxFromJson(json);

  @override
  final String? id;
  @override
  final bool? value;
  @override
  @JsonKey()
  final bool tristate;
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
  final String? activeColor;
  @override
  final StacMaterialColor? fillColor;
  @override
  final String? checkColor;
  @override
  final String? focusColor;
  @override
  final String? hoverColor;
  @override
  final StacMaterialColor? overlayColor;
  @override
  final StacDouble? splashRadius;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  @JsonKey()
  final bool isError;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacCheckBoxCopyWith<_StacCheckBox> get copyWith =>
      __$StacCheckBoxCopyWithImpl<_StacCheckBox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacCheckBoxToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacCheckBox &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.tristate, tristate) ||
                other.tristate == tristate) &&
            const DeepCollectionEquality()
                .equals(other._onChanged, _onChanged) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.activeColor, activeColor) ||
                other.activeColor == activeColor) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.checkColor, checkColor) ||
                other.checkColor == checkColor) &&
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
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      value,
      tristate,
      const DeepCollectionEquality().hash(_onChanged),
      mouseCursor,
      activeColor,
      fillColor,
      checkColor,
      focusColor,
      hoverColor,
      overlayColor,
      splashRadius,
      materialTapTargetSize,
      autofocus,
      isError);

  @override
  String toString() {
    return 'StacCheckBox(id: $id, value: $value, tristate: $tristate, onChanged: $onChanged, mouseCursor: $mouseCursor, activeColor: $activeColor, fillColor: $fillColor, checkColor: $checkColor, focusColor: $focusColor, hoverColor: $hoverColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, autofocus: $autofocus, isError: $isError)';
  }
}

/// @nodoc
abstract mixin class _$StacCheckBoxCopyWith<$Res>
    implements $StacCheckBoxCopyWith<$Res> {
  factory _$StacCheckBoxCopyWith(
          _StacCheckBox value, $Res Function(_StacCheckBox) _then) =
      __$StacCheckBoxCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      bool? value,
      bool tristate,
      Map<String, dynamic>? onChanged,
      StacMouseCursor? mouseCursor,
      String? activeColor,
      StacMaterialColor? fillColor,
      String? checkColor,
      String? focusColor,
      String? hoverColor,
      StacMaterialColor? overlayColor,
      StacDouble? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      bool autofocus,
      bool isError});

  @override
  $StacMaterialColorCopyWith<$Res>? get fillColor;
  @override
  $StacMaterialColorCopyWith<$Res>? get overlayColor;
}

/// @nodoc
class __$StacCheckBoxCopyWithImpl<$Res>
    implements _$StacCheckBoxCopyWith<$Res> {
  __$StacCheckBoxCopyWithImpl(this._self, this._then);

  final _StacCheckBox _self;
  final $Res Function(_StacCheckBox) _then;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? tristate = null,
    Object? onChanged = freezed,
    Object? mouseCursor = freezed,
    Object? activeColor = freezed,
    Object? fillColor = freezed,
    Object? checkColor = freezed,
    Object? focusColor = freezed,
    Object? hoverColor = freezed,
    Object? overlayColor = freezed,
    Object? splashRadius = freezed,
    Object? materialTapTargetSize = freezed,
    Object? autofocus = null,
    Object? isError = null,
  }) {
    return _then(_StacCheckBox(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      tristate: null == tristate
          ? _self.tristate
          : tristate // ignore: cast_nullable_to_non_nullable
              as bool,
      onChanged: freezed == onChanged
          ? _self._onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _self.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      activeColor: freezed == activeColor
          ? _self.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _self.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      checkColor: freezed == checkColor
          ? _self.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
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
              as StacMaterialColor?,
      splashRadius: freezed == splashRadius
          ? _self.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as StacDouble?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _self.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      autofocus: null == autofocus
          ? _self.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _self.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get fillColor {
    if (_self.fillColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.fillColor!, (value) {
      return _then(_self.copyWith(fillColor: value));
    });
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get overlayColor {
    if (_self.overlayColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_self.overlayColor!, (value) {
      return _then(_self.copyWith(overlayColor: value));
    });
  }
}

// dart format on
