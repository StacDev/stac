// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_form_validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StacFormFieldValidator {
  String get rule;
  String? get message;

  /// Create a copy of StacFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StacFormFieldValidatorCopyWith<StacFormFieldValidator> get copyWith =>
      _$StacFormFieldValidatorCopyWithImpl<StacFormFieldValidator>(
          this as StacFormFieldValidator, _$identity);

  /// Serializes this StacFormFieldValidator to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StacFormFieldValidator &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rule, message);

  @override
  String toString() {
    return 'StacFormFieldValidator(rule: $rule, message: $message)';
  }
}

/// @nodoc
abstract mixin class $StacFormFieldValidatorCopyWith<$Res> {
  factory $StacFormFieldValidatorCopyWith(StacFormFieldValidator value,
          $Res Function(StacFormFieldValidator) _then) =
      _$StacFormFieldValidatorCopyWithImpl;
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class _$StacFormFieldValidatorCopyWithImpl<$Res>
    implements $StacFormFieldValidatorCopyWith<$Res> {
  _$StacFormFieldValidatorCopyWithImpl(this._self, this._then);

  final StacFormFieldValidator _self;
  final $Res Function(StacFormFieldValidator) _then;

  /// Create a copy of StacFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_self.copyWith(
      rule: null == rule
          ? _self.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _StacFormFieldValidator implements StacFormFieldValidator {
  const _StacFormFieldValidator({required this.rule, this.message});
  factory _StacFormFieldValidator.fromJson(Map<String, dynamic> json) =>
      _$StacFormFieldValidatorFromJson(json);

  @override
  final String rule;
  @override
  final String? message;

  /// Create a copy of StacFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StacFormFieldValidatorCopyWith<_StacFormFieldValidator> get copyWith =>
      __$StacFormFieldValidatorCopyWithImpl<_StacFormFieldValidator>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StacFormFieldValidatorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StacFormFieldValidator &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rule, message);

  @override
  String toString() {
    return 'StacFormFieldValidator(rule: $rule, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$StacFormFieldValidatorCopyWith<$Res>
    implements $StacFormFieldValidatorCopyWith<$Res> {
  factory _$StacFormFieldValidatorCopyWith(_StacFormFieldValidator value,
          $Res Function(_StacFormFieldValidator) _then) =
      __$StacFormFieldValidatorCopyWithImpl;
  @override
  @useResult
  $Res call({String rule, String? message});
}

/// @nodoc
class __$StacFormFieldValidatorCopyWithImpl<$Res>
    implements _$StacFormFieldValidatorCopyWith<$Res> {
  __$StacFormFieldValidatorCopyWithImpl(this._self, this._then);

  final _StacFormFieldValidator _self;
  final $Res Function(_StacFormFieldValidator) _then;

  /// Create a copy of StacFormFieldValidator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rule = null,
    Object? message = freezed,
  }) {
    return _then(_StacFormFieldValidator(
      rule: null == rule
          ? _self.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
