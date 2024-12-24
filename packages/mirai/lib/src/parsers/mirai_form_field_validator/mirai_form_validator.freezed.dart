// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiFormFieldValidator _$MiraiFormFieldValidatorFromJson(
    Map<String, dynamic> json) {
  return _MiraiFormFieldValidator.fromJson(json);
}

/// @nodoc
mixin _$MiraiFormFieldValidator {
  String get rule => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this MiraiFormFieldValidator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiFormFieldValidatorCopyWith<MiraiFormFieldValidator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormFieldValidatorCopyWith<$Res> {
  factory $MiraiFormFieldValidatorCopyWith(MiraiFormFieldValidator value,
          $Res Function(MiraiFormFieldValidator) then) =
      _$MiraiFormFieldValidatorCopyWithImpl<$Res, MiraiFormFieldValidator>;
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class _$MiraiFormFieldValidatorCopyWithImpl<$Res,
        $Val extends MiraiFormFieldValidator>
    implements $MiraiFormFieldValidatorCopyWith<$Res> {
  _$MiraiFormFieldValidatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiFormFieldValidatorImplCopyWith<$Res>
    implements $MiraiFormFieldValidatorCopyWith<$Res> {
  factory _$$MiraiFormFieldValidatorImplCopyWith(
          _$MiraiFormFieldValidatorImpl value,
          $Res Function(_$MiraiFormFieldValidatorImpl) then) =
      __$$MiraiFormFieldValidatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class __$$MiraiFormFieldValidatorImplCopyWithImpl<$Res>
    extends _$MiraiFormFieldValidatorCopyWithImpl<$Res,
        _$MiraiFormFieldValidatorImpl>
    implements _$$MiraiFormFieldValidatorImplCopyWith<$Res> {
  __$$MiraiFormFieldValidatorImplCopyWithImpl(
      _$MiraiFormFieldValidatorImpl _value,
      $Res Function(_$MiraiFormFieldValidatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_$MiraiFormFieldValidatorImpl(
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiFormFieldValidatorImpl implements _MiraiFormFieldValidator {
  const _$MiraiFormFieldValidatorImpl({required this.rule, this.message});

  factory _$MiraiFormFieldValidatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiFormFieldValidatorImplFromJson(json);

  @override
  final String rule;
  @override
  final String? message;

  @override
  String toString() {
    return 'MiraiFormFieldValidator(rule: $rule, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiFormFieldValidatorImpl &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rule, message);

  /// Create a copy of MiraiFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiFormFieldValidatorImplCopyWith<_$MiraiFormFieldValidatorImpl>
      get copyWith => __$$MiraiFormFieldValidatorImplCopyWithImpl<
          _$MiraiFormFieldValidatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiFormFieldValidatorImplToJson(
      this,
    );
  }
}

abstract class _MiraiFormFieldValidator implements MiraiFormFieldValidator {
  const factory _MiraiFormFieldValidator(
      {required final String rule,
      final String? message}) = _$MiraiFormFieldValidatorImpl;

  factory _MiraiFormFieldValidator.fromJson(Map<String, dynamic> json) =
      _$MiraiFormFieldValidatorImpl.fromJson;

  @override
  String get rule;
  @override
  String? get message;

  /// Create a copy of MiraiFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiFormFieldValidatorImplCopyWith<_$MiraiFormFieldValidatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
