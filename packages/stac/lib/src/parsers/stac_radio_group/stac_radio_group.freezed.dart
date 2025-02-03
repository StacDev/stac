// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_radio_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacRadioGroup _$StacRadioGroupFromJson(Map<String, dynamic> json) {
  return _StacRadioGroup.fromJson(json);
}

/// @nodoc
mixin _$StacRadioGroup {
  String? get id => throw _privateConstructorUsedError;
  dynamic get groupValue => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacRadioGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacRadioGroupCopyWith<StacRadioGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacRadioGroupCopyWith<$Res> {
  factory $StacRadioGroupCopyWith(
          StacRadioGroup value, $Res Function(StacRadioGroup) then) =
      _$StacRadioGroupCopyWithImpl<$Res, StacRadioGroup>;
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacRadioGroupCopyWithImpl<$Res, $Val extends StacRadioGroup>
    implements $StacRadioGroupCopyWith<$Res> {
  _$StacRadioGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacRadioGroup
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
abstract class _$$StacRadioGroupImplCopyWith<$Res>
    implements $StacRadioGroupCopyWith<$Res> {
  factory _$$StacRadioGroupImplCopyWith(_$StacRadioGroupImpl value,
          $Res Function(_$StacRadioGroupImpl) then) =
      __$$StacRadioGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, dynamic groupValue, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacRadioGroupImplCopyWithImpl<$Res>
    extends _$StacRadioGroupCopyWithImpl<$Res, _$StacRadioGroupImpl>
    implements _$$StacRadioGroupImplCopyWith<$Res> {
  __$$StacRadioGroupImplCopyWithImpl(
      _$StacRadioGroupImpl _value, $Res Function(_$StacRadioGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupValue = freezed,
    Object? child = freezed,
  }) {
    return _then(_$StacRadioGroupImpl(
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
class _$StacRadioGroupImpl implements _StacRadioGroup {
  const _$StacRadioGroupImpl(
      {this.id, this.groupValue, final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacRadioGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacRadioGroupImplFromJson(json);

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
    return 'StacRadioGroup(id: $id, groupValue: $groupValue, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacRadioGroupImpl &&
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

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacRadioGroupImplCopyWith<_$StacRadioGroupImpl> get copyWith =>
      __$$StacRadioGroupImplCopyWithImpl<_$StacRadioGroupImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacRadioGroupImplToJson(
      this,
    );
  }
}

abstract class _StacRadioGroup implements StacRadioGroup {
  const factory _StacRadioGroup(
      {final String? id,
      final dynamic groupValue,
      final Map<String, dynamic>? child}) = _$StacRadioGroupImpl;

  factory _StacRadioGroup.fromJson(Map<String, dynamic> json) =
      _$StacRadioGroupImpl.fromJson;

  @override
  String? get id;
  @override
  dynamic get groupValue;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacRadioGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacRadioGroupImplCopyWith<_$StacRadioGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
