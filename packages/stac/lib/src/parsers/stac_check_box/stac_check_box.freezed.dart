// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_check_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacCheckBox _$StacCheckBoxFromJson(Map<String, dynamic> json) {
  return _StacCheckBox.fromJson(json);
}

/// @nodoc
mixin _$StacCheckBox {
  String? get id => throw _privateConstructorUsedError;
  bool? get value => throw _privateConstructorUsedError;
  bool get tristate => throw _privateConstructorUsedError;
  Map<String, dynamic>? get onChanged => throw _privateConstructorUsedError;
  StacMouseCursor? get mouseCursor => throw _privateConstructorUsedError;
  String? get activeColor => throw _privateConstructorUsedError;
  StacMaterialColor? get fillColor => throw _privateConstructorUsedError;
  String? get checkColor => throw _privateConstructorUsedError;
  String? get focusColor => throw _privateConstructorUsedError;
  String? get hoverColor => throw _privateConstructorUsedError;
  StacMaterialColor? get overlayColor => throw _privateConstructorUsedError;
  double? get splashRadius => throw _privateConstructorUsedError;
  MaterialTapTargetSize? get materialTapTargetSize =>
      throw _privateConstructorUsedError;
  bool get autofocus => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  /// Serializes this StacCheckBox to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacCheckBoxCopyWith<StacCheckBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacCheckBoxCopyWith<$Res> {
  factory $StacCheckBoxCopyWith(
          StacCheckBox value, $Res Function(StacCheckBox) then) =
      _$StacCheckBoxCopyWithImpl<$Res, StacCheckBox>;
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
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      bool autofocus,
      bool isError});

  $StacMaterialColorCopyWith<$Res>? get fillColor;
  $StacMaterialColorCopyWith<$Res>? get overlayColor;
}

/// @nodoc
class _$StacCheckBoxCopyWithImpl<$Res, $Val extends StacCheckBox>
    implements $StacCheckBoxCopyWith<$Res> {
  _$StacCheckBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      tristate: null == tristate
          ? _value.tristate
          : tristate // ignore: cast_nullable_to_non_nullable
              as bool,
      onChanged: freezed == onChanged
          ? _value.onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _value.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      activeColor: freezed == activeColor
          ? _value.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      checkColor: freezed == checkColor
          ? _value.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _value.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _value.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _value.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      autofocus: null == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get fillColor {
    if (_value.fillColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_value.fillColor!, (value) {
      return _then(_value.copyWith(fillColor: value) as $Val);
    });
  }

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StacMaterialColorCopyWith<$Res>? get overlayColor {
    if (_value.overlayColor == null) {
      return null;
    }

    return $StacMaterialColorCopyWith<$Res>(_value.overlayColor!, (value) {
      return _then(_value.copyWith(overlayColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StacCheckBoxImplCopyWith<$Res>
    implements $StacCheckBoxCopyWith<$Res> {
  factory _$$StacCheckBoxImplCopyWith(
          _$StacCheckBoxImpl value, $Res Function(_$StacCheckBoxImpl) then) =
      __$$StacCheckBoxImplCopyWithImpl<$Res>;
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
      double? splashRadius,
      MaterialTapTargetSize? materialTapTargetSize,
      bool autofocus,
      bool isError});

  @override
  $StacMaterialColorCopyWith<$Res>? get fillColor;
  @override
  $StacMaterialColorCopyWith<$Res>? get overlayColor;
}

/// @nodoc
class __$$StacCheckBoxImplCopyWithImpl<$Res>
    extends _$StacCheckBoxCopyWithImpl<$Res, _$StacCheckBoxImpl>
    implements _$$StacCheckBoxImplCopyWith<$Res> {
  __$$StacCheckBoxImplCopyWithImpl(
      _$StacCheckBoxImpl _value, $Res Function(_$StacCheckBoxImpl) _then)
      : super(_value, _then);

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
    return _then(_$StacCheckBoxImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      tristate: null == tristate
          ? _value.tristate
          : tristate // ignore: cast_nullable_to_non_nullable
              as bool,
      onChanged: freezed == onChanged
          ? _value._onChanged
          : onChanged // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      mouseCursor: freezed == mouseCursor
          ? _value.mouseCursor
          : mouseCursor // ignore: cast_nullable_to_non_nullable
              as StacMouseCursor?,
      activeColor: freezed == activeColor
          ? _value.activeColor
          : activeColor // ignore: cast_nullable_to_non_nullable
              as String?,
      fillColor: freezed == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      checkColor: freezed == checkColor
          ? _value.checkColor
          : checkColor // ignore: cast_nullable_to_non_nullable
              as String?,
      focusColor: freezed == focusColor
          ? _value.focusColor
          : focusColor // ignore: cast_nullable_to_non_nullable
              as String?,
      hoverColor: freezed == hoverColor
          ? _value.hoverColor
          : hoverColor // ignore: cast_nullable_to_non_nullable
              as String?,
      overlayColor: freezed == overlayColor
          ? _value.overlayColor
          : overlayColor // ignore: cast_nullable_to_non_nullable
              as StacMaterialColor?,
      splashRadius: freezed == splashRadius
          ? _value.splashRadius
          : splashRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      materialTapTargetSize: freezed == materialTapTargetSize
          ? _value.materialTapTargetSize
          : materialTapTargetSize // ignore: cast_nullable_to_non_nullable
              as MaterialTapTargetSize?,
      autofocus: null == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacCheckBoxImpl implements _StacCheckBox {
  const _$StacCheckBoxImpl(
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

  factory _$StacCheckBoxImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacCheckBoxImplFromJson(json);

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
  final double? splashRadius;
  @override
  final MaterialTapTargetSize? materialTapTargetSize;
  @override
  @JsonKey()
  final bool autofocus;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'StacCheckBox(id: $id, value: $value, tristate: $tristate, onChanged: $onChanged, mouseCursor: $mouseCursor, activeColor: $activeColor, fillColor: $fillColor, checkColor: $checkColor, focusColor: $focusColor, hoverColor: $hoverColor, overlayColor: $overlayColor, splashRadius: $splashRadius, materialTapTargetSize: $materialTapTargetSize, autofocus: $autofocus, isError: $isError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacCheckBoxImpl &&
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

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacCheckBoxImplCopyWith<_$StacCheckBoxImpl> get copyWith =>
      __$$StacCheckBoxImplCopyWithImpl<_$StacCheckBoxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacCheckBoxImplToJson(
      this,
    );
  }
}

abstract class _StacCheckBox implements StacCheckBox {
  const factory _StacCheckBox(
      {final String? id,
      final bool? value,
      final bool tristate,
      final Map<String, dynamic>? onChanged,
      final StacMouseCursor? mouseCursor,
      final String? activeColor,
      final StacMaterialColor? fillColor,
      final String? checkColor,
      final String? focusColor,
      final String? hoverColor,
      final StacMaterialColor? overlayColor,
      final double? splashRadius,
      final MaterialTapTargetSize? materialTapTargetSize,
      final bool autofocus,
      final bool isError}) = _$StacCheckBoxImpl;

  factory _StacCheckBox.fromJson(Map<String, dynamic> json) =
      _$StacCheckBoxImpl.fromJson;

  @override
  String? get id;
  @override
  bool? get value;
  @override
  bool get tristate;
  @override
  Map<String, dynamic>? get onChanged;
  @override
  StacMouseCursor? get mouseCursor;
  @override
  String? get activeColor;
  @override
  StacMaterialColor? get fillColor;
  @override
  String? get checkColor;
  @override
  String? get focusColor;
  @override
  String? get hoverColor;
  @override
  StacMaterialColor? get overlayColor;
  @override
  double? get splashRadius;
  @override
  MaterialTapTargetSize? get materialTapTargetSize;
  @override
  bool get autofocus;
  @override
  bool get isError;

  /// Create a copy of StacCheckBox
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacCheckBoxImplCopyWith<_$StacCheckBoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
