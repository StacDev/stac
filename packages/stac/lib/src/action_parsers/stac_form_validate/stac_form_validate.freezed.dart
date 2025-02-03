// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_form_validate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacFormValidate _$StacFormValidateFromJson(Map<String, dynamic> json) {
  return _StacFormValidate.fromJson(json);
}

/// @nodoc
mixin _$StacFormValidate {
  Map<String, dynamic>? get isValid => throw _privateConstructorUsedError;
  Map<String, dynamic>? get isNotValid => throw _privateConstructorUsedError;

  /// Serializes this StacFormValidate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacFormValidateCopyWith<StacFormValidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacFormValidateCopyWith<$Res> {
  factory $StacFormValidateCopyWith(
          StacFormValidate value, $Res Function(StacFormValidate) then) =
      _$StacFormValidateCopyWithImpl<$Res, StacFormValidate>;
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class _$StacFormValidateCopyWithImpl<$Res, $Val extends StacFormValidate>
    implements $StacFormValidateCopyWith<$Res> {
  _$StacFormValidateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? isNotValid = freezed,
  }) {
    return _then(_value.copyWith(
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isNotValid: freezed == isNotValid
          ? _value.isNotValid
          : isNotValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacFormValidateImplCopyWith<$Res>
    implements $StacFormValidateCopyWith<$Res> {
  factory _$$StacFormValidateImplCopyWith(_$StacFormValidateImpl value,
          $Res Function(_$StacFormValidateImpl) then) =
      __$$StacFormValidateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class __$$StacFormValidateImplCopyWithImpl<$Res>
    extends _$StacFormValidateCopyWithImpl<$Res, _$StacFormValidateImpl>
    implements _$$StacFormValidateImplCopyWith<$Res> {
  __$$StacFormValidateImplCopyWithImpl(_$StacFormValidateImpl _value,
      $Res Function(_$StacFormValidateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? isNotValid = freezed,
  }) {
    return _then(_$StacFormValidateImpl(
      isValid: freezed == isValid
          ? _value._isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isNotValid: freezed == isNotValid
          ? _value._isNotValid
          : isNotValid // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacFormValidateImpl implements _StacFormValidate {
  const _$StacFormValidateImpl(
      {final Map<String, dynamic>? isValid,
      final Map<String, dynamic>? isNotValid})
      : _isValid = isValid,
        _isNotValid = isNotValid;

  factory _$StacFormValidateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacFormValidateImplFromJson(json);

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

  @override
  String toString() {
    return 'StacFormValidate(isValid: $isValid, isNotValid: $isNotValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacFormValidateImpl &&
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

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacFormValidateImplCopyWith<_$StacFormValidateImpl> get copyWith =>
      __$$StacFormValidateImplCopyWithImpl<_$StacFormValidateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacFormValidateImplToJson(
      this,
    );
  }
}

abstract class _StacFormValidate implements StacFormValidate {
  const factory _StacFormValidate(
      {final Map<String, dynamic>? isValid,
      final Map<String, dynamic>? isNotValid}) = _$StacFormValidateImpl;

  factory _StacFormValidate.fromJson(Map<String, dynamic> json) =
      _$StacFormValidateImpl.fromJson;

  @override
  Map<String, dynamic>? get isValid;
  @override
  Map<String, dynamic>? get isNotValid;

  /// Create a copy of StacFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacFormValidateImplCopyWith<_$StacFormValidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
