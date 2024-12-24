// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form_validate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiFormValidate _$MiraiFormValidateFromJson(Map<String, dynamic> json) {
  return _MiraiFormValidate.fromJson(json);
}

/// @nodoc
mixin _$MiraiFormValidate {
  Map<String, dynamic>? get isValid => throw _privateConstructorUsedError;
  Map<String, dynamic>? get isNotValid => throw _privateConstructorUsedError;

  /// Serializes this MiraiFormValidate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiFormValidateCopyWith<MiraiFormValidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormValidateCopyWith<$Res> {
  factory $MiraiFormValidateCopyWith(
          MiraiFormValidate value, $Res Function(MiraiFormValidate) then) =
      _$MiraiFormValidateCopyWithImpl<$Res, MiraiFormValidate>;
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class _$MiraiFormValidateCopyWithImpl<$Res, $Val extends MiraiFormValidate>
    implements $MiraiFormValidateCopyWith<$Res> {
  _$MiraiFormValidateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiFormValidate
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
abstract class _$$MiraiFormValidateImplCopyWith<$Res>
    implements $MiraiFormValidateCopyWith<$Res> {
  factory _$$MiraiFormValidateImplCopyWith(_$MiraiFormValidateImpl value,
          $Res Function(_$MiraiFormValidateImpl) then) =
      __$$MiraiFormValidateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? isValid, Map<String, dynamic>? isNotValid});
}

/// @nodoc
class __$$MiraiFormValidateImplCopyWithImpl<$Res>
    extends _$MiraiFormValidateCopyWithImpl<$Res, _$MiraiFormValidateImpl>
    implements _$$MiraiFormValidateImplCopyWith<$Res> {
  __$$MiraiFormValidateImplCopyWithImpl(_$MiraiFormValidateImpl _value,
      $Res Function(_$MiraiFormValidateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValid = freezed,
    Object? isNotValid = freezed,
  }) {
    return _then(_$MiraiFormValidateImpl(
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
class _$MiraiFormValidateImpl implements _MiraiFormValidate {
  const _$MiraiFormValidateImpl(
      {final Map<String, dynamic>? isValid,
      final Map<String, dynamic>? isNotValid})
      : _isValid = isValid,
        _isNotValid = isNotValid;

  factory _$MiraiFormValidateImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiFormValidateImplFromJson(json);

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
    return 'MiraiFormValidate(isValid: $isValid, isNotValid: $isNotValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiFormValidateImpl &&
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

  /// Create a copy of MiraiFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiFormValidateImplCopyWith<_$MiraiFormValidateImpl> get copyWith =>
      __$$MiraiFormValidateImplCopyWithImpl<_$MiraiFormValidateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiFormValidateImplToJson(
      this,
    );
  }
}

abstract class _MiraiFormValidate implements MiraiFormValidate {
  const factory _MiraiFormValidate(
      {final Map<String, dynamic>? isValid,
      final Map<String, dynamic>? isNotValid}) = _$MiraiFormValidateImpl;

  factory _MiraiFormValidate.fromJson(Map<String, dynamic> json) =
      _$MiraiFormValidateImpl.fromJson;

  @override
  Map<String, dynamic>? get isValid;
  @override
  Map<String, dynamic>? get isNotValid;

  /// Create a copy of MiraiFormValidate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiFormValidateImplCopyWith<_$MiraiFormValidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
