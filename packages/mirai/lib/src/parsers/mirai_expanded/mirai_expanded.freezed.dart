// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_expanded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiExpanded _$MiraiExpandedFromJson(Map<String, dynamic> json) {
  return _MiraiExpanded.fromJson(json);
}

/// @nodoc
mixin _$MiraiExpanded {
  int get flex => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiExpanded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiExpandedCopyWith<MiraiExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiExpandedCopyWith<$Res> {
  factory $MiraiExpandedCopyWith(
          MiraiExpanded value, $Res Function(MiraiExpanded) then) =
      _$MiraiExpandedCopyWithImpl<$Res, MiraiExpanded>;
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class _$MiraiExpandedCopyWithImpl<$Res, $Val extends MiraiExpanded>
    implements $MiraiExpandedCopyWith<$Res> {
  _$MiraiExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_value.copyWith(
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiExpandedImplCopyWith<$Res>
    implements $MiraiExpandedCopyWith<$Res> {
  factory _$$MiraiExpandedImplCopyWith(
          _$MiraiExpandedImpl value, $Res Function(_$MiraiExpandedImpl) then) =
      __$$MiraiExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class __$$MiraiExpandedImplCopyWithImpl<$Res>
    extends _$MiraiExpandedCopyWithImpl<$Res, _$MiraiExpandedImpl>
    implements _$$MiraiExpandedImplCopyWith<$Res> {
  __$$MiraiExpandedImplCopyWithImpl(
      _$MiraiExpandedImpl _value, $Res Function(_$MiraiExpandedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_$MiraiExpandedImpl(
      flex: null == flex
          ? _value.flex
          : flex // ignore: cast_nullable_to_non_nullable
              as int,
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiExpandedImpl implements _MiraiExpanded {
  const _$MiraiExpandedImpl({this.flex = 1, final Map<String, dynamic>? child})
      : _child = child;

  factory _$MiraiExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiExpandedImplFromJson(json);

  @override
  @JsonKey()
  final int flex;
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
    return 'MiraiExpanded(flex: $flex, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiExpandedImpl &&
            (identical(other.flex, flex) || other.flex == flex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, flex, const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiExpandedImplCopyWith<_$MiraiExpandedImpl> get copyWith =>
      __$$MiraiExpandedImplCopyWithImpl<_$MiraiExpandedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiExpandedImplToJson(
      this,
    );
  }
}

abstract class _MiraiExpanded implements MiraiExpanded {
  const factory _MiraiExpanded(
      {final int flex,
      final Map<String, dynamic>? child}) = _$MiraiExpandedImpl;

  factory _MiraiExpanded.fromJson(Map<String, dynamic> json) =
      _$MiraiExpandedImpl.fromJson;

  @override
  int get flex;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of MiraiExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiExpandedImplCopyWith<_$MiraiExpandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
