// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stac_expanded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StacExpanded _$StacExpandedFromJson(Map<String, dynamic> json) {
  return _StacExpanded.fromJson(json);
}

/// @nodoc
mixin _$StacExpanded {
  int get flex => throw _privateConstructorUsedError;
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;

  /// Serializes this StacExpanded to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StacExpandedCopyWith<StacExpanded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StacExpandedCopyWith<$Res> {
  factory $StacExpandedCopyWith(
          StacExpanded value, $Res Function(StacExpanded) then) =
      _$StacExpandedCopyWithImpl<$Res, StacExpanded>;
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class _$StacExpandedCopyWithImpl<$Res, $Val extends StacExpanded>
    implements $StacExpandedCopyWith<$Res> {
  _$StacExpandedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StacExpanded
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
abstract class _$$StacExpandedImplCopyWith<$Res>
    implements $StacExpandedCopyWith<$Res> {
  factory _$$StacExpandedImplCopyWith(
          _$StacExpandedImpl value, $Res Function(_$StacExpandedImpl) then) =
      __$$StacExpandedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int flex, Map<String, dynamic>? child});
}

/// @nodoc
class __$$StacExpandedImplCopyWithImpl<$Res>
    extends _$StacExpandedCopyWithImpl<$Res, _$StacExpandedImpl>
    implements _$$StacExpandedImplCopyWith<$Res> {
  __$$StacExpandedImplCopyWithImpl(
      _$StacExpandedImpl _value, $Res Function(_$StacExpandedImpl) _then)
      : super(_value, _then);

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flex = null,
    Object? child = freezed,
  }) {
    return _then(_$StacExpandedImpl(
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
class _$StacExpandedImpl implements _StacExpanded {
  const _$StacExpandedImpl({this.flex = 1, final Map<String, dynamic>? child})
      : _child = child;

  factory _$StacExpandedImpl.fromJson(Map<String, dynamic> json) =>
      _$$StacExpandedImplFromJson(json);

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
    return 'StacExpanded(flex: $flex, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StacExpandedImpl &&
            (identical(other.flex, flex) || other.flex == flex) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, flex, const DeepCollectionEquality().hash(_child));

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StacExpandedImplCopyWith<_$StacExpandedImpl> get copyWith =>
      __$$StacExpandedImplCopyWithImpl<_$StacExpandedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StacExpandedImplToJson(
      this,
    );
  }
}

abstract class _StacExpanded implements StacExpanded {
  const factory _StacExpanded(
      {final int flex, final Map<String, dynamic>? child}) = _$StacExpandedImpl;

  factory _StacExpanded.fromJson(Map<String, dynamic> json) =
      _$StacExpandedImpl.fromJson;

  @override
  int get flex;
  @override
  Map<String, dynamic>? get child;

  /// Create a copy of StacExpanded
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StacExpandedImplCopyWith<_$StacExpandedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
