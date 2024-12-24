// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_get_form_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiGetFormValue _$MiraiGetFormValueFromJson(Map<String, dynamic> json) {
  return _MiraiGetFormValue.fromJson(json);
}

/// @nodoc
mixin _$MiraiGetFormValue {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this MiraiGetFormValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiGetFormValueCopyWith<MiraiGetFormValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiGetFormValueCopyWith<$Res> {
  factory $MiraiGetFormValueCopyWith(
          MiraiGetFormValue value, $Res Function(MiraiGetFormValue) then) =
      _$MiraiGetFormValueCopyWithImpl<$Res, MiraiGetFormValue>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$MiraiGetFormValueCopyWithImpl<$Res, $Val extends MiraiGetFormValue>
    implements $MiraiGetFormValueCopyWith<$Res> {
  _$MiraiGetFormValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiGetFormValue
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
abstract class _$$MiraiGetFormValueImplCopyWith<$Res>
    implements $MiraiGetFormValueCopyWith<$Res> {
  factory _$$MiraiGetFormValueImplCopyWith(_$MiraiGetFormValueImpl value,
          $Res Function(_$MiraiGetFormValueImpl) then) =
      __$$MiraiGetFormValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$MiraiGetFormValueImplCopyWithImpl<$Res>
    extends _$MiraiGetFormValueCopyWithImpl<$Res, _$MiraiGetFormValueImpl>
    implements _$$MiraiGetFormValueImplCopyWith<$Res> {
  __$$MiraiGetFormValueImplCopyWithImpl(_$MiraiGetFormValueImpl _value,
      $Res Function(_$MiraiGetFormValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MiraiGetFormValueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiGetFormValueImpl implements _MiraiGetFormValue {
  const _$MiraiGetFormValueImpl({required this.id});

  factory _$MiraiGetFormValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiGetFormValueImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'MiraiGetFormValue(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiGetFormValueImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MiraiGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiGetFormValueImplCopyWith<_$MiraiGetFormValueImpl> get copyWith =>
      __$$MiraiGetFormValueImplCopyWithImpl<_$MiraiGetFormValueImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiGetFormValueImplToJson(
      this,
    );
  }
}

abstract class _MiraiGetFormValue implements MiraiGetFormValue {
  const factory _MiraiGetFormValue({required final String id}) =
      _$MiraiGetFormValueImpl;

  factory _MiraiGetFormValue.fromJson(Map<String, dynamic> json) =
      _$MiraiGetFormValueImpl.fromJson;

  @override
  String get id;

  /// Create a copy of MiraiGetFormValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiGetFormValueImplCopyWith<_$MiraiGetFormValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
