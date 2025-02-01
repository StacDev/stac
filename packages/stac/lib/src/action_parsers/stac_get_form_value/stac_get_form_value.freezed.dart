// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_get_form_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacGetFormValue _$StacGetFormValueFromJson(Map<String, dynamic> json) {
  return _StacGetFormValue.fromJson(json);
}

/// @nodoc
mixin _$StacGetFormValue {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this StacGetFormValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacGetFormValueCopyWith<StacGetFormValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacGetFormValueCopyWith<$Res> {
  factory $StacGetFormValueCopyWith(
          StacGetFormValue value, $Res Function(StacGetFormValue) then) =
      _$StacGetFormValueCopyWithImpl<$Res, StacGetFormValue>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$StacGetFormValueCopyWithImpl<$Res, $Val extends StacGetFormValue>
    implements $StacGetFormValueCopyWith<$Res> {
  _$StacGetFormValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StacGetFormValueImplCopyWith<$Res>
    implements $StacGetFormValueCopyWith<$Res> {
  factory _$$StacGetFormValueImplCopyWith(_$StacGetFormValueImpl value,
          $Res Function(_$StacGetFormValueImpl) then) =
      __$$StacGetFormValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$StacGetFormValueImplCopyWithImpl<$Res>
    extends _$StacGetFormValueCopyWithImpl<$Res, _$StacGetFormValueImpl>
    implements _$$StacGetFormValueImplCopyWith<$Res> {
  __$$StacGetFormValueImplCopyWithImpl(_$StacGetFormValueImpl _value,
      $Res Function(_$StacGetFormValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StacGetFormValueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StacGetFormValueImpl implements _StacGetFormValue {
  const _$StacGetFormValueImpl({required this.id});

  factory _$StacGetFormValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacGetFormValueImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'StacGetFormValue(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacGetFormValueImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacGetFormValueImplCopyWith<_$StacGetFormValueImpl> get copyWith =>
      __$$StacGetFormValueImplCopyWithImpl<_$StacGetFormValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacGetFormValueImplToJson(
      this,
    );
  }
}

abstract class _StacGetFormValue implements StacGetFormValue {
  const factory _StacGetFormValue({required final String id}) =
      _$StacGetFormValueImpl;

  factory _StacGetFormValue.fromJson(Map<String, dynamic> json) =
      _$StacGetFormValueImpl.fromJson;

  @override
  String get id;

  /// Create a copy of StacGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacGetFormValueImplCopyWith<_$StacGetFormValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
