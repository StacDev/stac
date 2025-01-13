// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_opacity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MiraiOpacity _$MiraiOpacityFromJson(Map<String, dynamic> json) {
  return _MiraiOpacity.fromJson(json);
}

/// @nodoc
mixin _$MiraiOpacity {
  double get opacity => throw _privateConstructorUsedError;
  Map<String, dynamic> get child => throw _privateConstructorUsedError;

  /// Serializes this MiraiOpacity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MiraiOpacity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiraiOpacityCopyWith<MiraiOpacity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiOpacityCopyWith<$Res> {
  factory $MiraiOpacityCopyWith(
          MiraiOpacity value, $Res Function(MiraiOpacity) then) =
      _$MiraiOpacityCopyWithImpl<$Res, MiraiOpacity>;
  @useResult
  $Res call({double opacity, Map<String, dynamic> child});
}

/// @nodoc
class _$MiraiOpacityCopyWithImpl<$Res, $Val extends MiraiOpacity>
    implements $MiraiOpacityCopyWith<$Res> {
  _$MiraiOpacityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiraiOpacity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opacity = null,
    Object? child = null,
  }) {
    return _then(_value.copyWith(
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiraiOpacityImplCopyWith<$Res>
    implements $MiraiOpacityCopyWith<$Res> {
  factory _$$MiraiOpacityImplCopyWith(
          _$MiraiOpacityImpl value, $Res Function(_$MiraiOpacityImpl) then) =
      __$$MiraiOpacityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double opacity, Map<String, dynamic> child});
}

/// @nodoc
class __$$MiraiOpacityImplCopyWithImpl<$Res>
    extends _$MiraiOpacityCopyWithImpl<$Res, _$MiraiOpacityImpl>
    implements _$$MiraiOpacityImplCopyWith<$Res> {
  __$$MiraiOpacityImplCopyWithImpl(
      _$MiraiOpacityImpl _value, $Res Function(_$MiraiOpacityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiraiOpacity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opacity = null,
    Object? child = null,
  }) {
    return _then(_$MiraiOpacityImpl(
      opacity: null == opacity
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
      child: null == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MiraiOpacityImpl implements _MiraiOpacity {
  const _$MiraiOpacityImpl(
      {required this.opacity, required final Map<String, dynamic> child})
      : _child = child;

  factory _$MiraiOpacityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MiraiOpacityImplFromJson(json);

  @override
  final double opacity;
  final Map<String, dynamic> _child;
  @override
  Map<String, dynamic> get child {
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_child);
  }

  @override
  String toString() {
    return 'MiraiOpacity(opacity: $opacity, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiraiOpacityImpl &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            const DeepCollectionEquality().equals(other._child, _child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, opacity, const DeepCollectionEquality().hash(_child));

  /// Create a copy of MiraiOpacity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiraiOpacityImplCopyWith<_$MiraiOpacityImpl> get copyWith =>
      __$$MiraiOpacityImplCopyWithImpl<_$MiraiOpacityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MiraiOpacityImplToJson(
      this,
    );
  }
}

abstract class _MiraiOpacity implements MiraiOpacity {
  const factory _MiraiOpacity(
      {required final double opacity,
      required final Map<String, dynamic> child}) = _$MiraiOpacityImpl;

  factory _MiraiOpacity.fromJson(Map<String, dynamic> json) =
      _$MiraiOpacityImpl.fromJson;

  @override
  double get opacity;
  @override
  Map<String, dynamic> get child;

  /// Create a copy of MiraiOpacity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiraiOpacityImplCopyWith<_$MiraiOpacityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
