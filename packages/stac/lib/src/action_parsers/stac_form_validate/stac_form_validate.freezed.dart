// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_form_validate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacFormValidate {
  Map<String, dynamic>? get isValid;
  Map<String, dynamic>? get isNotValid;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacFormValidateCopyWith<StacFormValidate> get copyWith =>
      _$StacFormValidateCopyWithImpl<StacFormValidate>(
          this as StacFormValidate, _$identity);

  /// Serializes this StacFormValidate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacFormValidate &&
            const DeepCollectionEquality().equals(other.isValid, isValid) &&
            const DeepCollectionEquality()
                .equals(other.isNotValid, isNotValid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isValid),
      const DeepCollectionEquality().hash(isNotValid));

  @override
  String toString() {
    return 'StacFormValidate(isValid: $isValid, isNotValid: $isNotValid)';
  }
}

/// @nodoc
abstract mixin class $StacFormValidateCopyWith<$Res> {
  factory $StacFormValidateCopyWith(
          StacFormValidate value, $Res Function(StacFormValidate) _then) =
      _$StacFormValidateCopyWithImpl;
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class _$StacFormValidateCopyWithImpl<$Res>
    implements $StacFormValidateCopyWith<$Res> {
  _$StacFormValidateCopyWithImpl(this._self, this._then);

  final StacFormValidate _self;
  final $Res Function(StacFormValidate) _then;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? isNotValid = freezed,
  }) {
    return _then(_self.copyWith(
      isValid: freezed == isValid
          ? _self.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isNotValid: freezed == isNotValid
          ? _self.isNotValid
          : isNotValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacFormValidate implements StacFormValidate {
  const _StacFormValidate(
      {final Map<String, dynamic>? isValid,
      final Map<String, dynamic>? isNotValid})
      : _isValid = isValid,
        _isNotValid = isNotValid;
  factory _StacFormValidate.fromJson(Map<String, dynamic> json) =>
      _$StacFormValidateFromJson(json);

  final Map<String, dynamic>? _isValid;
  @override
  Map<String, dynamic>? get isValid {
    final value = _isValid;
    if (value == null) return null;
    if (_isValid is EqualUnmodifiableMapView) return _isValid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, dynamic>? _isNotValid;
  @override
  Map<String, dynamic>? get isNotValid {
    final value = _isNotValid;
    if (value == null) return null;
    if (_isNotValid is EqualUnmodifiableMapView) return _isNotValid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacFormValidateCopyWith<_StacFormValidate> get copyWith =>
      __$StacFormValidateCopyWithImpl<_StacFormValidate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacFormValidateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacFormValidate &&
            const DeepCollectionEquality().equals(other._isValid, _isValid) &&
            const DeepCollectionEquality()
                .equals(other._isNotValid, _isNotValid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_isValid),
      const DeepCollectionEquality().hash(_isNotValid));

  @override
  String toString() {
    return 'StacFormValidate(isValid: $isValid, isNotValid: $isNotValid)';
  }
}

/// @nodoc
abstract mixin class _$StacFormValidateCopyWith<$Res>
    implements $StacFormValidateCopyWith<$Res> {
  factory _$StacFormValidateCopyWith(
          _StacFormValidate value, $Res Function(_StacFormValidate) _then) =
      __$StacFormValidateCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class __$StacFormValidateCopyWithImpl<$Res>
    implements _$StacFormValidateCopyWith<$Res> {
  __$StacFormValidateCopyWithImpl(this._self, this._then);

  final _StacFormValidate _self;
  final $Res Function(_StacFormValidate) _then;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isValid = freezed,
    Object? isNotValid = freezed,
  }) {
    return _then(_StacFormValidate(
      isValid: freezed == isValid
          ? _self._isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isNotValid: freezed == isNotValid
          ? _self._isNotValid
          : isNotValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
