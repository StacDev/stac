// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_radio_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiRadioGroup _$MiraiRadioGroupFromJson(Map<String, dynamic> json) {
  return _MiraiRadioGroup.fromJson(json);
}

/// @nodoc
mixin _$MiraiRadioGroup {
  String? get id => throw _privateConstructorUsedError;
  dynamic get groupValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiRadioGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiRadioGroupCopyWith<MiraiRadioGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiRadioGroupCopyWith<$Res> {
  factory $MiraiRadioGroupCopyWith(
          MiraiRadioGroup value, $Res Function(MiraiRadioGroup) then) =
      _$MiraiRadioGroupCopyWithImpl<$Res, MiraiRadioGroup>;
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiRadioGroupCopyWithImpl<$Res, $Val extends MiraiRadioGroup>
    implements $MiraiRadioGroupCopyWith<$Res> {
  _$MiraiRadioGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupValue = freezed,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupValue: freezed == groupValue
          ? _value.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiRadioGroupImplCopyWith<$Res>
    implements $MiraiRadioGroupCopyWith<$Res> {
  factory _$$MiraiRadioGroupImplCopyWith(_$MiraiRadioGroupImpl value,
          $Res Function(_$MiraiRadioGroupImpl) then) =
      __$$MiraiRadioGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiRadioGroupImplCopyWithImpl<$Res>
    extends _$MiraiRadioGroupCopyWithImpl<$Res, _$MiraiRadioGroupImpl>
    implements _$$MiraiRadioGroupImplCopyWith<$Res> {
  __$$MiraiRadioGroupImplCopyWithImpl(
      _$MiraiRadioGroupImpl _value, $Res Function(_$MiraiRadioGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupValue = freezed,
    Object? child = freezed,
  }) {
    return _then(_$MiraiRadioGroupImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      groupValue: freezed == groupValue
          ? _value.groupValue
          : groupValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiRadioGroupImpl implements _MiraiRadioGroup {
  const _$MiraiRadioGroupImpl(
      {this.id, this.groupValue, final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiRadioGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiRadioGroupImplFromJson(json);

  @override
  final String? id;
  @override
  final dynamic groupValue;
  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MiraiRadioGroup(id: $id, groupValue: $groupValue, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiRadioGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.groupValue, groupValue) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(groupValue),
      const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiRadioGroupImplCopyWith<_$MiraiRadioGroupImpl> get copyWith =>
      __$$MiraiRadioGroupImplCopyWithImpl<_$MiraiRadioGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiRadioGroupImplToJson(
      this,
    );
  }
}

abstract class _MiraiRadioGroup implements MiraiRadioGroup {
  const factory _MiraiRadioGroup(
      {final String? id,
      final dynamic groupValue,
      final Map<String, dynamic>? child}) = _$MiraiRadioGroupImpl;

  factory _MiraiRadioGroup.fromJson(Map<String, dynamic> json) =
      _$MiraiRadioGroupImpl.fromJson;

  @override
  String? get id;
  @override
  dynamic get groupValue;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiRadioGroupImplCopyWith<_$MiraiRadioGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
